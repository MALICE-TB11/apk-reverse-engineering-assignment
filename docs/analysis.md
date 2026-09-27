# WiFi_CAM 通信与控制静态分析

分析日期：2026-09-26 至 2026-09-27。已完成本样本连接、发送、控制编码和 JNI 主链路的静态定位；未安装 APK、连接飞行器或发送控制数据。

## 1. 结论

实际控制链是 `PlayActivity / Rudder → WiFiPresenter → WiFiModelImpl → BaseCmd → Camera.iCmdSend(byte[], int) → libCamera.so → Socket::sendCmd → sendto`。控制帧在 Java 层生成，native 层通过 UDP 发送。连接创建、接收线程和状态上报也位于 `libCamera.so`。这些结论由 Java 方法体、JNI 注册表和 AArch64 指令共同支持。[调用边](call-chain.md)、[控制证据](control-protocol.md)、[native 证据](native-analysis.md)

初始化目的地址为 `192.168.4.153`，图像通道端口为 `8080`，命令通道端口为 `8090`。`recvfrom` 使用同一地址结构保存来源地址，后续发送的目的地址可能被覆盖，因此只能认定初始化配置。[native 分析](native-analysis.md)

`sendType=0/1` 使用 8 字节控制帧，`sendType=2` 使用 20 字节；另有 `resume` 状态的 8 字节帧。8 字节控制帧能区分起飞与降落，20 字节分支中二者均置同一位，已用 DEX smali 核对。设备如何解释该行为尚未验证。[协议分析](control-protocol.md)

## 2. 样本与环境

| 项目 | 实测结果 |
| --- | --- |
| APK | `sample.apk`，112,446,698 字节 |
| SHA-256 | `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0` |
| 应用名 / 包名 | `WiFi_CAM` / `com.tzh.wifi.wificam.activity` |
| 版本 | `6.0.7`，versionCode `20250905` |
| SDK 声明 | minSdk 21，targetSdk 35，compileSdk 34 |
| Application | `com.tzh.wifi.wificam.WiFiApp` |
| Launcher Activity | `com.tzh.wifi.wificam.activity.SplashActivity` |
| DEX | 7 个，均为 DEX 035；合计 47,156 个 class_defs |
| Native | 43 个 `.so`，全部 `arm64-v8a`、ELF64 小端 |
| 校验 | ZIP 3758 项 CRC 通过；DEX 内部长度、Adler32、SHA-1 通过 |
| 签名 | 存在 v1 文件和 v2 signing block；未验证证书身份或签名真实性 |
| 工具 | Windows、JADX 1.5.6、Temurin JDK 25.0.4+7、Python 3.10.11、GNU readelf 2.45.1、Capstone 5.0.6、pyelftools 0.32 |

证据：[样本清单](evidence/sample-inventory.json)、[Manifest 摘要](evidence/manifest-summary.json)、[解码 Manifest](evidence/AndroidManifest.xml)。`classes2.dex` 只有一个类，但此处不据此推断加固。工具安装和复现见 [tools/README](../tools/README.md)。

## 3. 入口与分析范围

Manifest 声明网络访问与 Wi-Fi 相关权限；权限仅作为线索，UDP 结论来自实际 `socket(2,2,17)`、`sendto` 和 `recvfrom`。Service 完整清单见 Manifest 摘要，其中没有 `com.tzh` 命名的 Service 声明；本报告的连接路径来自 Application、Activity、Java 线程和 native pthread。

用完整 APK 建立 JADX 上下文，仅导出 `com.tzh.*` 和 `com.hmx.*` 应用包及资源。第三方广告和下载 SDK 的请求未计入飞行控制链路；没有对所有第三方 SDK 或其余 native 库进行完整审计。

## 4. 连接建立、停止与状态

1. `WiFiApp.onCreate()` 调用 `Camera.iCameraInit()`，native 构造通信对象；实际 `socket` 创建位于后续接收线程。`WiFiPresenter` 构造 `WiFiModelImpl`，后者把自己作为 `INativeListener` 传给 `Camera`。[C01](../src-extract/connection/C01-WiFiApp.md)、[C03](../src-extract/connection/C03-WiFiPresenter.md)、[C04](../src-extract/connection/C04-WiFiModelImpl.md)
2. `PlayActivity.onResume()` 根据 `bLockClick` 选择 `ICmd_Start()` 或 `ICmd_Resume()`，随后 `attachView(this)`。`attachView` 经继承的 `BaseModel.iCameraStart()` 调用 JNI；native `Socket::connect()` 启动图像和命令线程。该名称不表示 TCP 握手或已经收到设备应答。[C02](../src-extract/connection/C02-PlayActivity.md)、[C03](../src-extract/connection/C03-WiFiPresenter.md)、[C05](../src-extract/connection/C05-BaseModel.md)
3. `PlayActivity.onDestroy()` 调用 `disattachView()` 和 `ICmd_Stop()`。前者清除视图/数据监听并调用 `Camera.iCameraStop()`；后者停止 `BaseCmd` 工作线程并 `join()`。native `disconnect()` 修改运行标志，socket 关闭在退出/销毁路径，不能描述为在 JNI 调用点同步完成全部关闭。此样本的 `onPause()` 只调用父类。[C02](../src-extract/connection/C02-PlayActivity.md)、[native 分析](native-analysis.md)
4. native 回调 `Camera.OnWiFiStateChange(int)`，它发送 `Message.arg1=1`；Handler 转发到 `INativeListener.IWiFiConState(int)`。`WiFiModelImpl` 将 0/1 分别映射到 `disconnected()`/`connected()`，经 presenter 更新界面状态。[C06](../src-extract/connection/C06-Camera.md)、[C04](../src-extract/connection/C04-WiFiModelImpl.md)、[C03](../src-extract/connection/C03-WiFiPresenter.md)

