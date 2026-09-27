# 关键源码与指令摘录

这些是逆向分析证据，不是可编译的 Android 项目，也不是重建后的飞控客户端。

- [connection/](connection/)：C01–C06，带原始 JADX 文件行号；样本哈希、工具配置和来源文件哈希见 [Java 证据索引](../docs/evidence/java-evidence.json)。
- [control/](control/README.md)：P01–P05，编码器、调度、按钮/摇杆调用、Smali 与资源选区。
- [native/](native/)：JNI、Socket、状态回调的 AArch64 指令、原始字节与虚拟地址，说明见 [native 报告](../docs/native-analysis.md)。

保留原始方法名；解释放在报告中。JADX 局部变量名、合成访问器或 Java 别名不等于原始源码名称；Smali `.line` 也不同于反编译输出的文件行号。所有地址与选区仅适用于仓库记录的 APK SHA-256。

完整反编译与全库反汇编保存在 `work/`。提交用摘录可按 [工具说明](../tools/README.md) 重建。本次使用文本、字节码和原始汇编证据，没有生成或伪造工具运行截图。
