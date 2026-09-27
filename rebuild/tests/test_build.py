"""Regressions for editable-source protection and pinned offline tooling.

All files live in isolated temporary directories. No APK, key, Java process,
or network connection is used by these tests.
"""

import contextlib
import copy
import hashlib
import io
import json
from pathlib import Path
import sys
import tempfile
from types import SimpleNamespace
import unittest
from unittest import mock
import zipfile


sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
try:
    import build
    import toolchain
finally:
    sys.path.pop(0)


def digest(data):
    return hashlib.sha256(data).hexdigest()


class SourceProtectionTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix="apk-rebuild-test-")
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.source = self.root / "source"
        self.project = self.root / "project"
        self.source.mkdir()
        self.project.mkdir()
        self.state_path = self.project / ".rebuild-state.json"
        globals_patch = mock.patch.multiple(
            build, ROOT=self.root, HERE=self.root, SOURCE=self.source,
            PROJECT=self.project, OUTPUT=self.root / "output",
            WORK=self.root / "work", STATE=self.state_path,
        )
        globals_patch.start()
        self.addCleanup(globals_patch.stop)
        quiet = contextlib.redirect_stdout(io.StringIO())
        quiet.__enter__()
        self.addCleanup(quiet.__exit__, None, None, None)

    def write(self, directory, name, contents):
        target = directory / name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(contents)
        return target

    def state(self, files):
        state = {
            "schema_version": 1,
            "sample_sha256": build.SAMPLE_SHA,
            "apktool_sha256": build.LOCK["apktool"]["sha256"],
            "applied_sources": {name: digest(data) for name, data in files.items()},
        }
        build.write_json(self.state_path, state)
        return state

    def read_state(self):
        return json.loads(self.state_path.read_text(encoding="utf-8"))

    def test_initial_sync_and_later_source_edit(self):
        self.write(self.source, "smali/App.smali", b"editable v1")
        self.write(self.project, "smali/App.smali", b"decoded original")
        untouched = self.write(self.project, "assets/image.bin", b"unchanged asset")
        state = self.state({})

        build.sync_sources(state)
        self.assertEqual((self.project / "smali/App.smali").read_bytes(), b"editable v1")
        self.assertEqual(self.read_state()["applied_sources"],
                         {"smali/App.smali": digest(b"editable v1")})

        self.write(self.source, "smali/App.smali", b"editable v2")
        build.sync_sources(state)
        self.assertEqual((self.project / "smali/App.smali").read_bytes(), b"editable v2")
        self.assertEqual(untouched.read_bytes(), b"unchanged asset")
        self.assertEqual(self.read_state(), state)

    def test_removed_overlay_fails_before_copy_or_state_change(self):
        self.write(self.source, "a.smali", b"new source")
        self.write(self.project, "a.smali", b"old source")
        removed = self.write(self.project, "removed.smali", b"previous overlay")
        state = self.state({"a.smali": b"old source", "removed.smali": b"previous overlay"})
        before = copy.deepcopy(state)
        saved = self.state_path.read_bytes()

        with self.assertRaisesRegex(RuntimeError, "Previously applied source files are missing"):
            build.sync_sources(state)

        self.assertEqual((self.project / "a.smali").read_bytes(), b"old source")
        self.assertEqual(removed.read_bytes(), b"previous overlay")
        self.assertEqual(state, before)
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_removing_last_overlay_also_preserves_project_and_state(self):
        target = self.write(self.project, "last.smali", b"last overlay")
        state = self.state({"last.smali": b"last overlay"})
        saved = self.state_path.read_bytes()
        with self.assertRaisesRegex(RuntimeError, "No editable sources found"):
            build.sync_sources(state)
        self.assertEqual(target.read_bytes(), b"last overlay")
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_project_edit_blocks_complete_sync_plan(self):
        for name in ("a.smali", "z.smali"):
            self.write(self.source, name, b"new source")
            self.write(self.project, name, b"old source")
        self.write(self.project, "z.smali", b"unsaved project edit")
        state = self.state({"a.smali": b"old source", "z.smali": b"old source"})
        saved = self.state_path.read_bytes()

        with self.assertRaisesRegex(RuntimeError, "Generated file was edited"):
            build.sync_sources(state)

        self.assertEqual((self.project / "a.smali").read_bytes(), b"old source")
        self.assertEqual((self.project / "z.smali").read_bytes(), b"unsaved project edit")
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_new_overlay_cannot_overwrite_existing_different_project_file(self):
        self.write(self.source, "a.smali", b"new existing source")
        self.write(self.project, "a.smali", b"old source")
        self.write(self.source, "z-new.smali", b"new overlay")
        self.write(self.project, "z-new.smali", b"unsaved project edit")
        state = self.state({"a.smali": b"old source"})
        saved = self.state_path.read_bytes()

        with self.assertRaisesRegex(RuntimeError, "New overlay conflicts"):
            build.sync_sources(state)

        self.assertEqual((self.project / "a.smali").read_bytes(), b"old source")
        self.assertEqual((self.project / "z-new.smali").read_bytes(), b"unsaved project edit")
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_new_overlay_matching_project_or_new_file_can_sync(self):
        self.write(self.source, "existing.smali", b"existing")
        self.write(self.project, "existing.smali", b"existing")
        self.write(self.source, "same.smali", b"reconciled")
        self.write(self.project, "same.smali", b"reconciled")
        self.write(self.source, "new.smali", b"new file")
        state = self.state({"existing.smali": b"existing"})

        build.sync_sources(state)

        self.assertEqual((self.project / "new.smali").read_bytes(), b"new file")
        self.assertEqual(set(self.read_state()["applied_sources"]),
                         {"existing.smali", "same.smali", "new.smali"})

    def test_capture_project_edit_and_new_file_then_sync(self):
        self.write(self.source, "existing.smali", b"old source")
        self.write(self.project, "existing.smali", b"project edit")
        self.write(self.project, "smali/new.smali", b"new project file")
        self.state({"existing.smali": b"old source"})

        build.capture(["existing.smali", "smali/new.smali"])

        self.assertEqual((self.source / "existing.smali").read_bytes(), b"project edit")
        self.assertEqual((self.source / "smali/new.smali").read_bytes(), b"new project file")
        state = self.read_state()
        self.assertEqual(state["applied_sources"], {
            "existing.smali": digest(b"project edit"),
            "smali/new.smali": digest(b"new project file"),
        })
        build.sync_sources(state)
        self.assertEqual(self.read_state(), state)

    def test_capture_rejects_independent_source_and_project_edits(self):
        source = self.write(self.source, "App.smali", b"independent source edit")
        project = self.write(self.project, "App.smali", b"independent project edit")
        self.state({"App.smali": b"common ancestor"})
        saved = self.state_path.read_bytes()

        with self.assertRaisesRegex(RuntimeError, "Editable source also changed"):
            build.capture(["App.smali"])

        self.assertEqual(source.read_bytes(), b"independent source edit")
        self.assertEqual(project.read_bytes(), b"independent project edit")
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_capture_already_reconciled_copies_is_allowed(self):
        self.write(self.source, "App.smali", b"matching edits")
        self.write(self.project, "App.smali", b"matching edits")
        self.state({"App.smali": b"common ancestor"})
        build.capture(["App.smali"])
        self.assertEqual(self.read_state()["applied_sources"]["App.smali"], digest(b"matching edits"))

    def test_capture_missing_later_path_does_not_write_earlier_file(self):
        source = self.write(self.source, "first.smali", b"old source")
        self.write(self.project, "first.smali", b"project edit")
        self.state({"first.smali": b"old source"})
        saved = self.state_path.read_bytes()

        with self.assertRaisesRegex(RuntimeError, "Capture expects a regular file"):
            build.capture(["first.smali", "missing.smali"])

        self.assertEqual(source.read_bytes(), b"old source")
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_capture_later_conflict_does_not_write_earlier_file(self):
        first = self.write(self.source, "first.smali", b"old source")
        self.write(self.project, "first.smali", b"project edit")
        second = self.write(self.source, "second.smali", b"independent source edit")
        self.write(self.project, "second.smali", b"independent project edit")
        self.state({"first.smali": b"old source", "second.smali": b"common ancestor"})
        saved = self.state_path.read_bytes()

        with self.assertRaisesRegex(RuntimeError, "Editable source also changed"):
            build.capture(["first.smali", "second.smali"])

        self.assertEqual(first.read_bytes(), b"old source")
        self.assertEqual(second.read_bytes(), b"independent source edit")
        self.assertEqual(self.state_path.read_bytes(), saved)

    def test_capture_rejects_escape_and_generated_output_paths(self):
        self.state({})
        for path in ("", ".", "../outside.smali", str(self.root / "absolute.smali"),
                     "build/classes.dex", "dist/output.apk", "original/AndroidManifest.xml",
                     ".rebuild-state.json"):
            with self.subTest(path=path), self.assertRaises(RuntimeError):
                build.capture([path])
        self.assertEqual(list(self.source.iterdir()), [])


class OfflineToolTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix="apk-toolchain-test-")
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        root_patch = mock.patch.object(toolchain, "ROOT", self.root)
        root_patch.start()
        self.addCleanup(root_patch.stop)
        network_patch = mock.patch.object(toolchain.urllib.request, "urlopen",
                                          side_effect=AssertionError("Tests must not access the network"))
        self.network = network_patch.start()
        self.addCleanup(network_patch.stop)

    def item(self, name, data):
        return {"cache": f"cache/{name}", "sha256": digest(data), "size": len(data),
                "url": f"https://example.invalid/{name}"}

    def cached(self, item, data):
        path = self.root / item["cache"]
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(data)
        return path

    def test_offline_cache_requires_matching_hash_even_when_size_matches(self):
        data = b"verified tool"
        item = self.item("tool.jar", data)
        path = self.cached(item, data)
        self.assertEqual(toolchain._download(item, offline=True), path)
        path.write_bytes(b"tampered tool")
        self.assertEqual(path.stat().st_size, item["size"])
        with self.assertRaisesRegex(RuntimeError, "Missing or invalid tool in offline mode"):
            toolchain._download(item, offline=True)
        self.assertEqual(path.read_bytes(), b"tampered tool")
        self.network.assert_not_called()

    def test_offline_missing_tool_does_not_download(self):
        with self.assertRaisesRegex(RuntimeError, "Missing or invalid tool in offline mode"):
            toolchain._download(self.item("missing.jar", b"required"), offline=True)
        self.network.assert_not_called()

    def signing_fixture(self, bad_member_hash=False):
        apktool = self.item("apktool.jar", b"apktool fixture")
        self.cached(apktool, b"apktool fixture")
        payloads = {"apksigner.jar": b"signer fixture", "zipalign.exe": b"aligner fixture",
                    "libwinpthread-1.dll": b"DLL fixture"}
        buffer = io.BytesIO()
        with zipfile.ZipFile(buffer, "w") as archive:
            for name, data in payloads.items():
                archive.writestr(f"sdk/{name}", data)
        bundle = self.item("build-tools.zip", buffer.getvalue())
        self.cached(bundle, buffer.getvalue())
        bundle["files"] = {name: {"member": f"sdk/{name}", "sha256": digest(data)}
                           for name, data in payloads.items()}
        if bad_member_hash:
            bundle["files"]["apksigner.jar"]["sha256"] = digest(b"different locked signer")
        return {"apktool": apktool, "android_build_tools": bundle}, payloads

    def test_offline_verified_archive_repairs_tampered_extracted_dependency(self):
        lock, payloads = self.signing_fixture()
        directory = self.root / "work/tools/signing"
        directory.mkdir(parents=True)
        for name, data in payloads.items():
            (directory / name).write_bytes(data)
        (directory / "libwinpthread-1.dll").write_bytes(b"tampered DLL")
        with mock.patch.object(toolchain, "LOCK", lock), \
                mock.patch.object(toolchain, "os", SimpleNamespace(name="nt")):
            paths = toolchain.ensure_tools(offline=True)
        for name, data in payloads.items():
            self.assertEqual((directory / name).read_bytes(), data)
        self.assertEqual(paths["apksigner"], directory / "apksigner.jar")
        self.assertEqual(paths["zipalign"], directory / "zipalign.exe")
        self.network.assert_not_called()

    def test_archive_hash_does_not_bypass_extracted_member_hash(self):
        lock, _ = self.signing_fixture(bad_member_hash=True)
        with mock.patch.object(toolchain, "LOCK", lock), \
                mock.patch.object(toolchain, "os", SimpleNamespace(name="nt")), \
                self.assertRaisesRegex(RuntimeError, "Extracted tool checksum mismatch: apksigner.jar"):
            toolchain.ensure_tools(offline=True)
        self.assertFalse((self.root / "work/tools/signing/apksigner.jar").exists())
        self.network.assert_not_called()


if __name__ == "__main__":
    unittest.main()