连接状态并非飞控执行回执：图像接收路径可以上报连接，`PlayActivity.reciveBitmap(...)` 本身也直接把 `bWiFiConnect` 置为 true。不能用界面的“连接”状态证明控制指令被执行。[C02](../src-extract/connection/C02-PlayActivity.md)

## 5. 控制与协议

| 功能 | 已定位入口 / 编码 | 证实范围 |
| --- | --- | --- |
| 起飞 | `BaseCmd.takeOneKeyFly()` | 0/1 型：byte[5] bit0；2 型：byte[6] bit0 |
| 降落 | `BaseCmd.takOneKeyLand()` | 0/1 型：byte[5] bit1；2 型：byte[6] bit0，与起飞相同 |
| 紧急停止 | `BaseCmd.takeOneKeyMergency()` | 0/1 型：byte[5] bit2；2 型：byte[6] bit1 |
| 四轴输入 | `onAccNotify(byte,byte)`、`onDirNotify(byte,byte)` | 已追踪 UI 参数交换、缩放、微调与字节槽位 |
| 编码与发送 | `dealWithStart()` → `Camera.iCmdSend(byte[],int)` | 校验为 XOR，另有保留值修正；不是 CRC |
| 调度 | `start()/resume()/run()/stop()` | 0/1 型每轮 sleep 40ms，2 型 47ms；不是实时周期保证 |
| 类型选择 | `Camera.OnCameraType(int)` → `WiFiModelImpl.ICameraType(int)` → `BaseCmd.setCameraType(int)` | 类型来自 native 回调，不能认定所有硬件使用同一格式 |

完整字段、校验范围、标志自动清理和 smali 交叉核验见 [control-protocol.md](control-protocol.md)。字节按无符号八位解释，Java 的 `-128` 对应 `0x80`。单字节字段没有多字节字节序问题；native 端口从实际 `sockaddr_in` 字节按网络字节序解释。

## 6. JNI 与传输

`Camera.<clinit>` 明确加载 `Camera` 库。`libCamera.so` 的 `JNI_OnLoad` 动态注册 22 个 Camera 方法；`iCmdSend([BI)I` 映射到 ELF 虚拟地址 `0x39edc`，调用 `Socket::sendCmd(unsigned char*,int)`（`0x33f24`），再调用导入的 `sendto`。这些是本 arm64 ELF 的静态虚拟地址，运行时需考虑装载基址。[C06](../src-extract/connection/C06-Camera.md)、[JNI 与指令证据](native-analysis.md)

`iCmdSend` 最终固定返回 0，未向 Java 传播 `sendto` 结果。因此其返回值不能作为成功依据。`iCmdStart/iCmdResume/iCmdStop` 的 native 实现为空；实际周期发送由 `BaseCmd` 自己的 Java 线程承担。

`libmain.so` 的 7 个 JNI 命名导出均属于 `OpenCVHelper`，没有出现在本次控制发送主链中。`Camera.iCameraSetMode(int)` 有 Java 声明，但在本库核对的动态表和命名导出中未找到匹配，保留未解析状态。

## 7. 证据强度与局限

- **已证实的静态事实**：样本身份、Manifest、Java 调用边、线程与 Handler、JNI 注册、UDP 初始化、发送入口、帧字段与位操作。
- **有限推断**：通道分工来自实际处理逻辑；“起飞”“降落”等含义由 UI 资源与方法链支持，设备真实动作未观察。
- **未验证**：硬件型号、设备是否接受帧、真实目的端与周期、丢包/重连表现、并发触发时序、20 字节起降共用位的设备语义。
- **反编译局限**：JADX 报告 0 errors，但有复杂 try 和 31 个未知类引用警告；这不保证源码正确或可编译。关键控制异常已用 smali 检查，native 结论保留地址与指令证据。

没有制作运行截图或抓包，也没有声称完成动态验证。当前交付是一份可复查、可重建证据的静态分析作业。
