# 关键函数索引

所有“高”均指静态代码证据充分，不代表设备验证。Java 类均来自 `classes6.dex`；native 地址均属于本样本 `arm64-v8a/libCamera.so`。保留原拼写；`Socket` 方法以 ELF 原始符号标识，未从符号名臆测返回类型。

证据简称：[C01 初始化](../src-extract/connection/C01-WiFiApp.md)、[C02 界面生命周期](../src-extract/connection/C02-PlayActivity.md)、[C03 Presenter](../src-extract/connection/C03-WiFiPresenter.md)、[C04 Model](../src-extract/connection/C04-WiFiModelImpl.md)、[C05 BaseModel](../src-extract/connection/C05-BaseModel.md)、[C06 Camera](../src-extract/connection/C06-Camera.md)；[P 控制证据索引](control-protocol.md)；[N native 证据索引](native-analysis.md)。

| 编号 | 原始类与签名 / ELF 标识 | 功能与调用关系 | 证据 | 静态可信度 |
| --- | --- | --- | --- | --- |
| F01 | `com.tzh.wifi.wificam.WiFiApp.onCreate(): void` | Application 初始化 → `Camera.iCameraInit()` | C01 | 高 |
| F02 | `com.tzh.wifi.wificam.activity.PlayActivity.onResume(): void` | 选择控制/恢复状态 → `ICmd_Start/Resume`，再 `attachView(this)` | C02 | 高 |
| F03 | `com.tzh.wifi.wificam.presenter.WiFiPresenter.attachView(com.tzh.wifi.wificam.view.base.ICaptureView): void` | 注册数据监听 → `BaseModel.iCameraStart()` | C03、C05 | 高 |
| F04 | `com.tzh.wifi.wificam.activity.PlayActivity.onDestroy(): void` | → `disattachView()`、`ICmd_Stop()` | C02 | 高 |
| F05 | `com.tzh.wifi.wificam.presenter.WiFiPresenter.disattachView(): void` | 清监听 → `BaseModel.iCameraStop()` | C03、C05 | 高 |
| F06 | `com.tzh.wifi.utils.Camera.iCameraInit(): int` | native `()I` → `0x39a78`，构造对象 | C06、N | 高 |
| F07 | `com.tzh.wifi.utils.Camera.iCameraStart(): int` | native `()I` → `0x39c5c` → `Socket::connect()` | C06、N | 高 |
| F08 | `com.tzh.wifi.utils.Camera.iCameraStop(): void` | native `()V` → `0x39c8c` → `Socket::disconnect()` | C06、N | 高 |
| F09 | `_ZN6Socket7connectEv` / `Socket::connect()`，`0x334cc` | 创建 `udpSocketEnterance` 与 `cmdSocketEnterance` 两个 pthread | N | 高 |
| F10 | `_ZN6Socket10disconnectEv` / `Socket::disconnect()`，`0x33340` | 清 `bRunning`，不是同步关闭所有 socket | N | 高 |
| F11 | `com.tzh.wifi.wificam.model.base.BaseCmd.dealWithStart(): void` | 清理短时标志、计算校验 → `Camera.iCmdSend`，sleep 40/47ms | P01、P02 | 高 |
| F12 | `com.tzh.wifi.utils.Camera.iCmdSend(byte[], int): int` | JNI `([BI)I` → `0x39edc` → `Socket::sendCmd`；返回固定 0 | C06、N | 高 |
| F13 | `_ZN6Socket7sendCmdEPhi` / `Socket::sendCmd(unsigned char*, int)`，`0x33f24` | cmdSocket 有效时 → `sendto`；本链真正发送封装 | N | 高 |
| F14 | `com.tzh.wifi.wificam.activity.PlayActivity.onClick(android.view.View): void` | 根据按钮 ID → Presenter 的起飞、降落、急停接口 | P03、P05 | 高 |
| F15 | `com.tzh.wifi.wificam.model.base.BaseCmd.takeOneKeyFly(): void` | Model 调用，置起飞位；由后续工作线程发送 | P01、P03 | 高 |
| F16 | `com.tzh.wifi.wificam.model.base.BaseCmd.takOneKeyLand(): void` | Model 调用，置降落位；2 型与起飞共用 bit0 | P01、P04 | 高 |
| F17 | `com.tzh.wifi.wificam.model.base.BaseCmd.takeOneKeyMergency(): void` | Model 调用，置急停位；不同于停止发送线程 | P01、P03 | 高 |
| F18 | `com.tzh.wifi.wificam.model.base.BaseCmd.onAccNotify(byte, byte): void` | 动力、偏航写入；由 Model 转交 Activity 交换后的参数 | P01、P03 | 高 |
| F19 | `com.tzh.wifi.wificam.model.base.BaseCmd.onDirNotify(byte, byte): void` | 横滚、俯仰微调后写入 | P01、P03、P04 | 高 |
| F20 | `com.tzh.wifi.wificam.model.base.BaseCmd.IBaseCmd_Odd(): byte` | 8 字节帧 XOR：偏移 1…5，再特殊值修正 | P01 | 高 |
| F21 | `com.tzh.wifi.wificam.model.base.BaseCmd.IBaseCmdNew_odd(): byte` | 20 字节帧 XOR：偏移 2…17，再特殊值修正 | P01 | 高 |
| F22 | `com.tzh.wifi.wificam.model.base.BaseCmd.start(): void` / `resume(): void` / `run(): void` / `stop(): void` | 状态 1/0 分发与 Java 线程生命周期；`stop()` 等待线程结束 | P02 | 高 |
| F23 | `com.tzh.wifi.wificam.model.base.BaseCmd.dealWithResume(): void` | 计数控制 snapData 发送，循环 sleep 30ms | P02 | 高 |
| F24 | `com.tzh.wifi.utils.Camera.OnWiFiStateChange(int): void` | native 回调 → `sendMessage(1,Integer)` → Handler | C06、N | 高 |
| F25 | `com.tzh.wifi.wificam.model.WiFiModelImpl.IWiFiConState(int): void` | 0/1 → Presenter `disconnected/connected` → Activity | C04、C03、C02 | 高 |
| F26 | `com.tzh.wifi.wificam.model.WiFiModelImpl.ICameraType(int): void` | → `BaseCmd.setCameraType(int)`，切换编码类型 | C04、P02 | 高 |
| F27 | `com.tzh.wifi.wificam.view.rudder.Rudder.dealWithAccRudder(int,int): void` | 摇杆坐标 → listener `onAccNotify` | P03 | 高 |
| F28 | `com.tzh.wifi.wificam.view.rudder.Rudder.dealWidhDirRudder(int,int,boolean): void` | 摇杆坐标 → listener `onDirNotify` | P03 | 高 |
| U01 | `com.tzh.wifi.utils.Camera.iCameraSetMode(int): int` | Java native 声明存在，本次未解析到 libCamera 的绑定实现 | C06、N | 未解析 |

状态回调的 native 实现为 `C_Method::registerMethod @ 0x32d10` 与 `C_Method::onNotifyWiFiState @ 0x330f4`；接收入口 `udpSocketEnterance @ 0x33540` 调用 `select/recvfrom` 并触发回调。相关汇编、JNI 方法表、PLT/GOT 的逐项定位见 [native-analysis.md](native-analysis.md)。
