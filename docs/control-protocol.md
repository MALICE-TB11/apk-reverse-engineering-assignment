# 控制输入、命令编码与周期发送

本页分析 `sample.apk`（SHA-256：`49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`）的 `classes6.dex`。使用 JADX 1.5.6 反编译，保留常量数值与方法调用；对类型恢复异常和容易误读的分支，使用 JADX `JavaClass.getSmali()` / baksmali 3.0.9 复核。没有运行 APK、连接飞行器或发送网络数据。

**静态确定：** 起飞、降落、急停及四轴输入最终修改 `BaseCmd` 的共享字节数组；`BaseCmd.run()` 驱动的循环计算校验字节，再调用 `com.tzh.wifi.utils.Camera.iCmdSend(byte[], int)`。正常控制有 8 字节和 20 字节两种 JNI 输入格式。[native 分析](native-analysis.md) 进一步确认：该缓冲区经复制后，内容和长度原样作为 UDP payload 传给 `sendto`。以下布局不包含 IP / UDP 包头；调用是否成功、设备是否收到仍未动态验证。

## 证据导航

| 编号 | 可提交的原始摘录 | 主要内容 |
| --- | --- | --- |
| P01 | [01-BaseCmd-packet.java.txt](../src-extract/control/01-BaseCmd-packet.java.txt) | 初始化、异或校验、各功能位、四轴字段写入 |
| P02 | [02-BaseCmd-scheduler.java.txt](../src-extract/control/02-BaseCmd-scheduler.java.txt) | 状态字段、短时标志清理、循环、启停与恢复 |
| P03 | [03-input-chain.java.txt](../src-extract/control/03-input-chain.java.txt) | Activity、Presenter、Model、Rudder 的实际调用 |
| P04 | [04-BaseCmd-bytecode.smali](../src-extract/control/04-BaseCmd-bytecode.smali) | 边界字节变换、俯仰微调、20 字节降落位的 DEX 复核 |
| P05 | [05-ui-resources.xml.txt](../src-extract/control/05-ui-resources.xml.txt) | 按钮资源 ID 和 `android:onClick="onClick"` 绑定 |

每份摘录包含样本哈希、原始类或资源路径、工具版本、反编译输出行号。Smali 的 `.line` 是 DEX 内保留的原始源码调试行号，与摘录行号不同。解释使用的方法名保持样本原拼写，例如 `takOneKeyLand`、`Mergency`、`NoHeadModle`。

## 从按钮和摇杆到编码器

起飞按钮在 `res/layout/ly_head_second.xml` 中声明 `btnPlayOneKeyFly`，绑定 Activity 的 `onClick`；资源表将其映射为 `0x7f0a01f0`（十进制 `2131362288`）。降落同理为 `btnPlayOneKeyLand` / `0x7f0a01f1` / `2131362289`。急停按钮是 `btnMengencyStop` / `0x7f0a01e7` / `2131362279`。（P03、P05）

| UI 分支 | Presenter / Model 中间方法 | `BaseCmd` 实际写入方法 |
| --- | --- | --- |
| `PlayActivity.onClick(View)` 起飞分支 | `WiFiPresenter.ICmd_OneKeyFly()` → `WiFiModelImpl.ICmd_OneKeyFly()` | `takeOneKeyFly()` |
| 同方法的降落分支 | `ICmd_OneKeyLand()` → `ICmd_OneKeyLand()` | `takOneKeyLand()` |
| 同方法的急停分支 | `ICmd_OneKeyMergency()` → `ICmd_OneKeyMergency()` | `takeOneKeyMergency()` |

这三个 `BaseCmd` 方法设置命令位和清理计数器，**自身不调用 JNI 发送**。数据要到后台循环进入 `dealWithStart()` 后才提交。`ICmd_Stop()` 则通过 `BaseCmd.stop()` 停止并等待 Java 发送线程，不应与急停命令混为一谈。（P01、P02）

摇杆通过 `PlayActivity.widget_init()` 的 `mRudder.registerListener(this)` 注册监听者。`Rudder.onTouchEvent(MotionEvent)` 调用 `dealWithAccRudder(int,int)` 或 `dealWidhDirRudder(int,int,boolean)`；两者处理坐标后分别通知 `IRudderListener.onAccNotify(int,int)` 和 `onDirNotify(int,int,int)`。（P03；完整类见本地 `work/jadx/sources/com/tzh/wifi/wificam/view/rudder/Rudder.java`）

