#!/usr/bin/env python3
"""Verify a rebuilt APK against the original using Python's standard library.

This checks ZIP/DEX integrity, per-DEX defined classes, and native/asset bytes.
It does not install or execute the APK, check its signing certificate, or prove
runtime equivalence. Smali assembly may legitimately change DEX byte hashes.
"""

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import struct
import zipfile
import zlib


ROOT = Path(__file__).resolve().parent.parent
DEX_NAME = re.compile(r"classes(?:[0-9]+)?\.dex\Z")


def _sha256_file(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _zip_name_info(info):
    # zipfile decodes central-directory bytes with UTF-8 when bit 11 is set,
    # otherwise CP437. Both operations are reversible for accepted filenames.
    utf8_flag = bool(info.flag_bits & 0x800)
    raw = info.orig_filename.encode("utf-8" if utf8_flag else "cp437")
    try:
        utf8_candidate = raw.decode("utf-8")
    except UnicodeDecodeError:
        utf8_candidate = None
    return {"zip_decoded_name": info.orig_filename,
            "raw_zip_name_bytes_hex": raw.hex(),
            "raw_zip_name_utf8": utf8_candidate,
            "zip_utf8_flag": utf8_flag}


def _dex_info(data):
    """Read actual class_defs -> type_ids -> string_ids, not string matches."""
    result = {"size_bytes": len(data), "sha256": hashlib.sha256(data).hexdigest()}
    problems = []
    descriptors = set()
    try:
        if len(data) < 112:
            raise ValueError("DEX is shorter than its 112-byte header")
        if not re.fullmatch(rb"dex\n[0-9]{3}\x00", data[:8]):
            raise ValueError("Invalid standard DEX magic")
        result["version"] = data[4:7].decode("ascii")
        u32 = lambda offset: struct.unpack_from("<I", data, offset)[0]
        if u32(40) != 0x12345678:
            raise ValueError("Only standard little-endian DEX is supported")
        result["declared_size_bytes"] = u32(32)
        result["length_matches"] = u32(32) == len(data)
        result["header_size_bytes"] = u32(36)
        result["sha1_expected"] = data[12:32].hex()
        result["sha1_actual"] = hashlib.sha1(data[32:]).hexdigest()
        result["sha1_matches"] = result["sha1_expected"] == result["sha1_actual"]
        result["adler32_expected"] = f"{u32(8):08x}"
        result["adler32_actual"] = f"{zlib.adler32(data[12:]) & 0xFFFFFFFF:08x}"
        result["adler32_matches"] = result["adler32_expected"] == result["adler32_actual"]
        for field in ("length_matches", "sha1_matches", "adler32_matches"):
            if not result[field]:
                problems.append({"field": field, "message": "DEX integrity check failed"})
        if result["header_size_bytes"] != 112:
            raise ValueError("Unsupported DEX header size (expected 112 bytes)")

        def table(count_offset, width, name):
            count, offset = u32(count_offset), u32(count_offset + 4)
            if count and (offset < 112 or offset % 4 or offset + count * width > len(data)):
                raise ValueError(f"{name} table is out of bounds or misaligned")
            if not count and offset:
                raise ValueError(f"Empty {name} table has a nonzero offset")
            return count, offset

        string_count, string_offset = table(56, 4, "string_ids")
        type_count, type_offset = table(64, 4, "type_ids")
        class_count, class_offset = table(96, 32, "class_defs")
        result["class_defs_count"] = class_count
        string_cache = {}

        def string_value(index):
            if index >= string_count:
                raise ValueError("Class descriptor string index is out of bounds")
            if index in string_cache:
                return string_cache[index]
            offset = u32(string_offset + 4 * index)
            if offset < 112 or offset >= len(data):
                raise ValueError("Class descriptor string data is out of bounds")
            utf16_length = 0
            for shift in range(0, 35, 7):
                if offset >= len(data):
                    raise ValueError("Truncated string length ULEB128")
                byte = data[offset]
                offset += 1
                if shift == 28 and byte > 0x0F:
                    raise ValueError("Invalid string length ULEB128")
                utf16_length |= (byte & 0x7F) << shift
                if not byte & 0x80:
                    break
            else:
                raise ValueError("Unterminated string length ULEB128")
            end = data.find(b"\x00", offset)
            if end < 0:
                raise ValueError("Unterminated class descriptor string")
            # DEX uses modified UTF-8, including separately encoded surrogates.
            decoded = data[offset:end].replace(b"\xc0\x80", b"\x00").decode("utf-8", "surrogatepass")
            utf16 = decoded.encode("utf-16-le", "surrogatepass")
            if len(utf16) // 2 != utf16_length:
                raise ValueError("Class descriptor UTF-16 length does not match")
            value = utf16.decode("utf-16-le")
            string_cache[index] = value
            return value

        for index in range(class_count):
            type_index = u32(class_offset + 32 * index)
            if type_index >= type_count:
                raise ValueError("class_defs type index is out of bounds")
            descriptor = string_value(u32(type_offset + 4 * type_index))
            if (not descriptor.startswith("L") or not descriptor.endswith(";")
                    or len(descriptor) < 3 or any(c in descriptor for c in "\x00[.")):
                raise ValueError(f"Invalid defined class descriptor: {descriptor!r}")
            if descriptor in descriptors:
                raise ValueError(f"Duplicate class definition: {descriptor}")
            descriptors.add(descriptor)
        result["defined_class_count"] = len(descriptors)
        result["class_descriptors_sha256"] = hashlib.sha256(
            "\n".join(sorted(descriptors)).encode("utf-8")).hexdigest()
    except (ValueError, UnicodeError, struct.error) as error:
        problems.append({"field": "class_defs_structure", "message": str(error)})
    result["problems"] = problems
    result["passed"] = not problems
    return result, descriptors


def _inspect_apk(path):
    result = {"path": str(path.resolve()), "dex": {}, "native_libraries": {},
              "assets": {}, "problems": [], "zip_entries_checked": 0}
    classes = {}
    try:
        result["size_bytes"] = path.stat().st_size
        result["sha256"] = _sha256_file(path)
        with zipfile.ZipFile(path) as archive:
            entries = archive.infolist()
            result["zip_entry_count"] = len(entries)
            duplicates = sorted(name for name, count in Counter(
                info.filename for info in entries).items() if count > 1)
            if duplicates:
                result["problems"].append({"field": "zip.duplicate_names", "names": duplicates})
            utf8_names = Counter(_zip_name_info(info)["raw_zip_name_utf8"] for info in entries)
            ambiguous = sorted(name for name, count in utf8_names.items() if name is not None and count > 1)
            if ambiguous:
                result["problems"].append({"field": "zip.ambiguous_utf8_names", "names": ambiguous})
            for info in entries:
                digest = hashlib.sha256()
                dex_chunks = []
                is_dex = bool(DEX_NAME.fullmatch(info.filename))
                try:
                    with archive.open(info) as stream:
                        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
                            digest.update(chunk)
                            if is_dex:
                                dex_chunks.append(chunk)
                    result["zip_entries_checked"] += 1
                except (OSError, RuntimeError, ValueError, NotImplementedError,
                        zipfile.BadZipFile, zlib.error, EOFError) as error:
                    result["problems"].append({"field": "zip.entry_crc_or_read",
                                               "entry": info.filename, "message": str(error)})
                    continue
                if info.is_dir():
                    continue
                metadata = {"size_bytes": info.file_size, "sha256": digest.hexdigest(),
                            **_zip_name_info(info)}
                if is_dex:
                    dex_result, descriptors = _dex_info(b"".join(dex_chunks))
                    result["dex"][info.filename] = dex_result
                    classes[info.filename] = descriptors
                    for problem in dex_result["problems"]:
                        result["problems"].append({**problem, "field":
                            f"dex.{info.filename}.{problem['field']}"})
                elif info.filename.startswith("lib/") and info.filename.endswith(".so"):
                    result["native_libraries"][info.filename] = metadata
                elif info.filename.startswith("assets/"):
                    result["assets"][info.filename] = metadata
            if not result["dex"]:
                result["problems"].append({"field": "dex.names", "message": "No primary DEX entries found"})
    except (OSError, RuntimeError, ValueError, NotImplementedError,
            zipfile.BadZipFile, zipfile.LargeZipFile) as error:
        result["problems"].append({"field": "zip.open_or_read", "message": str(error)})
    result["all_zip_entries_read_and_crc_checked"] = (
        result.get("zip_entry_count", 0) > 0
        and result["zip_entries_checked"] == result.get("zip_entry_count"))
    result["counts"] = {"dex_files": len(result["dex"]),
                        "defined_classes": sum(len(v) for v in classes.values()),
                        "native_libraries": len(result["native_libraries"]),
                        "assets": len(result["assets"])}
    result["passed"] = not result["problems"]
    return result, classes


def verify_apk(apk_path, original_path=ROOT / "sample.apk", *, allow_code_changes=False):
    """Return JSON-ready findings; only defined-class changes can be allowed."""
    original, original_classes = _inspect_apk(Path(original_path))
    rebuilt, rebuilt_classes = _inspect_apk(Path(apk_path))
    differences = []
    encoding_changes = []

    def difference(field, expected, actual, *, required=True):
        differences.append({"field": field, "expected": expected, "actual": actual,
                            "required": required, "severity": "error" if required else "info"})

    for label, inspection in (("original", original), ("rebuilt", rebuilt)):
        for problem in inspection["problems"]:
            difference(f"{label}.{problem['field']}", "valid", problem)

    def compare_names(field, expected, actual):
        missing, added = sorted(set(expected) - set(actual)), sorted(set(actual) - set(expected))
        if missing or added:
            difference(field, {"missing_from_rebuilt": missing}, {"added_in_rebuilt": added})
        return not missing and not added

    dex_names_match = compare_names("dex.names", original["dex"], rebuilt["dex"])
    class_sets_match = dex_names_match
    for name in sorted(set(original_classes) & set(rebuilt_classes)):
        removed = sorted(original_classes[name] - rebuilt_classes[name])
        added = sorted(rebuilt_classes[name] - original_classes[name])
        if removed or added:
            class_sets_match = False
            difference(f"dex.{name}.class_descriptors", {"removed": removed}, {"added": added},
                       required=not allow_code_changes)

    binary_matches = {}
    for category in ("native_libraries", "assets"):
        expected, actual = original[category], rebuilt[category]
        pairs = {name: name for name in set(expected) & set(actual)}
        unmatched_expected = set(expected) - set(pairs)
        unmatched_actual = set(actual) - set(pairs.values())
        expected_utf8 = Counter(item["raw_zip_name_utf8"] for item in expected.values())
        actual_utf8 = Counter(item["raw_zip_name_utf8"] for item in actual.values())
        actual_by_raw = {actual[name]["raw_zip_name_bytes_hex"]: name for name in unmatched_actual}
        for name in sorted(unmatched_expected):
            before = expected[name]
            candidate = before["raw_zip_name_utf8"]
            other = actual_by_raw.get(before["raw_zip_name_bytes_hex"])
            if (candidate is None or other is None
                    or expected_utf8[candidate] != 1 or actual_utf8[candidate] != 1):
                continue
            after = actual[other]
            same_bytes = all(before[key] == after[key] for key in ("size_bytes", "sha256"))
            if not same_bytes:
                continue
            pairs[name] = other
            encoding_changes.append({
                "field": f"{category}.zip_name_encoding",
                "original_decoded_name": name,
                "rebuilt_decoded_name": other,
                "utf8_name": candidate,
                "original_utf8_flag": before["zip_utf8_flag"],
                "rebuilt_utf8_flag": after["zip_utf8_flag"],
                "raw_zip_name_bytes_hex": before["raw_zip_name_bytes_hex"],
                "raw_name_bytes_identical": True,
                "unique_utf8_name_in_both_archives": True,
                "content_sha256_identical": True,
                "content_sha256": before["sha256"],
                "accepted": True,
            })
        missing = sorted(set(expected) - set(pairs))
        added = sorted(set(actual) - set(pairs.values()))
        matches = not missing and not added
        if not matches:
            difference(f"{category}.names", {"missing_from_rebuilt": missing}, {"added_in_rebuilt": added})
        for name, other in sorted(pairs.items()):
            before = {key: expected[name][key] for key in ("size_bytes", "sha256")}
            after = {key: actual[other][key] for key in ("size_bytes", "sha256")}
            if before != after:
                matches = False
                difference(f"{category}.{name}.bytes", before, after)
        binary_matches[category] = matches

    return {
        "schema_version": 1,
        "passed": not any(item["required"] for item in differences),
        "allow_code_changes": bool(allow_code_changes),
        "checks": {
            "original_integrity": original["passed"],
            "rebuilt_integrity": rebuilt["passed"],
            "dex_names_match": dex_names_match,
            "per_dex_class_descriptors_match": class_sets_match,
            "native_library_names_and_bytes_match": binary_matches["native_libraries"],
            "asset_names_and_bytes_match": binary_matches["assets"],
        },
        "original": original,
        "rebuilt": rebuilt,
        "differences": differences,
        "zip_name_encoding_changes": encoding_changes,
        "limitations": [
            "No APK installation, execution, network action or device testing is performed.",
            "APK cryptographic signatures, manifest/resource semantics and runtime behavior are not verified.",
            "Class inventories and DEX checksums do not prove method-body equivalence.",
            "Filename decoding changes are accepted only for unique UTF-8 names with identical raw ZIP name bytes and content hashes; their evidence is reported separately.",
            "--allow-code-changes only permits changed class sets within the original DEX names; native/assets changes still fail.",
        ],
    }


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("apk", type=Path, help="Rebuilt APK to compare against repository sample.apk")
    parser.add_argument("--output", type=Path, help="Also write the JSON report to this path")
    parser.add_argument("--allow-code-changes", action="store_true",
                        help="Report per-DEX class changes without failing; integrity and binary checks remain required")
    args = parser.parse_args()
    report = verify_apk(args.apk, allow_code_changes=args.allow_code_changes)
    # ASCII JSON also works on Windows consoles using a legacy code page.
    rendered = json.dumps(report, ensure_ascii=True, indent=2) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        with args.output.open("w", encoding="utf-8", newline="\n") as stream:
            stream.write(rendered)
    print(rendered, end="")
    return 0 if report["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
