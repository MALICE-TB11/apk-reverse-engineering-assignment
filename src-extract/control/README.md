# 控制层证据

这些文件是 [控制与协议分析](../../docs/control-protocol.md) 的 P01–P05 证据，不是可编译 Android 工程。完整来源为 APK 中的 `classes6.dex`，每份文件写明 SHA-256、原始类和方法、工具版本及行号。

`01`、`02`、`03` 保留 JADX 的原始方法文本和选区；补充解释放在报告中。`04` 保留 Smali，以核查结构化 Java 的类型恢复问题；`05` 是 Android 资源解码片段。按同一工具选项生成 `work/jadx` 后可重建：

```powershell
# 在仓库根目录运行；先按 tools/README.md 完成 JADX bootstrap 和 Decompile.java。
$env:JADX_CONFIG_DIR = Join-Path (Get-Location) 'work/control/config'
$env:JADX_CACHE_DIR = Join-Path (Get-Location) 'work/control/cache'
$env:JADX_TMP_DIR = Join-Path (Get-Location) 'work/control/tmp'
java -Xmx3G -cp 'work/tools/jadx-maven/lib/*' tools/ExtractControlSmali.java
python tools/extract_control_evidence.py
```

[ExtractControlSmali.java](../../tools/ExtractControlSmali.java) 读取 APK 并输出三个控制相关类的 Smali 到 `work/control`。[extract_control_evidence.py](../../tools/extract_control_evidence.py) 按方法名和固定选区自动重建这五份证据。固定选区针对本样本及 JADX 1.5.6，若 APK 或反编译选项变化，必须重新检查选区，不可直接套用结论。

Python 摘录脚本以自身位置定位仓库，在任何写入前校验 `sample.apk` 的固定 SHA-256；不匹配时退出。五份产物统一使用 UTF-8 和 LF 换行。

这些命令只解析本地文件，不执行 APK 或 `.so`，也不发送控制数据。