| 输入链 | 参数在 `BaseCmd` 中的用途 |
| --- | --- |
| `Rudder.dealWithAccRudder` → `PlayActivity.onAccNotify(yaw,power)` → `WiFiPresenter.ICmd_AccNotify((byte)power,(byte)yaw)` → `WiFiModelImpl.ICmd_AccNotify` → `BaseCmd.onAccNotify(byte,byte)` | 第一参数存入 `powerVal` 和动力字段；第二参数经 `dealWithYawValue` 写偏航字段 |
| `Rudder.dealWidhDirRudder` → `PlayActivity.onDirNotify(roll,pitch,rotateAction)` → `WiFiPresenter.ICmd_DirNotify` → `WiFiModelImpl.ICmd_DirNotify` → `BaseCmd.onDirNotify(byte,byte)` | 经 `dealWithRollValue`、`dealWithPitchValue` 写横滚与俯仰字段 |

`onAccNotify` 中的**参数交换**是判定动力/偏航索引的关键证据。Activity 在交换之前还将动力值 `102` 或 `153` 加一。`rotateAction` 为 `1…4` 时，Activity 会把对应横滚或俯仰值改为极值、设置 `ICmd_SetRotate(true)`，并安排 500 ms 后处理消息 `6`；通常路径 `rotateAction == 0` 直接转交两个轴值。（P03）

轴的名称由 `BaseCmd` 方法和字段命名支持，摇杆坐标转换也相符；飞行器实际转动方向、推力映射和控制响应没有实机验证。Rudder 内存在 Java 有符号 byte 运算，不能只根据 `128` 中点注释概括全部边界行为。

## JNI 输入字节布局

以下偏移从 0 开始，字节显示为无符号十六进制。`sendType` 初始值为 `0`；`WiFiModelImpl.ICameraType(int)` 将收到的类型交给 `BaseCmd.setCameraType(int)`。`0`、`1` 走短格式，`2` 走长格式；类型编号的设备含义应与 native 类型检测分析一起阅读。（P01、P02、P03）

### `sendType == 0` 或 `1`：8 字节 `cmdData`

| 偏移 | 初始值 | 静态确定的用途 |
| --- | --- | --- |
| 0 | `66` | 固定起始字节 |
| 1 | `80` | `dealWithRollValue` 的返回值 |
| 2 | `80` | `dealWithPitchValue` 的返回值 |
| 3 | `00` | `onAccNotify` 第一参数 / 动力 |
| 4 | `80` | `dealWithYawValue` 的返回值 |
| 5 | `00` | 功能位 |
| 6 | `80` | 对偏移 `1…5` 异或，再应用特殊值变换 |
| 7 | `99` | 固定结束字节 |

初始化值对应 `66 80 80 00 80 00 80 99`。这是根据初始化代码计算的缓冲区，非抓包样本。（P01）

### `sendType == 2`：20 字节 `cmdNewData`

| 偏移 | 初始值 | 静态确定的用途 |
| --- | --- | --- |
| 0 | `66` | 固定起始字节 |
| 1 | `14` | 固定写入十进制 `20`；很可能表示长度，协议语义未单独验证 |
| 2、3 | 各 `80` | 横滚、俯仰处理结果 |
| 4 | `00` | 动力 |
| 5 | `80` | 偏航处理结果 |
| 6、7 | 各 `00` | 功能位 |
| 8…17 | 各 `00` | 初始化为零；本类未见其他赋值，不能据此定义外部协议用途 |
| 18 | `80` | 对偏移 `2…17` 异或，再应用特殊值变换 |
| 19 | `99` | 固定结束字节 |

（P01）

### 功能位与清理

| 方法 / 代码所表达功能 | 8 字节格式 | 20 字节格式 |
| --- | --- | --- |
| `takeOneKeyFly()` 起飞 | `[5] |= 0x01` | `[6] |= 0x01` |
| `takOneKeyLand()` 降落 | `[5] |= 0x02` | **`[6] |= 0x01`** |
| `takeOneKeyMergency()` 急停 | `[5] |= 0x04` | `[6] |= 0x02` |
| `setCheckOutFlg()` 校准按钮对应动作 | `[5] |= 0x80` | `[6] |= 0x04` |
| `setRotate(boolean)` 翻滚动作开关 | `[5]` 的 `0x08` 位 | `[6]` 的 `0x08` 位 |
| `setNoHeadModle(boolean)` 无头模式 | `[5]` 的 `0x10` 位 | `[7]` 的 `0x01` 位 |
| `setStayHigh(boolean)` 定高模式 | 此格式分支直接返回 | `[7]` 的 `0x02` 位 |

**20 字节格式中起飞和降落设置同一位是样本的实际实现。** Smali 的 `takOneKeyLand()V` 明确对 `cmdNewData[6]` 执行 OR `1`，不是将反编译常量抄错。尚不能判定这是一键切换设计、设备状态约定或程序缺陷。（P01、P04）

