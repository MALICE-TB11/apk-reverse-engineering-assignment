# Native 通信与 JNI 证据

本页针对 `sample.apk` 的 `arm64-v8a/libCamera.so` 与 `libmain.so` 做静态分析。已确认本应用的 `Camera.iCmdSend(byte[], int)` 经动态 JNI 注册进入 `libCamera.so`，最终调用 UDP `sendto`。以下地址均为 ELF 虚拟地址偏移，加载基址按 0 表示；并非文件偏移或实际设备运行地址。没有运行 APK、加载样本 `.so` 或向设备发送数据。

## 样本与工具

APK SHA-256：`49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`。

| 库 | 字节数 | SHA-256 |
| --- | ---: | --- |
| `lib/arm64-v8a/libCamera.so` | 435,056 | `e001492721af2cd8e089440a5752f320a2441ca07584be92ae0b28ff53cae928` |
| `lib/arm64-v8a/libmain.so` | 1,561,544 | `5a8988a7c64b8cfd9a8b63d56337e0e0689f48b7b2d23e1438fb1687792db301` |

工具为 Python 3.10、GNU readelf 2.45.1、Capstone 5.0.6、pyelftools 0.32；Java 引用来自 JADX 1.5.6。脚本 [analyze-native.py](../tools/analyze-native.py) 解析动态符号、RELA 重定位和 AArch64 指令，并对本报告使用的 PLT 跳板检查其实际 GOT 槽与重定位目标。脚本生成的完整调用边文件仅作搜索辅助：未命名函数、间接调用和函数范围仍需人工核实，不能将自动扫描结果全部视为已验证调用链。

## Java 与 JNI 对应关系

`com.tzh.wifi.utils.Camera` 类初始化的原始 JADX 第 109 行调用 `System.loadLibrary("Camera")`，第 80 行声明 `static native int iCmdSend(byte[], int)`。证据见 [Camera Java 摘录](../src-extract/connection/C06-Camera.md)。该库既有 6 个 `Java_com_tzh_wifi_utils_Camera_*` 命名导出，也有动态注册方法，不能只搜索导出函数名判断 native 方法是否存在。

`JNI_OnLoad @ 0x39920` 的关键操作见 [JNI 指令摘录](../src-extract/native/jni-control.asm)：

1. `0x399b4` 从 GOT `0x6c958` 取 `Mate9_Cooker_Class_Name @ 0x71720`；该指针经 `R_AARCH64_RELATIVE` 指向 `0x1decd` 的 `com/tzh/wifi/utils/Camera`。
2. `0x399c4–0x399c8` 从 JNIEnv 表偏移 `0x30` 调用 `FindClass`。
3. `0x399dc` 将方法表 `0x71728` 传入 `x2`；`0x399e4` 将数量 `0x16`（22）传入 `w3`。
4. `0x399e8–0x399ec` 从 JNIEnv 表偏移 `0x6b8` 调用 `RegisterNatives`。

