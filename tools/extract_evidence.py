"""Export line-numbered connection evidence from the pinned JADX output."""
import argparse
import hashlib
import json
from pathlib import Path
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parent.parent
APK_SHA256 = "49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0"
SOURCES = [
    ("C01", "com/tzh/wifi/wificam/WiFiApp.java", [(104, 124)], "Camera.iCameraInit()"),
    ("C02", "com/tzh/wifi/wificam/activity/PlayActivity.java",
     [(1139, 1178), (1435, 1467), (1500, 1508)], "ICmd_Stop()"),
    ("C03", "com/tzh/wifi/wificam/presenter/WiFiPresenter.java",
     [(141, 167), (303, 320), (337, 378)], "this.wiFiModel.iCameraStart()"),
    ("C04", "com/tzh/wifi/wificam/model/WiFiModelImpl.java",
     [(14, 30), (53, 72), (187, 217)], "iModelCallBack.disconnected()"),
    ("C05", "com/tzh/wifi/wificam/model/base/BaseModel.java",
     [(56, 74), (96, 106)], "return Camera.iCameraStart()"),
    ("C06", "com/tzh/wifi/utils/Camera.java",
     [(38, 84), (96, 165), (206, 216)], 'System.loadLibrary("Camera")'),
]


def sha(data):
    return hashlib.sha256(data).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jadx-dir", type=Path, default=ROOT / "work/jadx")
    parser.add_argument("--check", action="store_true", help="Compare instead of writing")
    args = parser.parse_args()
    if sha((ROOT / "sample.apk").read_bytes()) != APK_SHA256:
        raise SystemExit("Unexpected APK hash; refusing to attribute evidence to this sample")
    outputs = {}
    index = {"sample_sha256": APK_SHA256, "tool": "JADX 1.5.6",
             "configuration": "tools/Decompile.java", "evidence": []}
    for ident, name, ranges, anchor in SOURCES:
        path = args.jadx_dir / "sources" / name
        data = path.read_bytes()
        lines = data.decode("utf-8").splitlines()
        selected = "\n".join("\n".join(lines[a-1:b]) for a, b in ranges)
        if anchor not in selected or any(a < 1 or b > len(lines) for a, b in ranges):
            raise SystemExit(f"Source layout changed: {name}; review excerpt ranges")
        text = (f"# {ident} — {Path(name).stem}\n\n"
                f"- APK SHA-256: `{APK_SHA256}`\n"
                f"- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。\n"
                f"- 原始类：`{name[:-5].replace('/', '.')}`（`classes6.dex`）。\n"
                f"- 来源：`work/jadx/sources/{name}`\n"
                f"- 完整反编译文件 SHA-256：`{sha(data)}`\n\n"
                "下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。\n")
        for start, end in ranges:
            text += f"\n## 原文件 {start}–{end} 行\n\n```text\n"
            text += "\n".join(f"{i:4d} | {lines[i-1]}".rstrip() for i in range(start, end+1))
            text += "\n```\n"
        target = f"src-extract/connection/{ident}-{Path(name).stem}.md"
        outputs[target] = text.encode("utf-8")
        index["evidence"].append({"id": ident, "source": name,
                                  "source_sha256": sha(data), "ranges": ranges,
                                  "excerpt": target, "excerpt_sha256": sha(outputs[target])})

    manifest_source = (args.jadx_dir / "resources/AndroidManifest.xml").read_bytes()
    manifest_data = manifest_source.replace(b"\r\n", b"\n")
    manifest = ET.fromstring(manifest_data)
    ns = "{http://schemas.android.com/apk/res/android}"
    app = manifest.find("application")
    launchers = []
    for activity in app.findall("activity"):
        for filt in activity.findall("intent-filter"):
            actions = {e.get(ns + "name") for e in filt.findall("action")}
            categories = {e.get(ns + "name") for e in filt.findall("category")}
            if "android.intent.action.MAIN" in actions and "android.intent.category.LAUNCHER" in categories:
                launchers.append(activity.get(ns + "name"))
    strings = ET.parse(args.jadx_dir / "resources/res/values/strings.xml")
    app_name = next(e.text for e in strings.findall("string") if e.get("name") == "app_name")
    metadata = {
        "sample_sha256": APK_SHA256, "tool": "JADX 1.5.6",
        "package": manifest.get("package"), "version_name": manifest.get(ns + "versionName"),
        "version_code": manifest.get(ns + "versionCode"), "app_name": app_name,
        "min_sdk": manifest.find("uses-sdk").get(ns + "minSdkVersion"),
        "target_sdk": manifest.find("uses-sdk").get(ns + "targetSdkVersion"),
        "application": app.get(ns + "name"), "launcher_activities": launchers,
        "permissions": [e.get(ns + "name") for e in manifest.findall("uses-permission")],
        "services": [e.get(ns + "name") for e in app.findall("service")],
        "jadx_manifest_source_sha256": sha(manifest_source),
        "decoded_manifest_sha256": sha(manifest_data),
        "decoded_manifest_line_endings": "LF (normalized from JADX output)",
    }
    outputs["docs/evidence/AndroidManifest.xml"] = manifest_data
    for filename, value in [("java-evidence.json", index), ("manifest-summary.json", metadata)]:
        outputs["docs/evidence/" + filename] = (json.dumps(value, ensure_ascii=False, indent=2) + "\n").encode("utf-8")
    for name, data in outputs.items():
        dest = ROOT / name
        if args.check:
            if not dest.exists() or dest.read_bytes() != data:
                raise SystemExit(f"Evidence differs: {name}")
        else:
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(data)
    print(f"{'Verified' if args.check else 'Exported'} {len(outputs)} evidence files")


if __name__ == "__main__":
    main()
