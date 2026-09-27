#!/usr/bin/env python3
"""Install the pinned JADX 1.5.6 CLI + dex-input runtime inside work/.

Uses only Python's standard library. Downloads are checked against the committed
SHA-256 lockfile. No global Java/Maven configuration is changed. Optional plugins
for other input formats are intentionally absent; see the dependency lockfile.
"""

import argparse
import concurrent.futures
import hashlib
import json
import os
from pathlib import Path
import re
import socket
import subprocess
import urllib.request


ROOT = Path(__file__).resolve().parent.parent
PART_SIZE = 256 * 1024
ORIGINAL_GETADDRINFO = socket.getaddrinfo


def ipv4_first(host, port, family=0, type=0, proto=0, flags=0):
    """Avoid waiting on unreachable IPv6 routes; preserve IPv6 as a fallback."""
    addresses = ORIGINAL_GETADDRINFO(host, port, family, type, proto, flags)
    return sorted(addresses, key=lambda item: item[0] != socket.AF_INET)


def digest(data):
    return hashlib.sha256(data).hexdigest()


def filename(item):
    parts = item["coordinate"].split(":")
    if len(parts) != 3 or not all(re.fullmatch(r"[A-Za-z0-9_.-]+", part) for part in parts):
        raise ValueError("Invalid artifact coordinate")
    return "-".join(parts) + ".jar"


def download_part(url, start, end, total, destination, timeout):
    size = end - start + 1
    if destination.is_file() and destination.stat().st_size == size:
        return destination.read_bytes()
    last_error = None
    for _ in range(4):
        try:
            request = urllib.request.Request(url, headers={"Range": f"bytes={start}-{end}"})
            with urllib.request.urlopen(request, timeout=timeout) as response:
                expected_range = f"bytes {start}-{end}/{total}"
                if response.status != 206 or response.headers.get("Content-Range") != expected_range:
                    raise ValueError(f"Unexpected HTTP range response for {url}")
                data = response.read(size + 1)
            if len(data) != size:
                raise ValueError(f"Incomplete HTTP range for {url}")
            destination.write_bytes(data)
            return data
        except (OSError, ValueError) as error:
            last_error = error
    raise RuntimeError(f"Download failed after 4 attempts: {url} bytes={start}-{end}") from last_error


def install(item, destination, timeout, verify_only):
    name = filename(item)
    target = destination / "lib" / name
    if target.is_file():
        data = target.read_bytes()
        if len(data) == item["size_bytes"] and digest(data) == item["sha256"]:
            return f"Verified {item['coordinate']}"
    if verify_only:
        raise ValueError(f"Missing or mismatched JAR: {target}")
    parts_dir = destination / "partials" / name
    parts_dir.mkdir(parents=True, exist_ok=True)
    total = item["size_bytes"]
    ranges = [(start, min(start + PART_SIZE - 1, total - 1)) for start in range(0, total, PART_SIZE)]

    def get(bounds):
        start, end = bounds
        return download_part(item["url"], start, end, total,
                             parts_dir / f"{start}-{end}.part", timeout)

    with concurrent.futures.ThreadPoolExecutor(max_workers=min(4, len(ranges))) as pool:
        data = b"".join(pool.map(get, ranges))
    if digest(data) != item["sha256"]:
        raise ValueError(f"SHA-256 mismatch for {name}; remove its partials directory before retrying")
    target.parent.mkdir(parents=True, exist_ok=True)
    pending = target.with_suffix(".pending")
    pending.write_bytes(data)
    pending.replace(target)
    return f"Installed {item['coordinate']}"


def write_launcher(destination):
    launcher = r'''$ErrorActionPreference = 'Stop'
$taskOldConfig = $env:JADX_CONFIG_DIR
$taskOldCache = $env:JADX_CACHE_DIR
$taskOldTmp = $env:JADX_TMP_DIR
try {
    $env:JADX_CONFIG_DIR = Join-Path $PSScriptRoot 'config'
    $env:JADX_CACHE_DIR = Join-Path $PSScriptRoot 'cache'
    $env:JADX_TMP_DIR = Join-Path $PSScriptRoot 'tmp'
    New-Item -ItemType Directory -Force -Path $env:JADX_CONFIG_DIR, $env:JADX_CACHE_DIR, $env:JADX_TMP_DIR | Out-Null
    & java '-Xmx4G' '-cp' (Join-Path $PSScriptRoot 'lib/*') 'jadx.cli.JadxCLI' '--config' 'none' @args
    $taskJadxExit = $LASTEXITCODE
}
finally {
    $env:JADX_CONFIG_DIR = $taskOldConfig
    $env:JADX_CACHE_DIR = $taskOldCache
    $env:JADX_TMP_DIR = $taskOldTmp
}
exit $taskJadxExit
'''
    (destination / "run.ps1").write_text(launcher, encoding="utf-8")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--destination", type=Path, default=ROOT / "work/tools/jadx-maven")
    parser.add_argument("--lockfile", type=Path, default=ROOT / "docs/evidence/jadx-dependencies.json")
    parser.add_argument("--verify-only", action="store_true", help="Only verify existing JARs; no network access")
    parser.add_argument("--check-version", action="store_true", help="Also run the CLI --version command using Java on PATH")
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--timeout", type=float, default=15.0)
    args = parser.parse_args()
    if args.jobs < 1 or args.timeout <= 0:
        parser.error("--jobs and --timeout must be positive")
    lock = json.loads(args.lockfile.read_text(encoding="utf-8"))
    destination = args.destination.resolve()
    socket.getaddrinfo = ipv4_first
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.jobs) as pool:
        results = pool.map(lambda item: install(item, destination, args.timeout, args.verify_only), lock["dependencies"])
        for result in results:
            print(result, flush=True)
    if not args.verify_only:
        destination.mkdir(parents=True, exist_ok=True)
        (destination / "dependencies.json").write_text(json.dumps(lock, indent=2) + "\n", encoding="utf-8")
        write_launcher(destination)
    print(f"JADX {lock['jadx_version']}: {len(lock['dependencies'])} verified JARs", flush=True)
    if args.check_version:
        environment = dict(os.environ)
        for variable, folder in (("JADX_CONFIG_DIR", "config"), ("JADX_CACHE_DIR", "cache"), ("JADX_TMP_DIR", "tmp")):
            environment[variable] = str(destination / folder)
        result = subprocess.run(["java", "-cp", str(destination / "lib/*"), "jadx.cli.JadxCLI", "--config", "none", "--version"],
                                env=environment, capture_output=True, text=True, check=True)
        version = result.stdout.strip()
        if version != lock["jadx_version"]:
            raise ValueError(f"Unexpected CLI version: {version!r}")
        print(f"CLI version check passed: {version}")


if __name__ == "__main__":
    main()
