# 实际构建验证记录

验证日期：2026-09-27。Windows / Python 3.10.11 / Temurin JDK 25.0.4+7，Apktool 3.0.3、Android Build Tools 35.0.0；工具的精确来源与哈希见 [锁文件](tools.lock.json)。

已从原 APK 首次生成完整工程、完成签名构建；随后验证了已有工程的再次构建，并在 2,478 个受版本控制源文件统一为 LF 后完成最终构建。实际命令：

```powershell
python rebuild/build.py build --offline
python rebuild/build.py --offline
python -m unittest discover -s rebuild/tests -v
```

`--offline` 使用已下载且逐文件验证过哈希的官方工具缓存，不跳过解码、编译或校验。首次全量解码约 32.5 秒；最终 Smali / 资源编译约 42.8 秒，签名约 9.1 秒。这些是各工具步骤用时，不含源码同步及完整性检查。

| 检查项 | 结果 |
| --- | --- |
| 完整解码 | 7 个 Smali 目录，47,156 个类，包含第三方依赖 |
| 受版本控制源码 | 302 个业务 Smali、2,174 个资源 XML、Manifest、apktool.yml |
| 全量编译 | 全部 7 个 Smali 目录重新汇编；aapt2 资源编译成功 |
| DEX 完整性 | 7 个 DEX 的文件长度、SHA-1、Adler32 均正确 |
| 类定义 | 各 DEX 的真实 class_defs 描述符集合与原样本相同；合计 47,156 类 |
| DEX 字节 | 7 个 DEX 的 SHA-256 均不同于原样本，未直接复用原始 DEX |
| Native | 43 个 `.so` 名称和文件内容哈希保持一致 |
| Assets | 188 个文件内容保持一致；8 个中文文件名的 UTF-8 标志变化单独记录 |
| ZIP | 全部条目读取及 CRC 检查通过 |
| APK 签名 | 官方 apksigner 验证 v1 / v2 / v3 均为 true |
| 对齐 | `zipalign -c -P 16 4` 返回 0 |
| 回归测试 | 33 项通过：17 项 APK 校验测试、16 项源码保护及离线工具测试 |
| 运行测试 | 未安装或运行 APK，未连接设备、未发送控制数据 |

最终成品为 `rebuild/output/wifi-cam-rebuilt-debug.apk`；本次大小、SHA-256、证书指纹及逐 DEX 摘要保存于 [build-verification.json](build-verification.json)。这是本次构建记录；后续修改工程或重新生成本地调试密钥后，APK 哈希可变化。

完整逐项比较报告在本机 `rebuild/output/verification.json`；解码、编译、签名及签名验证日志在 `work/rebuild/`。使用 [工程说明](README.md) 的命令可以重新生成。原 APK 的 8 个中文 ZIP 名称原始字节为 UTF-8，但没有设置 UTF-8 标志；核验确认原始名字节、内容哈希一致且 UTF-8 名称无歧义后，才接受这个编码标志变化。

签名工具也提示原有 `META-INF` 依赖版本元数据不受 v1 JAR 条目签名保护；保留了这些原始元数据，v2/v3 验证通过。签名工具在 JDK 25 下的 Conscrypt 原生访问提示不影响本次成功结果。ZIP 对齐结果不代表已验证原生 ELF 的 16 KB 页兼容性。

重建工程保留原界面资源和二进制依赖，但未证明所有方法、界面、第三方服务及设备操作的运行等价性。没有原开发者签名，也没有恢复原始 Java/Kotlin 或 C/C++ 工程。完整边界见 [工程说明](README.md#构建边界)。