起飞、降落、急停、校准都有单独的触发标志和计数器。每次 `dealWithStart()` 在发送前调用四个 `clear*` 方法：短格式在计数器 `> 20` 时清除相应位，长格式在 `> 50` 时清除。在单次触发、无并发修改且格式保持不变的简化条件下，这意味着该位经过 21 / 51 次循环后，在下一次循环发送前清掉。它不是 ACK 驱动的重试机制，也不能保证真实发送次数或精确持续时间。（P02）

## 校验、数值调整与反编译局限

`IBaseCmd_Odd()`、`IBaseCmdNew_odd()` 和 `ISnapCmd_Odd()` 实施逐字节 XOR。最后调用 `IBaseCmd_RightData(byte)`：将 byte 视为无符号 `0…255`，若结果为 `0x66` 则改为 `0x67`，若为 `0x99` 则改为 `0x9A`，其余保持不变。这个算法不是 CRC；命名中的 `Odd` 也不能作为奇偶校验的依据。（P01、P04）

相同的 `RightData` 方法还用于三轴微调的最终输出。它对保留值直接加一，**不是插入额外转义字节**，不会增加 Java 缓冲区长度。也不能把它扩大解释为对整个报文执行的统一转义：功能位写入并未经过该函数。（P01）

`dealWithPitchValue(byte)` 的结构化 Java 输出出现局部变量在部分分支未赋值的现象；原始 Smali 则显示各分支在 `:cond_1b` / `:goto_1c` 汇合，对处理后的 `p1` 执行 `int-to-byte` 再调用 `RightData`。因此没有把有瑕疵的伪 Java 当作可编译代码，也没有将它报告为 APK 会发生未初始化变量错误。（P04）

`setTune(byte,byte,byte)` 以 `-1` 为“不更新”标记，使用 `if / else if / else if`，一次最多更新一个微调量。不要把它概括成一次同时写入三轴微调。正常滑条调用分别传两个 `-1`；Model 构造时则一次传入三个配置值，这个差异可留作进一步行为验证。（P01；原始 `WiFiModelImpl` 构造器与 `PlayActivity.onSliderNotify`）

## 循环、恢复与退出

| 状态 / 方法 | 实际行为 | 时间结论的边界 |
| --- | --- | --- |
| `start()` | `state = 1`；线程不存在或已结束时启动线程 | 启动的是 Java 命令循环 |
| `run()` → `dealWithStart()` | 清短时位，计算校验，调用 `Camera.iCmdSend(array,array.length)` | 短格式每轮 `Thread.sleep(40)`；长格式每轮 `Thread.sleep(47)` |
| `resume()` | `state = 0`；重置短时触发标志；初始化 `snapData`；`resumeCount = 25`；必要时启动线程 | 此处 `resume` 是样本自己的状态命名，仍有数据发送 |
| `run()` → `dealWithResume()` | 计数 `>=25` 时发送 `snapData` 并归零，否则计数加一；每轮睡眠 30 ms | 初次发送立即满足条件；此后相隔 26 轮，忽略开销约 780 ms |
| `stop()` | `bRunning = false`；对 `mDataThread.join()` 并清引用 | 结束命令线程，本方法不生成急停包 |

`snapData` 是 8 字节 `AA 80 80 00 80 00 80 55`，校验仍对偏移 `1…5` XOR 后应用 `RightData`。其低频重复发送符合保活类行为，但“保活”只是用途推断；字段名 `snapData` 也不足以证明这是拍照命令。（P01、P02）

40 / 47 / 30 ms 都是代码中的睡眠参数。实际频率还受 JNI 调用、日志、线程调度与异常影响，不能写成“已测得固定 25 Hz”或“抓包每 40 ms 一包”。`dealWithStart()` 没有消费 `iCmdSend` 的返回值，当前 Java 链中也未见针对这些飞行控制帧的 ACK 判断。（P02）

`PlayActivity.onResume()` 根据 `bLockClick` 选择 `ICmd_Start()` 或 `ICmd_Resume()`，随后 `attachView()`；`onDestroy()` 调用 `disattachView()` 和 `ICmd_Stop()`。这里把 Activity 生命周期、Java 命令线程和 JNI/native 连接生命周期区分开来；底层实际 socket 发送、地址与封装见 [native 分析](native-analysis.md)。（P03）

## 仍未验证

- 这些字段布局在不同设备和固件上的兼容性；已解析的 native 发送链不改写 payload，并不等于所有设备都接受这些指令。
- 飞行器对起飞/降落共享位、校准、无头、定高和翻滚的实际解释，以及反馈、拒绝或状态前提。
- 并发修改共享数组时的一致性、切换类型时的状态继承，以及断网重连后的命令处理。
- 精确频率、真实帧时序、设备响应、丢包和重传行为；本次只有静态证据。
