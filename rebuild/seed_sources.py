"""Export editable baseline sources once from the pinned, fully decoded APK."""
import argparse
import json
from pathlib import Path

from toolchain import ROOT, LOCK, sha256

SAMPLE_SHA = "49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("decoded_project", type=Path)
    args = parser.parse_args()
    decoded = args.decoded_project.resolve()
    target = Path(__file__).resolve().parent / "source"
    if target.exists():
        raise SystemExit("rebuild/source already exists; refusing to overwrite editable sources")
    if sha256(ROOT / "sample.apk") != SAMPLE_SHA:
        raise SystemExit("sample.apk does not match the pinned baseline")
    selected = [decoded / "AndroidManifest.xml", decoded / "apktool.yml"]
    selected += list(decoded.glob("res/**/*.xml"))
    for namespace in ("tzh", "hmx", "yuan"):
        selected += list(decoded.glob(f"smali*/com/{namespace}/**/*.smali"))
    selected = sorted(set(selected))
    if any(not path.is_file() or path.is_symlink() for path in selected):
        raise SystemExit("Decoded manifest/configuration or regular source files missing")
    if len(selected) != 2478:
        raise SystemExit(f"Unexpected baseline source count: {len(selected)} (expected 2478)")
    entries = []
    for source in selected:
        relative = source.relative_to(decoded)
        destination = target / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        # Git checks out these text extensions with LF on every platform.
        # Preserve all other content, including resource string whitespace.
        destination.write_bytes(source.read_bytes().replace(b"\r\n", b"\n"))
        entries.append({"path": relative.as_posix(), "sha256": sha256(destination),
                        "decoded_sha256": sha256(source),
                        "size_bytes": destination.stat().st_size})
    manifest = {"schema_version": 1, "sample_sha256": SAMPLE_SHA,
                "apktool_version": LOCK["apktool"]["version"],
                "line_endings": "LF",
                "description": "Initial decoded baseline normalized to LF; not a constraint on later source edits.",
                "file_count": len(entries), "files": entries}
    (target.parent / "source-manifest.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(f"Exported {len(entries)} editable files into {target}")


if __name__ == "__main__":
    main()
