"""Static AArch64 ELF inspection; never loads or executes the sampled libraries.

Dependencies: capstone 5.0.6, pyelftools 0.32 in work/tools/native-deps.
Run from repository root: python tools/analyze-native.py
Inputs are sample.apk and the pinned dependencies only. Existing work/native
libraries are replaced with verified APK entries before analysis; no network used.
"""
import io
import hashlib
import json
import pathlib
import sys
import zipfile

ROOT = pathlib.Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "work/tools/native-deps"))
import capstone
import elftools
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN
from elftools.elf.elffile import ELFFile

APK_SHA256 = "49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0"
LIBRARY_SHA256 = {
    "libCamera.so": "e001492721af2cd8e089440a5752f320a2441ca07584be92ae0b28ff53cae928",
    "libmain.so": "5a8988a7c64b8cfd9a8b63d56337e0e0689f48b7b2d23e1438fb1687792db301",
}


def write_utf8(path, text):
    """Keep evidence byte-identical across operating systems."""
    with path.open("w", encoding="utf-8", newline="\n") as output:
        output.write(text)


def prepare_inputs():
    if capstone.__version__ != "5.0.6" or elftools.__version__ != "0.32":
        raise RuntimeError("Install pinned capstone==5.0.6 and pyelftools==0.32 before reproducing evidence")
    apk_path = ROOT / "sample.apk"
    digest = hashlib.sha256()
    with apk_path.open("rb") as source:
        for block in iter(lambda: source.read(1024 * 1024), b""):
            digest.update(block)
    if digest.hexdigest() != APK_SHA256:
        raise RuntimeError("sample.apk does not match the analyzed sample SHA-256")
    target = ROOT / "work/native"
    target.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(apk_path) as apk:
        for library, expected in LIBRARY_SHA256.items():
            data = apk.read("lib/arm64-v8a/" + library)
            if hashlib.sha256(data).hexdigest() != expected:
                raise RuntimeError("Unexpected APK library hash: " + library)
            (target / library).write_bytes(data)


