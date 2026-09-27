#!/usr/bin/env python3
"""Create a deterministic APK inventory using only Python's standard library.

Reads every ZIP entry, which verifies its ZIP CRC. This does not execute the APK
or verify the APK's cryptographic signing certificate/signature chain.
"""

import argparse
import collections
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import struct
import zipfile
import zlib


SIGNING_IDS = {
    0x7109871A: "APK Signature Scheme v2",
    0xF05368C0: "APK Signature Scheme v3",
    0x1B93AD61: "APK Signature Scheme v3.1",
    0x42726577: "Verity padding",
    0x6DFF800D: "Source stamp",
}


def sha256_file(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def signing_block(path):
    """Find the signing-block envelope immediately before the ZIP directory."""
    with path.open("rb") as stream:
        stream.seek(0, 2)
        size = stream.tell()
        tail_size = min(size, 65535 + 22)
        stream.seek(size - tail_size)
        tail = stream.read()
        candidate = len(tail)
        while True:
            candidate = tail.rfind(b"PK\x05\x06", 0, candidate)
            if candidate < 0:
                raise ValueError("ZIP end-of-central-directory record not found")
            if candidate + 22 <= len(tail):
                comment_size = struct.unpack_from("<H", tail, candidate + 20)[0]
                if candidate + 22 + comment_size == len(tail):
                    break
        directory_offset = struct.unpack_from("<I", tail, candidate + 16)[0]
        result = {"central_directory_offset": directory_offset, "present": False}
        if directory_offset == 0xFFFFFFFF:
            raise ValueError("ZIP64 signing-block parsing is not supported")
        if directory_offset < 24:
            return result
        stream.seek(directory_offset - 24)
        footer = stream.read(24)
        if footer[8:] != b"APK Sig Block 42":
            return result
        block_size = struct.unpack_from("<Q", footer)[0]
        start = directory_offset - block_size - 8
        if block_size < 24 or start < 0:
            raise ValueError("Invalid APK signing block size")
        stream.seek(start)
        block = stream.read(block_size + 8)
        if struct.unpack_from("<Q", block)[0] != block_size:
            raise ValueError("APK signing block size fields disagree")
        entries = []
        offset = 8
        end = len(block) - 24
        while offset < end:
            if offset + 8 > end:
                raise ValueError("Truncated APK signing block entry")
            pair_size = struct.unpack_from("<Q", block, offset)[0]
            offset += 8
            if pair_size < 4 or offset + pair_size > end:
                raise ValueError("Invalid APK signing block entry size")
            pair_id = struct.unpack_from("<I", block, offset)[0]
            value = block[offset + 4:offset + pair_size]
            entries.append({
                "id": f"0x{pair_id:08x}",
                "type": SIGNING_IDS.get(pair_id, "Unrecognized ID"),
                "value_size_bytes": len(value),
                "value_sha256": hashlib.sha256(value).hexdigest(),
            })
            offset += pair_size
        result.update({"present": True, "offset": start,
                       "size_bytes": len(block), "entries": entries,
                       "signature_verified": False})
        return result


def dex_header(data):
    if len(data) < 112 or not data.startswith(b"dex\n"):
        return {"standard_dex_header": False}
    expected_adler = struct.unpack_from("<I", data, 8)[0]
    declared_size = struct.unpack_from("<I", data, 32)[0]
    return {
        "standard_dex_header": True,
        "version": data[4:7].decode("ascii"),
        "declared_size_bytes": declared_size,
        "declared_size_matches": declared_size == len(data),
        "adler32_matches": expected_adler == (zlib.adler32(data[12:]) & 0xFFFFFFFF),
        "sha1_signature_matches": data[12:32] == hashlib.sha1(data[32:]).digest(),
        "string_ids_count": struct.unpack_from("<I", data, 56)[0],
        "type_ids_count": struct.unpack_from("<I", data, 64)[0],
        "method_ids_count": struct.unpack_from("<I", data, 88)[0],
        "class_defs_count": struct.unpack_from("<I", data, 96)[0],
    }


def elf_header(data):
    if len(data) < 20 or data[:4] != b"\x7fELF":
        return {"elf": False}
    byte_order = {1: "little", 2: "big"}.get(data[5])
    if byte_order is None:
        raise ValueError("Unrecognized ELF byte order")
    return {"elf": True, "bits": {1: 32, 2: 64}.get(data[4]),
            "byte_order": byte_order,
            "machine": int.from_bytes(data[18:20], byte_order)}


def inventory(path, all_entries=False):
    dex = []
    libraries = []
    signature_entries = []
    entries = []
    manifest = None
    with zipfile.ZipFile(path) as archive:
        infos = sorted(archive.infolist(), key=lambda entry: (entry.filename, entry.header_offset))
        names = collections.Counter(info.filename for info in infos)
        unsafe_paths = []
        for info in infos:
            entry = {"path": info.filename, "size_bytes": info.file_size,
                     "compressed_size_bytes": info.compress_size,
                     "compression_method": info.compress_type,
                     "crc32": f"{info.CRC:08x}"}
            digest = hashlib.sha256()
            special = (re.fullmatch(r"classes(?:[0-9]+)?\.dex", info.filename)
                       or info.filename.endswith(".so")
                       or info.filename == "AndroidManifest.xml")
            chunks = []
            with archive.open(info) as stream:
                for chunk in iter(lambda: stream.read(1024 * 1024), b""):
                    digest.update(chunk)
                    if special:
                        chunks.append(chunk)
            entry["sha256"] = digest.hexdigest()
            is_dex = bool(re.fullmatch(r"classes(?:[0-9]+)?\.dex", info.filename))
            is_native = info.filename.startswith("lib/") and info.filename.endswith(".so")
            is_signature = (info.filename.upper().startswith("META-INF/")
                            and (info.filename.upper().endswith((".RSA", ".DSA", ".EC", ".SF"))
                                 or info.filename.upper() == "META-INF/MANIFEST.MF"))
            if all_entries or is_dex or is_native or is_signature:
                entries.append(entry)
            parts = PurePosixPath(info.filename).parts
            if info.filename.startswith(("/", "\\")) or ".." in parts or "\\" in info.filename:
                unsafe_paths.append(info.filename)
            data = b"".join(chunks)
            if is_dex:
                dex.append({**entry, **dex_header(data)})
            if is_native:
                libraries.append({**entry, "abi": parts[1], **elf_header(data)})
            if info.filename == "AndroidManifest.xml":
                manifest = entry
            if is_signature:
                signature_entries.append(entry)
        return {
            "schema_version": 1,
            "sample": {"file": path.name, "size_bytes": path.stat().st_size,
                       "sha256": sha256_file(path)},
            "verification": {
                "all_zip_entries_read_and_crc_checked": True,
                "duplicate_entry_names": sorted(name for name, count in names.items() if count > 1),
                "unsafe_entry_paths": sorted(unsafe_paths),
                "cryptographic_apk_signature_verified": False,
                "note": "ZIP CRC and DEX header checks establish internal consistency, not publisher authenticity.",
            },
            "zip": {"entry_count": len(infos),
                    "file_count": sum(not info.is_dir() for info in infos),
                    "uncompressed_size_bytes": sum(info.file_size for info in infos)},
            "android_manifest": manifest,
            "dex_count": len(dex), "dex_files": dex,
            "native_library_count": len(libraries),
            "abi_counts": dict(sorted(collections.Counter(item["abi"] for item in libraries).items())),
            "native_libraries": libraries,
            "v1_signature_zip_entries": signature_entries,
            "apk_signing_block": signing_block(path),
            "zip_entries_scope": "all" if all_entries else "dex_native_signature",
            "zip_entries": entries,
        }


def main():
    root = Path(__file__).resolve().parent.parent
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("apk", nargs="?", type=Path, default=root / "sample.apk")
    parser.add_argument("--output", type=Path, default=root / "docs/evidence/sample-inventory.json")
    parser.add_argument("--all-entries", action="store_true",
                        help="Include every ZIP entry hash; use --output work/sample-inventory-full.json for a local full inventory")
    args = parser.parse_args()
    result = inventory(args.apk, all_entries=args.all_entries)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8", newline="\n")
    print(json.dumps({key: result[key] for key in ("sample", "zip", "dex_count", "native_library_count", "abi_counts", "verification", "apk_signing_block")}, ensure_ascii=False, indent=2))
    print(f"Inventory written to {args.output}")


if __name__ == "__main__":
    main()
