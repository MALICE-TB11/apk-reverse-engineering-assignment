# Android 飞行器控制 APK 通信与控制函数逆向分析

本仓库用于记录课程作业的样本信息、静态分析过程、关键函数证据和调用链。

**当前状态：已记录样本文件信息，尚未完成连接与控制函数定位。本文中的分析目标不代表已经验证的结论。**

## 样本信息

| 项目 | 内容 |
| --- | --- |
| 文件 | `sample.apk`（仓库根目录，Git LFS 管理） |
| 文件大小 | 112,446,698 字节，约 107.24 MiB |
| SHA-256 | `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0` |
| DEX 文件 | 7 个 |
| Native 库 | `lib/arm64-v8a/` 下 43 个 `.so` |
| 包名 / 版本 | 待从 AndroidManifest.xml 提取 |

以上文件信息来自本地 APK 的哈希计算和 ZIP 目录检查；尚未分析 native 库的实际用途。

## 获取样本

安装 Git 和 Git LFS 后执行：

```powershell
git lfs install
git clone https://github.com/seeingly520-cpu/apk-reverse-engineering-assignment.git
cd apk-reverse-engineering-assignment
git lfs pull
Get-FileHash .\sample.apk -Algorithm SHA256
```

哈希应与上表一致。仅获取 LFS 指针文件无法进行 APK 分析。

## 阅读顺序

1. [工具与复现步骤](tools/README.md)
2. [分析报告](docs/analysis.md)
3. [关键函数索引](docs/functions.md)
4. [调用链与证据](docs/call-chain.md)
5. [源码摘录规范](src-extract/README.md)

## 目录

```text
sample.apk               原始样本，保持现有位置
docs/analysis.md          样本、方法、结论及局限
docs/functions.md         已定位函数及判断依据
docs/call-chain.md        逐条验证的调用关系
docs/screenshots/         支撑结论的截图
src-extract/              少量关键代码摘录及原始位置
tools/README.md           工具版本与复现方法
work/                    本地完整反编译结果，不提交
```

## 分析目标

- 定位连接建立、断开及状态检测逻辑。
- 定位实际数据发送入口，并向上追踪协议编码及 UI 调用者。
- 根据 Java/Kotlin 到 JNI 的实际引用关系，决定需要分析的 native 库。
- 区分已证实的行为、合理推断和未验证假设；为结论提供代码位置或截图。
