# 完整 APK 重建工程

本目录可以从仓库的 `sample.apk` 全量解码、编译资源、重新汇编 7 个 DEX，再对齐并签出调试 APK。原界面资源、第三方字节码、188 个 assets 与 43 个原生库均参与构建。已在 Windows 上完成实际构建及签名校验，结果见 [构建记录](BUILD-VERIFICATION.md)。

工程采用 **Smali + Android XML + 原生二进制**。它提供可修改、可重新构建的完整工程，不代表恢复了作者的原始 Java/Kotlin、Gradle 配置或 C/C++ 源码。`src-extract/` 继续作为分析摘录；本目录承担构建。

## 一键构建

已实测环境：Windows、Python 3.10.11、Temurin JDK 25.0.4+7。需安装 Git LFS 以获取完整样本。Python 只使用标准库；`python`、`java`、`keytool` 需要在 PATH。无需安装 Android Studio、Gradle 或完整 Android SDK。首次构建需要联网下载锁定工具，并需要数 GB 的空闲磁盘和可供 Java 使用的 4 GB 内存。

在仓库根目录执行：

```powershell
git lfs pull
python rebuild/build.py
```

脚本首先核对样本 SHA-256，再下载并校验 Apktool 3.0.3、Android Build Tools 35.0.0 中需要的工具。全部版本、下载来源、归档及提取文件的哈希均锁定在 [tools.lock.json](tools.lock.json)。已存在的缓存也会校验，校验失败不会执行工具。

成功输出：

| 路径 | 内容 |
| --- | --- |
| `rebuild/output/wifi-cam-rebuilt-debug.apk` | 已对齐、通过 v1/v2/v3 签名验证的调试 APK |
| `rebuild/output/wifi-cam-rebuilt-unsigned.apk` | 重新编译得到的未签名 APK |
| `rebuild/output/build-result.json` | 本次结果、APK 哈希及验证状态 |
| `rebuild/output/verification.json` | DEX、类清单、原生库、assets、ZIP 完整校验报告 |
| `work/rebuild/` | 每步日志、框架缓存与本地调试密钥 |

准备过工具后，可禁止联网：

```powershell
python rebuild/build.py --offline
```

只生成完整源工程，或只编译未签名 APK：

```powershell
python rebuild/build.py prepare
python rebuild/build.py build --unsigned
```

锁定的签名与 zipalign 工具为 Windows 版本。`--unsigned` 不需要它们；其他操作系统的构建尚未实测。

## 工程与源码在哪里

| 目录 | 内容与保存方式 |
| --- | --- |
| `source/AndroidManifest.xml`、`source/apktool.yml` | 可修改的应用声明及重建配置，提交 Git |
| `source/smali_classes6/com/tzh/` | 293 个业务 Smali 文件，含界面、控制编码与通信入口，提交 Git |
| `source/smali_classes4/com/hmx/` | 3 个识别 / OpenCV JNI 相关 Smali 文件，提交 Git |
| `source/smali_classes7/com/yuan/` | 6 个图像分类、文件工具相关 Smali 文件，提交 Git |
| `source/res/` | 全部 2,174 个解码资源 XML，提交 Git |
| `project/` | 全量解码工程：47,156 个 Smali 类、所有资源、assets、43 个 `.so`，本地自动生成 |
| `output/` | APK 和运行生成的报告，本地生成 |

`project/` 和 `output/` 不提交，以免重复存放数万依赖文件和大型二进制。Git 中的完整原 APK 通过 LFS 保存；克隆后运行 `prepare` 就会补齐全量工程，并应用 `source/` 中的修改。构建不会使用 JADX 的伪 Java，也不会直接复制原 `classes*.dex`：日志中应出现 7 个 Smali 目录的重新汇编记录。

[source-manifest.json](source-manifest.json) 记录首次导出的 2,478 个文件、原始解码哈希及统一为 LF 换行后的源码哈希，用于追溯基线；后续编辑不必更新这个历史记录。`seed_sources.py` 仅用于首次提取基线，常规构建无需运行，它会拒绝覆盖已有 `source/`。

