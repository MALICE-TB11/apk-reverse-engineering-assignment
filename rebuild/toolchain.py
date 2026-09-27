"""Pinned local APK build tools; downloads never execute the sample APK."""
import concurrent.futures
import hashlib
import json
import os
from pathlib import Path
import socket
import urllib.request
import zipfile

ROOT = Path(__file__).resolve().parents[1]
LOCK = json.loads((Path(__file__).parent / "tools.lock.json").read_text(encoding="utf-8"))
CHUNK = 256 * 1024
_GETADDRINFO = socket.getaddrinfo


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def _ipv4_first(host, port, family=0, type=0, proto=0, flags=0):
    return sorted(_GETADDRINFO(host, port, family, type, proto, flags),
                  key=lambda address: address[0] != socket.AF_INET)


def _download(item, offline):
    target = ROOT / item["cache"]
    if target.is_file() and sha256(target) == item["sha256"]:
        return target
    if offline:
        raise RuntimeError(f"Missing or invalid tool in offline mode: {target}")
    target.parent.mkdir(parents=True, exist_ok=True)
    parts = target.parent / (target.name + ".parts")
    parts.mkdir(exist_ok=True)
    total = item["size"]
    socket.getaddrinfo = _ipv4_first

    def fetch(start):
        end = min(total - 1, start + CHUNK - 1)
        part = parts / f"{start}-{end}"
        if part.is_file() and part.stat().st_size == end - start + 1:
            return part
        failure = None
        for _ in range(4):
            try:
                request = urllib.request.Request(item["url"], headers={"Range": f"bytes={start}-{end}"})
                with urllib.request.urlopen(request, timeout=20) as response:
                    if response.status != 206 or response.headers.get("Content-Range") != f"bytes {start}-{end}/{total}":
                        raise ValueError("Server did not return the requested byte range")
                    data = response.read(end - start + 2)
                if len(data) != end - start + 1:
                    raise ValueError("Truncated download")
                part.write_bytes(data)
                return part
            except (OSError, ValueError) as error:
                failure = error
        raise RuntimeError(f"Download failed: {item['url']} range {start}-{end}") from failure

    print(f"Downloading {target.name} ({total:,} bytes)", flush=True)
    pending = target.with_suffix(target.suffix + ".pending")
    try:
        with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
            with pending.open("wb") as stream:
                for part in pool.map(fetch, range(0, total, CHUNK)):
                    stream.write(part.read_bytes())
    finally:
        socket.getaddrinfo = _GETADDRINFO
    if sha256(pending) != item["sha256"]:
        raise RuntimeError(f"Tool checksum mismatch; inspect cached parts in {parts}")
    pending.replace(target)
    return target


def ensure_tools(offline=False, signing=True):
    apktool = _download(LOCK["apktool"], offline)
    paths = {"apktool": apktool}
    if not signing:
        return paths
    if os.name != "nt":
        raise RuntimeError("Pinned signing/alignment tools are for Windows; use --unsigned on other OSes")
    bundle = LOCK["android_build_tools"]
    directory = ROOT / "work/tools/signing"
    files = bundle["files"]
    missing = [name for name, spec in files.items()
               if not (directory / name).is_file() or sha256(directory / name) != spec["sha256"]]
    if missing:
        archive_path = _download(bundle, offline)
        directory.mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(archive_path) as archive:
            for name in missing:
                spec = files[name]
                data = archive.read(spec["member"])
                if hashlib.sha256(data).hexdigest() != spec["sha256"]:
                    raise RuntimeError(f"Extracted tool checksum mismatch: {name}")
                (directory / name).write_bytes(data)
    paths.update({"apksigner": directory / "apksigner.jar", "zipalign": directory / "zipalign.exe"})
    return paths
