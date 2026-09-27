# C01 — WiFiApp

- APK SHA-256: `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`
- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。
- 原始类：`com.tzh.wifi.wificam.WiFiApp`（`classes6.dex`）。
- 来源：`work/jadx/sources/com/tzh/wifi/wificam/WiFiApp.java`
- 完整反编译文件 SHA-256：`dcfe6cd8df3f88f641d22822884d63ea91e588c642ca6cffbb97bcdf2b2234d7`

下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。

## 原文件 104–124 行

```text
 104 |
 105 |     @Override // android.app.Application
 106 |     public void onCreate() {
 107 |         super.onCreate();
 108 |         Log.e("unadsdk", "Application init");
 109 |         this.handler = new Handler();
 110 |         sContext = getApplicationContext();
 111 |         UICrashHandler.getInstance().init(getApplicationContext());
 112 |         this.handler.post(this.copyRunnable);
 113 |         Log.e("unadsdk", "INativeUtils iCameraInit");
 114 |         Camera.iCameraInit();
 115 |         initDialog();
 116 |         this.connectivityManager = (ConnectivityManager) getSystemService("connectivity");
 117 |     }
 118 |
 119 |     public void onDestroy() {
 120 |         Camera.iCameraDeinit();
 121 |         unregister();
 122 |         this.handler.removeCallbacks(this.copyRunnable);
 123 |     }
 124 |
```