## 修改与重新构建

推荐直接修改 `source/` 中的 Smali 方法、布局、字符串或 Manifest，再运行 `python rebuild/build.py --offline`。脚本将修改同步到完整 `project/` 后，强制重新编译所有 Smali 和资源。

如果在 `project/` 中修改了文件，先将它保存进 Git 管理的源码目录，例如：

```powershell
python rebuild/build.py capture smali_classes6/com/tzh/wifi/wificam/WiFiApp.smali
python rebuild/build.py --offline
```

`capture` 的路径相对于 `project/`，也可一次指定多个文件。第三方 Smali 或原先未放入 `source/` 的文件，也可用此方式纳入源码。若同一文件在两个目录中都发生了不同修改，脚本会停止并保留两份内容；手动合并两份文件至一致后再 capture。已应用的 source 文件被移除也会停止，不会把删除覆盖文件误认为删除应用文件；需要撤销编辑时，从 Git 恢复该 source 文件后再构建。

默认验证要求每个 DEX 的类集合与原样本一致。仅修改已有方法、布局或字符串不受这个限制。如果有意增加或重命名类，可显式运行：

```powershell
python rebuild/build.py --offline --allow-code-changes
```

该选项只允许原有 DEX 名称内的类集合变化，差异仍写入报告。assets 和 native 文件的名称/内容仍要求与原样本一致；修改这些二进制或增加 DEX 时，需要同步调整并审查 `verify.py` 的基线策略。脚本不会把这类变更默认为保留原包的成功构建。

## 校验与测试

```powershell
# 只读比较已有成品，不执行 APK；此命令不单独验证签名
python rebuild/build.py verify --apk rebuild/output/wifi-cam-rebuilt-debug.apk

# 构建及校验器的正负测试
python -m unittest discover -s rebuild/tests -v
```

构建流程另外运行官方 `apksigner verify` 和 `zipalign -c -P 16 4`，验证成功后才替换正式成品。校验器检查所有 ZIP 条目的 CRC、DEX 长度/SHA-1/Adler32、实际 class_defs 类清单、43 个原生库与 188 个 assets 的逐文件哈希。原包 8 个中文音乐资源的 ZIP 名字节为 UTF-8，但缺少相应标志；重建修正了标志。校验器仅在原始名字节、内容哈希都相同且名称唯一时接受，并单独记录证据。

## 构建边界

- 包名、版本与 SDK 声明保留：`com.tzh.wifi.wificam.activity`，6.0.7 / 20250905，minSdk 21、targetSdk 35；原生库只有 `arm64-v8a`。
- 调试证书在本机首次生成，密钥放在已忽略的 `work/rebuild/debug.p12`。它不等于原开发者证书，不能作为原签名应用的覆盖更新；依赖签名身份的第三方服务仍需实机验证。不同机器的调试证书和 APK 哈希可能不同。
- DEX 类清单相同、校验和正确不证明方法语义相同；资源重新编译成功也不证明所有界面已实测。没有恢复原生源码，也没有验证原 `.so` 的 16 KB ELF 页兼容性；ZIP 对齐通过不能证明 ELF 页兼容。
- 本次完成编译、签名与静态完整性验证；未安装或运行 APK，未连接设备或发送控制指令。原有功能与第三方 SDK 的运行兼容性待实机验证。

工具依据：[Apktool CLI](https://apktool.org/docs/cli-parameters/)、[Apktool 3.0.3 发布说明](https://apktool.org/blog/apktool-3.0.3/)、[Android apksigner](https://developer.android.com/tools/apksigner)、[官方 Build Tools 元数据](https://dl.google.com/android/repository/repository2-3.xml)。本工程锁定 Maven 的 Apktool JAR，其哈希不同于发布页另一分发构件，具体以锁文件中的下载 URL 和 SHA-256 为准。
