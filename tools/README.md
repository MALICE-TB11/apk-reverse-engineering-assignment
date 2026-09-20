# 工具与复现步骤

## 环境记录

| 工具 | 实际版本 | 用途 |
| --- | --- | --- |
| Git / Git LFS | 待填写 | 获取仓库及完整 APK |
| JADX | 待填写 | Java/Kotlin 反编译与调用关系查找 |
| JDK | 待填写 | 根据所选工具版本要求配置 |
| Ghidra（按需） | 待填写 | 分析已定位的 JNI / native 实现 |

工具入口：[JADX](https://github.com/skylot/jadx)、[Ghidra](https://github.com/NationalSecurityAgency/ghidra)。安装要求以所选版本的官方说明为准。

## 首轮分析

1. 校验 `sample.apk` 的 SHA-256。
2. 用 JADX GUI 打开 APK，记录 Manifest 中的包名、版本、入口和权限。
3. 搜索 `DatagramSocket`、`Socket`、`writeCharacteristic`、`send`、`write`，检查实际调用代码。
4. 从发送点向上追踪 byte[] 的来源、协议编码和 UI 输入；排除日志、统计、下载等无关通信。
5. 搜索 `System.loadLibrary` 和 native 方法，记录 Java 与 native 的对应关系。
6. 必要时在 Ghidra 中导入相应 `.so`，记录导出符号、JNI 注册与交叉引用。
7. 将证据和已确认调用关系填写到 `docs/`，将关键摘录保存到 `src-extract/`。

## 文件约定

将完整反编译输出、解包结果、工具缓存及 Ghidra 工程放在 `work/` 下。只提交报告、证据和必要摘录。尚未完成的步骤如实保留“待填写”。
