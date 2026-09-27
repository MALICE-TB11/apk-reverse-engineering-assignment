"""Prepare, compile, align and locally debug-sign the complete APK project."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import tempfile
import time

from toolchain import ROOT, LOCK, ensure_tools, sha256
from verify import verify_apk

HERE = Path(__file__).resolve().parent
SOURCE = HERE / "source"
PROJECT = HERE / "project"
OUTPUT = HERE / "output"
WORK = ROOT / "work/rebuild"
STATE = PROJECT / ".rebuild-state.json"
SAMPLE_SHA = "49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0"


def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")


def within(path, directory):
    path.resolve().relative_to(directory.resolve())
    return path


def check_sample():
    if sha256(ROOT / "sample.apk") != SAMPLE_SHA:
        raise RuntimeError("sample.apk differs from the pinned reconstruction input")


def run(label, command):
    WORK.mkdir(parents=True, exist_ok=True)
    log = WORK / (label + ".log")
    started = time.monotonic()
    print(f"Running {label}; log: {log.relative_to(ROOT)}", flush=True)
    with log.open("w", encoding="utf-8", newline="\n") as stream:
        result = subprocess.run([str(part) for part in command], cwd=ROOT,
                                stdout=stream, stderr=subprocess.STDOUT)
    if result.returncode:
        tail = log.read_text(encoding="utf-8", errors="replace")[-5000:]
        raise RuntimeError(f"{label} exited {result.returncode}\n{tail}")
    print(f"Completed {label} in {time.monotonic() - started:.1f}s", flush=True)
    return log


def apktool_command(tools):
    tmp = WORK / "tmp"
    tmp.mkdir(parents=True, exist_ok=True)
    return ["java", "-Xmx4g", f"-Djava.io.tmpdir={tmp}", "-jar", tools["apktool"]]


def prepare(tools):
    check_sample()
    if STATE.exists():
        state = json.loads(STATE.read_text(encoding="utf-8"))
        if state.get("sample_sha256") != SAMPLE_SHA or state.get("apktool_sha256") != LOCK["apktool"]["sha256"]:
            raise RuntimeError("Generated project belongs to a different input/tool; preserve it and use a fresh checkout")
        return state
    if PROJECT.exists():
        raise RuntimeError("rebuild/project exists without build metadata; preserve/rename it before preparing")
    if not (SOURCE / "AndroidManifest.xml").is_file() or not (SOURCE / "apktool.yml").is_file():
        raise RuntimeError("Version-controlled reconstruction sources are missing")
    WORK.mkdir(parents=True, exist_ok=True)
    staging = Path(tempfile.mkdtemp(prefix="decode-", dir=WORK)) / "project"
    run("decode", apktool_command(tools) + ["d", ROOT / "sample.apk", "-o", staging,
                                           "-p", WORK / "framework", "-j", "4"])
    if list(staging.glob("classes*.dex")):
        raise RuntimeError("Decode retained raw root DEX; full Smali rebuild is required")
    # Resolve both paths before moving the directory; never move outside this workspace.
    within(staging, ROOT)
    within(PROJECT, ROOT)
    staging.replace(PROJECT)
    state = {"schema_version": 1, "sample_sha256": SAMPLE_SHA,
             "apktool_sha256": LOCK["apktool"]["sha256"], "applied_sources": {}}
    write_json(STATE, state)
    return state


def sync_sources(state):
    changes = []
    source_files = sorted(p for p in SOURCE.rglob("*") if p.is_file())
    if not source_files:
        raise RuntimeError("No editable sources found")
    source_names = {p.relative_to(SOURCE).as_posix() for p in source_files}
    removed = sorted(set(state["applied_sources"]) - source_names)
    if removed:
        raise RuntimeError(f"Previously applied source files are missing: {removed}. Restore them before building; removing an overlay is not a file deletion instruction")
    for source in source_files:
        if source.is_symlink():
            raise RuntimeError(f"Source symlinks are not supported: {source}")
        relative = source.relative_to(SOURCE).as_posix()
        destination = within(PROJECT / relative, PROJECT)
        wanted = sha256(source)
        previous = state["applied_sources"].get(relative)
        current = sha256(destination) if destination.is_file() else None
        if previous is not None and current not in (previous, wanted):
            raise RuntimeError(f"Generated file was edited: {relative}. Use capture to preserve it in rebuild/source first")
        if previous is None and state["applied_sources"] and current is not None and current != wanted:
            raise RuntimeError(f"New overlay conflicts with an existing project file: {relative}. Reconcile both copies and use capture first")
        if current != wanted:
            changes.append((source, destination))
    # Validate the complete copy plan before writing any source file.
    for source, destination in changes:
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)
    state["applied_sources"] = {p.relative_to(SOURCE).as_posix(): sha256(p) for p in source_files}
    write_json(STATE, state)
    print(f"Editable sources: {len(source_files)}; synchronized: {len(changes)}", flush=True)


def capture(paths):
    if not STATE.exists() or not paths:
        raise RuntimeError("Capture requires a prepared project and one or more project-relative file paths")
    state = json.loads(STATE.read_text(encoding="utf-8"))
    changes = []
    for name in paths:
        relative = Path(name)
        if not relative.parts or relative.is_absolute() or ".." in relative.parts:
            raise RuntimeError("Capture paths must be relative and cannot contain '..'")
        if relative.parts[0] in {"build", "dist", "original"} or relative.name == STATE.name:
            raise RuntimeError("Generated build outputs and metadata cannot be captured as sources")
        source = within(PROJECT / relative, PROJECT)
        if not source.is_file() or source.is_symlink():
            raise RuntimeError(f"Capture expects a regular file: {relative}")
        destination = within(SOURCE / relative, SOURCE)
        previous = state["applied_sources"].get(relative.as_posix())
        current = sha256(source)
        editable = sha256(destination) if destination.is_file() else None
        if editable is not None and editable not in (previous, current):
            raise RuntimeError(f"Editable source also changed: {relative}. Reconcile both copies before capture")
        changes.append((relative, source, destination, current))
    # Reject a bad later path or conflict before copying any earlier file.
    for relative, source, destination, current in changes:
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)
        state["applied_sources"][relative.as_posix()] = current
    write_json(STATE, state)
    print(f"Captured {len(paths)} file(s) into rebuild/source")


def validate(apk, allow_code_changes=False):
    report = verify_apk(apk, ROOT / "sample.apk", allow_code_changes=allow_code_changes)
    write_json(OUTPUT / "verification.json", report)
    if not report["passed"]:
        raise RuntimeError("APK baseline comparison failed; inspect rebuild/output/verification.json")
    return report


def sign(unsigned, tools, allow_code_changes=False):
    key = WORK / "debug.p12"
    if not key.exists():
        run("create-debug-key", ["keytool", "-genkeypair", "-keystore", key,
                                 "-storetype", "PKCS12", "-storepass", "android",
                                 "-keypass", "android", "-alias", "rebuild-debug",
                                 "-keyalg", "RSA", "-keysize", "2048", "-validity", "10000",
                                 "-dname", "CN=APK Reconstruction Debug,O=Local Analysis,C=CN"])
    aligned = OUTPUT / "wifi-cam-aligned.apk"
    signed = OUTPUT / "wifi-cam-rebuilt-debug.apk"
    pending = OUTPUT / "wifi-cam-signing.pending.apk"
    run("zipalign", [tools["zipalign"], "-f", "-P", "16", "4", unsigned, aligned])
    run("sign", ["java", "-jar", tools["apksigner"], "sign", "--ks", key,
                 "--ks-key-alias", "rebuild-debug", "--ks-pass", "pass:android",
                 "--key-pass", "pass:android", "--v1-signing-enabled", "true",
                 "--v2-signing-enabled", "true", "--v3-signing-enabled", "true",
                 "--v4-signing-enabled", "false", "--out", pending, aligned])
    run("verify-signature", ["java", "-jar", tools["apksigner"], "verify", "--verbose", "--print-certs", pending])
    run("verify-alignment", [tools["zipalign"], "-c", "-P", "16", "4", pending])
    validate(pending, allow_code_changes)
    pending.replace(signed)
    return signed


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("command", choices=["prepare", "build", "verify", "capture"], nargs="?", default="build")
    parser.add_argument("paths", nargs="*", help="Project-relative file paths for capture")
    parser.add_argument("--offline", action="store_true", help="Use only previously verified cached tools")
    parser.add_argument("--unsigned", action="store_true", help="Skip Windows zipalign and debug signing")
    parser.add_argument("--apk", type=Path, help="Read-only APK input for verify")
    parser.add_argument("--allow-code-changes", action="store_true",
                        help="Allow changed class inventories; native/assets integrity remains required")
    args = parser.parse_args()
    check_sample()
    if args.command == "capture":
        capture(args.paths)
        return
    if args.paths:
        parser.error("File paths are accepted only with capture")
    if args.command == "verify":
        path = args.apk or OUTPUT / ("wifi-cam-rebuilt-unsigned.apk" if args.unsigned else "wifi-cam-rebuilt-debug.apk")
        validate(path, args.allow_code_changes)
        print("APK baseline comparison passed")
        return
    tools = ensure_tools(args.offline, signing=args.command == "build" and not args.unsigned)
    state = prepare(tools)
    sync_sources(state)
    if args.command == "prepare":
        print(f"Complete editable project: {PROJECT}")
        return
    OUTPUT.mkdir(parents=True, exist_ok=True)
    pending = OUTPUT / "wifi-cam-building.pending.apk"
    run("compile", apktool_command(tools) + ["b", PROJECT, "-f", "-j", "4",
                                             "-p", WORK / "framework", "-o", pending])
    validate(pending, args.allow_code_changes)
    unsigned = OUTPUT / "wifi-cam-rebuilt-unsigned.apk"
    pending.replace(unsigned)
    artifact = unsigned if args.unsigned else sign(unsigned, tools, args.allow_code_changes)
    report = validate(artifact, args.allow_code_changes)
    write_json(OUTPUT / "build-result.json", {
        "sample_sha256": SAMPLE_SHA, "apktool_version": LOCK["apktool"]["version"],
        "artifact": artifact.relative_to(ROOT).as_posix(), "artifact_sha256": sha256(artifact),
        "debug_signed": not args.unsigned, "signature_and_alignment_verified": not args.unsigned,
        "baseline_checks_passed": report["passed"], "runtime_tested": False,
        "allow_code_changes": args.allow_code_changes,
        "editable_source_files": len(state["applied_sources"]),
    })
    print(f"Build verified: {artifact}", flush=True)


if __name__ == "__main__":
    try:
        main()
    except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
        raise SystemExit(str(error))