64 位函数指针宽度为 8 字节，`FindClass` 的索引 6 对应 `0x30`，`RegisterNatives` 的索引 215 对应 `0x6b8`。同样，下面使用的 `GetByteArrayElements` 索引 184、`ReleaseByteArrayElements` 索引 192，分别对应 `0x5c0`、`0x600`；回调解析使用 `GetStaticMethodID` 索引 113，对应 `0x388`。槽位根据 [Oracle JNI 函数规范](https://docs.oracle.com/en/java/javase/17/docs/specs/jni/functions.html) 核对。

本次重点方法如下；完整 22 项及原始重定位记录保存在 [JNI/重定位证据](evidence/native-jni-and-relocations.json)。

| Java native 方法 | JNI 签名 | 表项地址 | native 实现地址 | 已验证行为 |
| --- | --- | --- | --- | --- |
| `iCameraInit` | `()I` | `0x71728` | `0x39a78` | 保存 JNI 类引用并构造 `Socket` 等对象 |
| `iCameraDeinit` | `()V` | `0x71740` | `0x39b58` | 调用 `Socket::disconnect`，随后释放对象 |
| `iCameraStart` | `()I` | `0x71758` | `0x39c5c` | 对象存在时调用 `Socket::connect` |
| `iCameraStop` | `()V` | `0x71770` | `0x39c8c` | 对象存在时跳转到 `Socket::disconnect` |
| `iCmdStart` | `()I` | `0x71800` | `0x39e84` | 仅返回 0 |
| `iCameraRoate`（原拼写） | `()I` | `0x71818` | `0x39e8c` | 调用 `Socket::writeRotateCmd` |
| `iCameraSwitch` | `()I` | `0x71830` | `0x39eb4` | 调用 `Socket::writeCameraSwitch` |
| `iCmdSend` | `([BI)I` | `0x71848` | `0x39edc` | 复制 Java 字节数组并调用 `Socket::sendCmd` |
| `iCmdResume` | `()V` | `0x71860` | `0x39f90` | 无发送或恢复操作，写入返回寄存器后返回 |
| `iCmdStop` | `()V` | `0x71878` | `0x39f98` | 直接返回 |

另有 `iCameraSetMode(int)` Java 声明，但未在本库的动态注册表或命名导出中找到对应实现；本报告不将其 JNI 绑定视为已解析。

## 实际发送入口

已验证的调用边为：

```text
Camera.iCmdSend(byte[], int)
  -- RegisterNatives 表项 0x71848 --> libCamera.so:0x39edc
  -- BL @ 0x39f50 --> PLT 0x63e10
  -- GOT 0x6cf00 --> Socket::sendCmd(unsigned char*, int) @ 0x33f24
  -- BL @ 0x33f80 --> PLT 0x63d50
  -- GOT 0x6cea0 / R_AARCH64_JUMP_SLOT --> libc sendto
```

`iCmdSend @ 0x39edc` 保留调用者传入的长度，通过 JNIEnv `GetByteArrayElements` 取得数组，`malloc(length)` 后 `memcpy`。当全局 `mSocket` 非空时把复制缓冲区及原始长度交给 `Socket::sendCmd`，随后释放 Java 数组元素和本地缓冲区。这条路径没有附加协议头、加密或重写 payload；协议字节由 Java 层提供。其返回值在 `0x39f78` 被固定写成 0，因此该返回值不能证明发送成功。

`Socket::sendCmd @ 0x33f24` 从 GOT `0x6c788 → cmdSocket @ 0x72d90` 取结构，检查 `cmdSocket + 0xa8` 的文件描述符是否为负。有效时调用：

```c
// 根据 AArch64 参数寄存器重建的说明性伪代码，非恢复出的原始源码。
sendto(cmdSocket.fd, caller_bytes, caller_length, 0,
       &cmdSocket.sockaddr /* +0x10 */, 16);
```

证据见 [Socket 指令摘录](../src-extract/native/socket-control.asm) 的 `0x33f24–0x33fb0`。`Socket::sendData @ 0x33474` 也调用 `sendto`，但其结构为 `udpSocket`；本报告没有把 `iCmdSend` 错接到名称相近的 `sendData`。

## 建立、断开与初始地址

`iCameraStart` 在 `0x39c74` 调用 `Socket::connect @ 0x334cc`。这里的 `connect` 是 C++ 方法名；其实现创建线程，而非调用 libc `connect`：

| 调用点 | pthread 入口参数来源 | 入口函数 |
| --- | --- | --- |
| `0x33504` | `x2 ← GOT 0x6c7a0` | `udpSocketEnterance @ 0x33540` |
| `0x33520` | `x2 ← GOT 0x6c7b0` | `cmdSocketEnterance @ 0x33b90` |

`udpSocketEnterance` 同时初始化两个 socket 结构。以下均由实际 `inet_addr` 调用、结构写入和 `socket` 参数确定，不是只凭字符串猜测：

| 结构 | 初始目标 IP | 初始端口 | 地址赋值及创建位置 |
| --- | --- | ---: | --- |
| `udpSocket @ 0x72ce0` | `192.168.4.153` | 8080 | `0x33630–0x33678` |
| `cmdSocket @ 0x72d90` | `192.168.4.153` | 8090 | `0x336b8–0x33700` |

两处 `socket` 调用分别在 `0x33670` 和 `0x336f8`，参数寄存器都是 `(w0,w1,w2)=(2,2,17)`，即 IPv4 UDP 数据报。`sockaddr` 前四字节分别被写为 `02 00 1f 90` 与 `02 00 1f 9a`：前两字节表示 `AF_INET`，端口按网络字节序分别为 `0x1f90 = 8080`、`0x1f9a = 8090`。

这里必须保留“初始”限定：后续 `recvfrom` 也把同一结构的 `+0x10` 地址缓冲区作为源地址输出。因此收到包后，结构中的地址存在被其来源覆盖的路径；仅靠静态分析不能断言每一次 `sendto` 的目的地址永久不变，也不能断言该 IP 就是本次环境中的设备地址。

`Socket::disconnect @ 0x33340` 只通过 GOT `0x6c790` 把 `bRunning @ 0x72cd8` 清零；它没有直接关闭 socket。线程退出路径、`destroy` 和析构存在后续 `close` 调用。`iCameraStop` 应描述为请求停止 native 线程，不能描述成“该方法同步完成所有断开清理”。

## 状态检测与回调

`C_Method::registerMethod @ 0x32d10` 通过 `GetStaticMethodID` 取得 `OnWiFiStateChange(I)V`，把 method ID 保存到对象 `+0x30`。`C_Method::onNotifyWiFiState @ 0x330f4` 取同一槽位并通过 `CallStaticVoidMethod` 回调 Java。所用名称字符串 `0x1de62`、签名字符串 `0x1edb1` 及回调指令见 [状态回调摘录](../src-extract/native/state-callback.asm) 和 JSON 证据。

`udpSocketEnterance` 用 `select` 和 `recvfrom` 等待视频数据。`recvfrom` 返回至少 1 字节且内部状态需要更新时，`0x337f4` 设置回调参数 1，`0x337fc` 调用 `onNotifyWiFiState`。等待/接收失败累计路径在 `0x3389c` 检查计数，达到代码阈值后 `0x338c8` 设置参数 0、`0x338cc` 调用同一回调。此处是程序对数据接收情况的判定，不能推广成操作系统 Wi-Fi 关联状态或设备对所有控制命令的确认。

Java `Camera.OnWiFiStateChange(int)` 再执行 `sendMessage(1, state)`，其 Handler 的分支向 `INativeListener.IWiFiConState(state)` 转发。该边已在 [Java 摘录](../src-extract/connection/C06-Camera.md) 中核对。

## 镜头固定命令与库筛选

ELF 数据符号给出了以下两字节常量，证据中保存符号地址与实际字节：

| 原符号 | 地址 | 字节 |
| --- | --- | --- |
| `startCmd` | `0x71550` | `42 76` |
| `stopCmd` | `0x71552` | `42 77` |
| `rotateCmd` | `0x71554` | `42 78` |
| `switchCmd` | `0x71556` | `42 79` |

`iCameraRoate → Socket::writeRotateCmd @ 0x33e1c → sendto @ 0x33e74`，`iCameraSwitch → Socket::writeCameraSwitch @ 0x33ea0 → sendto @ 0x33ef8` 均已按指令确认。这两条固定命令使用 `udpSocket` 地址，不能与 `iCmdSend` 经 `cmdSocket` 发送的 Java 飞行控制帧混为同一编码路径。

对照库 `libmain.so` 的 7 个 `Java_*` 导出都属于 `com.hmx.recognition.OpenCVHelper`（灰度、全景、手势相关命名）；本次核查的动态导入集合中没有 `socket/send/sendto/recvfrom`。这支持优先深入 `libCamera.so`，但不证明 `libmain.so` 绝无间接网络行为。原始列表见 [libCamera 符号摘要](evidence/native-libCamera.so.json) 和 [libmain 符号摘要](evidence/native-libmain.so.json)。

## 复现

在仓库根目录安装固定版本依赖并运行脚本。脚本首先校验 `sample.apk` 的 SHA-256，再校验并提取两个库，避免沿用旧 `work/native` 结果。完整二进制与反汇编放入被 Git 忽略的 `work/`：

```powershell
python -m pip install --target work/tools/native-deps capstone==5.0.6 pyelftools==0.32
python tools/analyze-native.py
```

本脚本不联网，也不读取本地 JADX 输出；Java 证据由主流程的 `tools/extract_evidence.py` 产生并保存在 [C06](../src-extract/connection/C06-Camera.md)。native JSON 与汇编使用固定 LF 换行，除样本和固定版本依赖外不取决于时间、工作目录或机器配置。

本次因默认 PyPI 连接超时，通过清华 PyPI 镜像下载对应 wheel，逐个核对镜像索引提供的 SHA-256 后解包至 `work/tools/native-deps`，未执行样本 native 代码。wheel SHA-256 为 Capstone `761c3deae00b22ac697081cdae1383bb90659dd0d79387a09cf5bdbb22b17064`、pyelftools `013df952a006db5e138b1edf6d8a68ecc50630adbd0d83a2d41e7f846163d738`。

脚本验证了所用 PLT 跳板、22 项注册表数量及 `iCmdSend` 表项地址，生成可提交 JSON/汇编摘录。完整 `.so`、工具依赖及全库反汇编不作为报告附件提交。静态可达不等于本次实际执行；协议响应、飞行动作效果、真实线程退出时序仍需后续受控动态观察验证。