def inspect(name):
    data = (ROOT / "work/native" / name).read_bytes()
    elf = ELFFile(io.BytesIO(data))
    symbols = list(elf.get_section_by_name(".dynsym").iter_symbols())
    funcs = [s for s in symbols if s["st_info"]["type"] == "STT_FUNC" and s["st_value"]]
    by_addr = {s["st_value"]: s.name for s in funcs}
    reloc_values = {}
    reloc_records = {}
    plt_names = {}
    plt = elf.get_section_by_name(".plt")
    for section in elf.iter_sections():
        if section["sh_type"] != "SHT_RELA":
            continue
        for index, rel in enumerate(section.iter_relocations()):
            symbol = symbols[rel["r_info_sym"]]
            reloc_values[rel["r_offset"]] = symbol["st_value"] + rel["r_addend"]
            reloc_records[rel["r_offset"]] = {"offset": hex(rel["r_offset"]), "type": rel["r_info_type"], "symbol": symbol.name, "symbol_va": hex(symbol["st_value"]), "addend": hex(rel["r_addend"])}
            if section.name == ".rela.plt":
                # Standard AArch64 PLT: 32-byte resolver followed by 16-byte entries.
                plt_names[plt["sh_addr"] + 32 + index * 16] = symbol.name + "@plt"

    def read_va(addr, length):
        for segment in elf.iter_segments():
            start = segment["p_vaddr"]
            if segment["p_type"] == "PT_LOAD" and start <= addr < start + segment["p_filesz"]:
                offset = segment["p_offset"] + addr - start
                return data[offset:offset + length]
        return b""

    def cstring(addr):
        try:
            return read_va(addr, 256).split(b"\0", 1)[0].decode("ascii")
        except UnicodeDecodeError:
            return ""

    native_methods = []
    for addr in sorted(reloc_values):
        method = cstring(reloc_values[addr])
        signature = cstring(reloc_values.get(addr + 8, 0))
        fn = reloc_values.get(addr + 16, 0)
        if method and method[0].isalpha() and all(c.isalnum() or c == "_" for c in method) and signature.startswith("(") and ")" in signature and fn:
            native_methods.append({"table_va": hex(addr), "name": method, "signature": signature, "function_va": hex(fn)})
            by_addr.setdefault(fn, "registered:" + method)

    engine = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    engine.detail = False
    text = elf.get_section_by_name(".text")
    disassembly = []
    edges = []
    current = "<unknown>"
    for ins in engine.disasm(text.data(), text["sh_addr"]):
        if ins.address in by_addr:
            current = by_addr[ins.address]
            disassembly.append("\n" + current + ":")
        annotation = ""
        if ins.mnemonic in ("bl", "b") and ins.op_str.startswith("#0x"):
            target = int(ins.op_str[1:], 16)
            target_name = plt_names.get(target, by_addr.get(target))
            if target_name:
                annotation = " ; " + target_name
                edges.append({"source": current, "instruction_va": hex(ins.address), "instruction": ins.mnemonic, "target_va": hex(target), "target": target_name})
        disassembly.append(f"{ins.address:08x}  {ins.bytes.hex():8s}  {ins.mnemonic:8s} {ins.op_str}{annotation}".rstrip())

    out = ROOT / "work/native"
    write_utf8(out / (name + ".disasm.txt"), "\n".join(disassembly) + "\n")
    write_utf8(out / (name + ".edges.json"), json.dumps(edges, indent=2) + "\n")
    write_utf8(out / (name + ".jni.json"), json.dumps(native_methods, indent=2) + "\n")
    evidence = ROOT / "docs/evidence"
    evidence.mkdir(parents=True, exist_ok=True)
    network_names = {"socket", "connect", "send", "sendto", "sendmsg", "recv", "recvfrom", "recvmsg", "bind", "listen", "accept", "close"}
    summary = {
        "apk_entry": "lib/arm64-v8a/" + name,
        "size": len(data), "sha256": hashlib.sha256(data).hexdigest(),
        "elf_machine": elf["e_machine"], "elf_class": elf.elfclass,
        "jni_exports": [{"symbol": s.name, "va": hex(s["st_value"]), "size": s["st_size"]} for s in funcs if s.name.startswith("Java_") or s.name.startswith("JNI_On")],
        "selected_imports": sorted({s.name for s in symbols if s["st_shndx"] == "SHN_UNDEF" and s.name in network_names}),
        "note": "Absence from direct imports does not prove absence of indirect network activity."
    }
    write_utf8(evidence / ("native-" + name + ".json"), json.dumps(summary, indent=2) + "\n")
    if name == "libCamera.so":
        # These ranges are reviewed manually; the full edge dump above is only a discovery aid.
        extract = ROOT / "src-extract/native"
        extract.mkdir(parents=True, exist_ok=True)
        groups = {
            "jni-control.asm": [(0x39920, 0x39a6c), (0x39a78, 0x39ca4), (0x39e84, 0x39f9c)],
            "socket-control.asm": [(0x33340, 0x334cc), (0x334cc, 0x33748), (0x33e1c, 0x33fb4), (0x33cb4, 0x33cd8), (0x33d8c, 0x33de4)],
            "state-callback.asm": [(0x32d10, 0x32e0c), (0x330f4, 0x33134), (0x3374c, 0x338e4), (0x33a44, 0x33a74)],
        }
        header = (
            "; Static disassembly excerpt; no sampled code executed.\n"
            "; APK SHA256: 49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0\n"
            f"; Library: lib/arm64-v8a/{name}; SHA256: {summary['sha256']}\n"
            "; Architecture: AArch64 little-endian; addresses are ELF virtual offsets (load base = 0).\n"
            "; Decoder versions: capstone 5.0.6, pyelftools 0.32; script: tools/analyze-native.py\n"
            "; registered: labels come from the verified JNI table, not exported native symbols.\n"
            "; Semicolon PLT labels are resolved from relocation entries. Raw bytes are retained.\n"
        )
        for filename, ranges in groups.items():
            lines = [header]
            for start, end in ranges:
                lines.append(f"\n; VA range [0x{start:x}, 0x{end:x})")
                for ins in engine.disasm(read_va(start, end - start), start):
                    if ins.address in by_addr:
                        lines.append("\n" + by_addr[ins.address] + ":")
                    annotation = ""
                    if ins.mnemonic in ("b", "bl") and ins.op_str.startswith("#0x"):
                        dest = int(ins.op_str[1:], 16)
                        resolved = plt_names.get(dest, by_addr.get(dest))
                        if resolved:
                            annotation = " ; " + resolved
                    lines.append(f"{ins.address:08x}  {ins.bytes.hex():8s}  {ins.mnemonic:8s} {ins.op_str}{annotation}".rstrip())
            write_utf8(extract / filename, "\n".join(lines) + "\n")
        relevant_slots = {0x6c768, 0x6c778, 0x6c780, 0x6c788, 0x6c790, 0x6c798, 0x6c7a0, 0x6c7a8, 0x6c7b0, 0x6c7c0, 0x6c7c8, 0x6c7e8, 0x6c7f0, 0x6c958}
        selected_plt = {0x63d50, 0x63d60, 0x63d70, 0x63d80, 0x63da0, 0x63e10, 0x63710, 0x63d00, 0x63d10, 0x63e20, 0x63e30, 0x63df0, 0x63e00, 0x63ac0, 0x63de0, 0x63dd0}
        plt_evidence = []
        for pc in sorted(selected_plt):
            # Verify both decoded address-producing instructions against the relocation slot.
            ins = list(engine.disasm(read_va(pc, 16), pc))
            assert len(ins) == 4 and ins[0].mnemonic == "adrp" and ins[1].mnemonic == "ldr" and ins[3].mnemonic == "br"
            page = int(ins[0].op_str.split("#")[1], 16)
            displacement = int(ins[1].op_str.split("#")[1].rstrip("]"), 16)
            slot = page + displacement
            assert reloc_records[slot]["symbol"] + "@plt" == plt_names[pc]
            relevant_slots.add(slot)
            plt_evidence.append({"plt_va": hex(pc), "target": plt_names[pc], "got_slot": hex(slot), "instructions": [f"0x{i.address:x}: {i.mnemonic} {i.op_str}" for i in ins]})
        constants = []
        for s in symbols:
            if s.name in {"startCmd", "stopCmd", "rotateCmd", "switchCmd"}:
                constants.append({"name": s.name, "va": hex(s["st_value"]), "bytes": read_va(s["st_value"], s["st_size"]).hex(" ")})
        proof = {
            "class_pointer_va": "0x71720", "class_name_va": hex(reloc_values[0x71720]), "class_name": cstring(reloc_values[0x71720]),
            "registration_call_va": "0x399ec", "table_va": "0x71728", "count": 22,
            "methods": native_methods,
            "relevant_relocations": [reloc_records[o] for o in sorted(reloc_records) if o in relevant_slots or 0x71720 <= o < 0x71938],
            "verified_plt": plt_evidence,
            "strings": [{"va": hex(a), "value": cstring(a)} for a in [0x1de62, 0x1edb1, 0x1edb6]],
            "command_constants": constants,
        }
        assert len(native_methods) == 22 and native_methods[0]["table_va"] == "0x71728"
        assert native_methods[12]["name"] == "iCmdSend" and native_methods[12]["function_va"] == "0x39edc"
        write_utf8(evidence / "native-jni-and-relocations.json", json.dumps(proof, indent=2) + "\n")
    print(name, "registered JNI candidates:", len(native_methods), "direct named branches:", len(edges))


if __name__ == "__main__":
    prepare_inputs()
    for library in ["libCamera.so", "libmain.so"]:
        inspect(library)
