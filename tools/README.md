# 工具与复现步骤

本流程只静态解析本地 APK，不启动 Android，不加载样本 `.so`，不向设备发送数据。完整中间结果与工具都在 Git 忽略的 `work/` 中。

## 已使用环境

| 工具 | 实际版本 | 用途 |
| --- | --- | --- |
| Git / Git LFS | 2.54.0.windows.1 / 3.7.1 | 样本及版本管理 |
| Python | 3.10.11 | 样本清单、证据提取、ELF 分析 |
| JDK | Temurin 25.0.4+7 | 运行 JADX 及 Java 单文件工具 |
| JADX | 1.5.6 | 完整 APK 上下文、应用包 Java 和资源解码 |
| baksmali | 3.0.9（JADX dex-input 依赖） | `JavaClass.getSmali()` 字节码交叉核查 |
| GNU readelf | 2.45.1 | ELF 符号与重定位初查 |
| Capstone / pyelftools | 5.0.6 / 0.32 | AArch64 指令、JNI 表、PLT/GOT 验证 |

未使用 Ghidra。Androguard 安装尝试未完成，未用其生成结论或证据；它不是复现依赖。

## 1. 获取样本与依赖

先按仓库 [README](../README.md) 获取完整 LFS 文件。以下命令在仓库根目录的 PowerShell 执行：

```powershell
Get-FileHash .\sample.apk -Algorithm SHA256
python tools/bootstrap_jadx.py --check-version
python -m pip install --target work/tools/native-deps capstone==5.0.6 pyelftools==0.32
```

APK 哈希必须是 `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`。JADX 安装脚本从 Maven Central 下载 27 个固定版本 JAR（约 9.3 MB），逐个验证 [依赖锁文件](../docs/evidence/jadx-dependencies.json) 中的 SHA-256；不需要 Maven，不修改全局 Java 配置。它只安装本次 APK 分析所需的 CLI/dex-input 依赖，省略的可选插件在锁文件中列出。JADX 官方项目与发行记录见 [JADX 1.5.6](https://github.com/skylot/jadx/releases/tag/v1.5.6)。

本环境访问部分站点时遇到连接超时：JADX 下载器使用 IPv4 优先和分段下载，仍保留 TLS 验证；native Python 依赖通过清华 PyPI 镜像取得。若默认 PyPI 不通，可显式使用：

```powershell
python -m pip install --index-url https://pypi.tuna.tsinghua.edu.cn/simple --target work/tools/native-deps capstone==5.0.6 pyelftools==0.32
```

该命令只装到工作区。实际使用 wheel 的哈希记录于 [native 分析](../docs/native-analysis.md)。

## 2. 一次重建全部静态证据

```powershell
.\tools\run_analysis.ps1
```

该入口先核对 APK 和工具哈希，然后依次运行：

1. `inventory.py`：读遍 ZIP 检查 CRC，输出 DEX/native 哈希、DEX 内部校验和签名结构。
2. `Decompile.java`：加载全部 47,156 个类，只保存 `com.tzh.*`、`com.hmx.*` 源码及资源；禁用方法内联和常量字段替换，以保留调用边与字节数值。
3. `ExtractControlSmali.java`：导出 BaseCmd、PlayActivity、Rudder 的 Smali。
4. `extract_evidence.py`：连接链原文件行号摘录、Manifest 和元数据。
5. `extract_control_evidence.py`：控制方法、调度、输入链、关键 Smali 与资源选区。
6. `analyze-native.py`：从已校验 APK 提取两库，解析 JNI/重定位并输出指定指令选区。
7. `extract_evidence.py --check`：比较生成证据与当前 JADX 输出。

执行日志分别在 `work/inventory-run.log`、`work/jadx-decompile.log`、`work/control-smali.log`；native 全库反汇编仅存 `work/native/`。报告中的人工判断不由脚本自动生成，重新生成证据后仍需阅读和审核。

## 3. 单步命令与查找

```powershell
python tools/bootstrap_jadx.py --verify-only --check-version
python tools/inventory.py
# 可选的全部 ZIP 项哈希，仅保存到 work：
python tools/inventory.py --all-entries --output work/sample-inventory-full.json

$env:JADX_CONFIG_DIR = Join-Path (Get-Location) 'work/jadx-config'
$env:JADX_CACHE_DIR = Join-Path (Get-Location) 'work/jadx-cache'
$env:JADX_TMP_DIR = Join-Path (Get-Location) 'work/jadx-tmp'
java -Xmx4g -cp 'work/tools/jadx-maven/lib/*' tools/Decompile.java sample.apk work/jadx
java -Xmx3g -cp 'work/tools/jadx-maven/lib/*' tools/ExtractControlSmali.java
python tools/extract_evidence.py
python tools/extract_control_evidence.py
python tools/analyze-native.py
python tools/extract_evidence.py --check

rg -n 'iCmdSend|dealWithStart|takeOneKeyFly|takOneKeyLand' work/jadx/sources/com/tzh
rg -n 'iCameraStart|iCameraStop|OnWiFiStateChange' work/jadx/sources/com/tzh
```

完整包不导出并不意味着其类从加载上下文排除。本次 JADX 显示 `Loaded classes: 47156, methods: 314900, instructions: 8408448`，最终 `JADX reported errors: 0`，同时有复杂 try 和 31 个未知类引用警告。零 errors 不保证恢复出的 Java 可编译；俯仰值方法的变量恢复问题已用 Smali 检查。

## 4. 验证边界

样本 ZIP/DEX 校验、依赖哈希、JNI 22 项表和关键 PLT/GOT 均已检查。连接、控制及 native 证据已重跑比较；没有 Android 实机、模拟器测试或抓包。签名结构存在不代表已完成密码学签名验证。源码选区与 native 地址只适用于锁定的样本，不能直接套用于另一个 APK。
