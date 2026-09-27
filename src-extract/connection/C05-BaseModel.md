# C05 — BaseModel

- APK SHA-256: `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`
- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。
- 原始类：`com.tzh.wifi.wificam.model.base.BaseModel`（`classes6.dex`）。
- 来源：`work/jadx/sources/com/tzh/wifi/wificam/model/base/BaseModel.java`
- 完整反编译文件 SHA-256：`1e10ab2754f18fe6977b8824cdfcefe4e9964ad79a64807bba4081939cb0070a`

下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。

## 原文件 56–74 行

```text
  56 |     public int iCameraInit() {
  57 |         return Camera.iCameraInit();
  58 |     }
  59 |
  60 |     public void iCameraDeinit() {
  61 |         Camera.iCameraDeinit();
  62 |     }
  63 |
  64 |     public int iCameraStart() {
  65 |         return Camera.iCameraStart();
  66 |     }
  67 |
  68 |     public int iCameraSetMode(int i) {
  69 |         return Camera.iCameraSetMode(i);
  70 |     }
  71 |
  72 |     public void iCameraStop() {
  73 |         Camera.iCameraStop();
  74 |     }
```

## 原文件 96–106 行

```text
  96 |     public int iCmdStart() {
  97 |         return Camera.iCmdStart();
  98 |     }
  99 |
 100 |     public int iCmdSend(byte[] bArr, int i) {
 101 |         return Camera.iCmdSend(bArr, i);
 102 |     }
 103 |
 104 |     public void iCmdStop() {
 105 |         Camera.iCmdStop();
 106 |     }
```
