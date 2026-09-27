"""Portable standard-library tests for rebuild/verify.py.

Run from the repository root:
    python -m unittest discover -s rebuild/tests -p test_verify.py -v

Synthetic ZIP/DEX fixtures only exercise the verifier; they are not executable
Android applications. Fixtures use automatically cleaned temporary directories.
One test compares the real sample.apk with itself; the sample is never modified.
"""

import hashlib
import importlib.util
import tempfile
from pathlib import Path
import struct
import unittest
import warnings
import zipfile
import zlib

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("apk_verifier", ROOT / "rebuild/verify.py")
verify = importlib.util.module_from_spec(spec)
spec.loader.exec_module(verify)


def checksums(data):
    data[12:32] = hashlib.sha1(data[32:]).digest()
    struct.pack_into("<I", data, 8, zlib.adler32(data[12:]) & 0xFFFFFFFF)
    return bytes(data)


def dex(class_descriptor="Lexample/A;", unused_descriptor="Lunused/Decoy;"):
    # A minimal fixture for the verifier's class_defs parser; not an executable DEX.
    strings = [class_descriptor, unused_descriptor]
    data = bytearray(156)
    data[:8] = b"dex\n035\x00"
    struct.pack_into("<II", data, 36, 112, 0x12345678)
    struct.pack_into("<II", data, 56, 2, 112)
    struct.pack_into("<II", data, 64, 1, 120)
    struct.pack_into("<II", data, 96, 1, 124)
    for index, value in enumerate(strings):
        struct.pack_into("<I", data, 112 + 4 * index, len(data))
        data.extend(bytes([len(value)]) + value.encode() + b"\x00")
    struct.pack_into("<I", data, 32, len(data))
    return checksums(data)


def apk(directory, name, dex_bytes=None, asset=b"asset payload", native=b"native payload",
        duplicate=False, dex_name="classes.dex"):
    path = directory / name
    with zipfile.ZipFile(path, "w", compression=zipfile.ZIP_STORED) as archive:
        archive.writestr(dex_name, dex_bytes if dex_bytes is not None else dex())
        if asset is not None:
            archive.writestr("assets/model.bin", asset)
        if native is not None:
            archive.writestr("lib/arm64-v8a/libfixture.so", native)
        if duplicate:
            with warnings.catch_warnings():
                warnings.simplefilter("ignore")
                archive.writestr("assets/model.bin", asset)
    return path


def unicode_apk(directory, name, *, clear_first_flag=False, asset=b"music", ambiguous=False):
    path = directory / name
    with zipfile.ZipFile(path, "w") as archive:
        archive.writestr("classes.dex", dex())
        archive.writestr("assets/\u97f3\u4e50.mp3", asset)
        if ambiguous:
            with warnings.catch_warnings():
                warnings.simplefilter("ignore")
                archive.writestr("assets/\u97f3\u4e50.mp3", asset)
    if clear_first_flag:
        with zipfile.ZipFile(path) as archive:
            local = archive.infolist()[1].header_offset
            central = archive.start_dir
        payload = bytearray(path.read_bytes())
        struct.pack_into("<H", payload, local + 6, 0)
        first_name, first_extra, first_comment = struct.unpack_from("<HHH", payload, central + 28)
        central += 46 + first_name + first_extra + first_comment
        struct.pack_into("<H", payload, central + 8, 0)
        path.write_bytes(payload)
    return path


class VerifyTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory(prefix="apk-rebuild-verifier-")
        self.addCleanup(temporary.cleanup)
        self.directory = Path(temporary.name)
        self.original = apk(self.directory, "original.apk")

    def report(self, path, **kwargs):
        return verify.verify_apk(path, self.original, **kwargs)

    def test_sample_self(self):
        report = verify.verify_apk(ROOT / "sample.apk")
        self.assertTrue(report["passed"])
        self.assertEqual(report["original"]["counts"], {
            "dex_files": 7, "defined_classes": 47156, "native_libraries": 43, "assets": 188})

    def test_class_defs_not_descriptor_strings(self):
        report = self.report(apk(self.directory, "unused-string-change.apk", dex(unused_descriptor="Lunused/Different;")))
        self.assertTrue(report["passed"])
        self.assertEqual(report["rebuilt"]["dex"]["classes.dex"]["defined_class_count"], 1)

    def test_changed_defined_class_fails(self):
        report = self.report(apk(self.directory, "changed-class.apk", dex("Lexample/B;")))
        self.assertFalse(report["passed"])
        difference = next(x for x in report["differences"] if x["field"] == "dex.classes.dex.class_descriptors")
        self.assertEqual(difference["expected"]["removed"], ["Lexample/A;"])
        self.assertEqual(difference["actual"]["added"], ["Lexample/B;"])

    def test_allow_class_change(self):
        report = self.report(apk(self.directory, "allowed-class-change.apk", dex("Lexample/B;")), allow_code_changes=True)
        self.assertTrue(report["passed"])
        self.assertFalse(report["checks"]["per_dex_class_descriptors_match"])
        self.assertFalse(report["differences"][0]["required"])

    def test_allow_does_not_allow_asset_change(self):
        report = self.report(apk(self.directory, "changed-asset.apk", asset=b"new asset"), allow_code_changes=True)
        self.assertFalse(report["passed"])
        self.assertTrue(any(x["field"] == "assets.assets/model.bin.bytes" for x in report["differences"]))

    def test_allow_does_not_allow_native_change(self):
        report = self.report(apk(self.directory, "changed-native.apk", native=b"new native"), allow_code_changes=True)
        self.assertFalse(report["passed"])
        self.assertTrue(any(x["field"] == "native_libraries.lib/arm64-v8a/libfixture.so.bytes" for x in report["differences"]))

    def test_missing_binary_names_fail(self):
        report = self.report(apk(self.directory, "missing-binaries.apk", native=None, asset=None))
        self.assertFalse(report["passed"])
        self.assertEqual({x["field"] for x in report["differences"]}, {"assets.names", "native_libraries.names"})

    def test_changed_dex_name_fails_even_when_code_changes_allowed(self):
        rebuilt = apk(self.directory, "different-dex-name.apk", dex_name="classes2.dex")
        report = self.report(rebuilt, allow_code_changes=True)
        self.assertFalse(report["passed"])
        self.assertFalse(report["checks"]["dex_names_match"])
        difference = next(item for item in report["differences"] if item["field"] == "dex.names")
        self.assertEqual(difference["expected"]["missing_from_rebuilt"], ["classes.dex"])
        self.assertEqual(difference["actual"]["added_in_rebuilt"], ["classes2.dex"])

    def test_dex_checksum_corruption(self):
        broken = bytearray(dex())
        broken[-2] ^= 1
        report = self.report(apk(self.directory, "bad-checksum.apk", bytes(broken)))
        self.assertFalse(report["passed"])
        fields = {x["field"] for x in report["differences"]}
        self.assertIn("rebuilt.dex.classes.dex.sha1_matches", fields)
        self.assertIn("rebuilt.dex.classes.dex.adler32_matches", fields)

    def test_dex_length_corruption(self):
        broken = bytearray(dex())
        struct.pack_into("<I", broken, 32, len(broken) + 1)
        report = self.report(apk(self.directory, "bad-length.apk", checksums(broken)))
        self.assertFalse(report["passed"])
        self.assertIn("rebuilt.dex.classes.dex.length_matches", {x["field"] for x in report["differences"]})

    def test_class_def_out_of_bounds(self):
        broken = bytearray(dex())
        struct.pack_into("<I", broken, 124, 100)
        report = self.report(apk(self.directory, "bad-class-index.apk", checksums(broken)), allow_code_changes=True)
        self.assertFalse(report["passed"])
        self.assertIn("rebuilt.dex.classes.dex.class_defs_structure", {x["field"] for x in report["differences"]})

    def test_zip_crc_corruption(self):
        path = apk(self.directory, "bad-zip-crc.apk")
        payload = bytearray(path.read_bytes())
        offset = payload.index(b"native payload")
        payload[offset] ^= 1
        path.write_bytes(payload)
        report = self.report(path)
        self.assertFalse(report["passed"])
        self.assertFalse(report["rebuilt"]["all_zip_entries_read_and_crc_checked"])
        self.assertIn("rebuilt.zip.entry_crc_or_read", {x["field"] for x in report["differences"]})

    def test_nonzip_fails(self):
        path = self.directory / "not-a-zip.apk"
        path.write_bytes(b"not an apk")
        report = self.report(path)
        self.assertFalse(report["passed"])
        self.assertIn("rebuilt.zip.open_or_read", {x["field"] for x in report["differences"]})

    def test_duplicate_zip_name_fails(self):
        report = self.report(apk(self.directory, "duplicate.apk", duplicate=True))
        self.assertFalse(report["passed"])
        self.assertIn("rebuilt.zip.duplicate_names", {x["field"] for x in report["differences"]})

    def test_utf8_flag_fix_is_explicitly_accepted(self):
        before = unicode_apk(self.directory, "unicode-unflagged.apk", clear_first_flag=True)
        after = unicode_apk(self.directory, "unicode-flagged.apk")
        report = verify.verify_apk(after, before)
        self.assertTrue(report["passed"])
        self.assertEqual(len(report["zip_name_encoding_changes"]), 1)
        change = report["zip_name_encoding_changes"][0]
        self.assertTrue(change["accepted"])
        self.assertTrue(change["raw_name_bytes_identical"])
        self.assertTrue(change["content_sha256_identical"])
        self.assertTrue(change["unique_utf8_name_in_both_archives"])
        self.assertEqual(change["utf8_name"], "assets/\u97f3\u4e50.mp3")

    def test_utf8_flag_fix_does_not_hide_byte_change(self):
        before = unicode_apk(self.directory, "unicode-unflagged-for-change.apk", clear_first_flag=True)
        after = unicode_apk(self.directory, "unicode-changed-content.apk", asset=b"different music")
        report = verify.verify_apk(after, before, allow_code_changes=True)
        self.assertFalse(report["passed"])
        self.assertFalse(report["checks"]["asset_names_and_bytes_match"])
        self.assertEqual(report["zip_name_encoding_changes"], [])

    def test_utf8_ambiguity_is_rejected(self):
        before = unicode_apk(self.directory, "unicode-single.apk")
        after = unicode_apk(self.directory, "unicode-ambiguous.apk", clear_first_flag=True, ambiguous=True)
        report = verify.verify_apk(after, before)
        self.assertFalse(report["passed"])
        self.assertIn("rebuilt.zip.ambiguous_utf8_names", {x["field"] for x in report["differences"]})


if __name__ == "__main__":
    unittest.main(verbosity=2)
