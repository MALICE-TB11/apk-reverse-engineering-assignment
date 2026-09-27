# Android 飞行器控制 APK 通信与控制函数逆向分析

课程作业的静态分析与完整 APK 重建工程。已定位连接生命周期、状态回调、四轴与起降编码、JNI 绑定和实际 UDP 发送函数，并保存可复现证据。新增 Smali / 资源重建工程，已实际编译并通过调试签名验证。未进行设备连接、控制发送或动态验证。

## 编译完整 APK

在 Windows 安装 Python 与 JDK，并获取 Git LFS 中的完整样本后，在仓库根目录执行：

```powershell
git lfs pull
python rebuild/build.py
```

成品为 `rebuild/output/wifi-cam-rebuilt-debug.apk`。脚本自动补齐全量源工程、重新编译 7 个 DEX 和资源、对齐、签名并校验。可修改源码位于 `rebuild/source/`，全量工程生成在 `rebuild/project/`；详见 [完整工程说明](rebuild/README.md) 与 [实测构建记录](rebuild/BUILD-VERIFICATION.md)。这是 Smali/XML 重建工程，原生库保留原二进制，未恢复原始 Java/Gradle/C++ 工程。

## 样本

| 项目 | 内容 |
| --- | --- |
| 文件 | `sample.apk`，Git LFS 管理，保留在根目录 |
| 大小 | 112,446,698 字节，约 107.24 MiB |
| SHA-256 | `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0` |
| 应用 / 包名 | WiFi_CAM / `com.tzh.wifi.wificam.activity` |
| 版本 | 6.0.7（20250905） |
| DEX / Native | 7 个 DEX；43 个 arm64-v8a `.so` |

## 主要结果

```text
按钮 / 摇杆 → WiFiPresenter → WiFiModelImpl → BaseCmd
 → Camera.iCmdSend → libCamera.so → Socket::sendCmd → UDP sendto
```

- 初始化通信目标为 `192.168.4.153`，命令端口 `8090`、图像端口 `8080`。后续接收可能覆盖地址结构，详见 native 报告。
- 已还原 8/20 字节控制帧、四轴字段、XOR 校验与短时功能位；20 字节格式的起飞与降落共用一位，已核对原始字节码，设备语义未验证。
- `iCmdSend` 固定返回 0；界面连接状态也不等于控制执行成功。报告明确区分静态事实、推断与未知项。

## 阅读顺序

1. [分析报告](docs/analysis.md)
2. [关键函数索引](docs/functions.md)与[逐边调用链](docs/call-chain.md)
3. [控制与协议](docs/control-protocol.md)
4. [JNI / native](docs/native-analysis.md)
5. [工具与复现步骤](tools/README.md)、[源码摘录说明](src-extract/README.md)

## 获取与复现

```powershell
git lfs install
git clone https://github.com/MALICE-TB11/apk-reverse-engineering-assignment.git
cd apk-reverse-engineering-assignment
git lfs pull
Get-FileHash .\sample.apk -Algorithm SHA256
```

需完整 APK，LFS 指针不能分析。具备 Python 与 JDK 后，在根目录执行：

```powershell
python tools/bootstrap_jadx.py --check-version
python -m pip install --target work/tools/native-deps capstone==5.0.6 pyelftools==0.32
.\tools\run_analysis.ps1
```

工具版本、网络受限时的安装方式及验证边界见 [tools/README.md](tools/README.md)。

## 目录与目标完成情况

| 目录 | 内容 |
| --- | --- |
| `docs/` | 分析结论、函数索引、调用链、协议与 native 专题 |
| `docs/evidence/` | 样本和依赖哈希、Manifest、JNI/重定位证据 |
| `src-extract/connection/` | Java 生命周期与状态回调摘录 |
| `src-extract/control/` | 编码、线程、输入调用、Smali 与 UI 资源证据 |
| `src-extract/native/` | 含原始指令字节与 ELF 地址的汇编摘录 |
| `tools/` | 锁定依赖安装、静态分析及证据重建脚本 |
| `rebuild/` | 可编译的完整 APK 工程、业务 Smali、全部资源 XML、构建/签名/校验脚本 |
| `work/` | 完整反编译结果、工具缓存与全库反汇编；不提交 |

原定四项目标均已在静态范围内落实：连接/断开/状态、发送入口及上游编码/UI、依据实际 JNI 引用选择 native 库、按代码位置保存证据并标明局限。实机行为、固件兼容性和真实收发时序仍未验证。
