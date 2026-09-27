# C06 — Camera

- APK SHA-256: `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`
- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。
- 原始类：`com.tzh.wifi.utils.Camera`（`classes6.dex`）。
- 来源：`work/jadx/sources/com/tzh/wifi/utils/Camera.java`
- 完整反编译文件 SHA-256：`621bd100cf3109db9ad621bc672c71725824ba75409b4891c71feee226b46eb4`

下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。

## 原文件 38–84 行

```text
  38 |     public static native void iCameraCloseFile();
  39 |
  40 |     public static final native void iCameraDeinit();
  41 |
  42 |     public static final native int iCameraEncodeStart(String str, int i);
  43 |
  44 |     public static final native int iCameraEncodeStop();
  45 |
  46 |     public static native byte[] iCameraGetOneFrame(int i);
  47 |
  48 |     public static native byte[] iCameraGetOneSecond(double d);
  49 |
  50 |     public static native int iCameraGetTotalFrame();
  51 |
  52 |     public static native double iCameraGetTotalTime();
  53 |
  54 |     public static final native int iCameraInit();
  55 |
  56 |     public static native void iCameraOpenFile(String str);
  57 |
  58 |     public static final native int iCameraRecSetParams(int i, int i2, int i3);
  59 |
  60 |     public static final native int iCameraRecStart(String str);
  61 |
  62 |     public static final native void iCameraRecStop();
  63 |
  64 |     public static final native int iCameraRecWrite(byte[] bArr, int i);
  65 |
  66 |     public static final native int iCameraRoate();
  67 |
  68 |     public static final native int iCameraSetMode(int i);
  69 |
  70 |     public static final native int iCameraStart();
  71 |
  72 |     public static final native void iCameraStop();
  73 |
  74 |     public static final native int iCameraSwitch();
  75 |
  76 |     public static final native int iCameraWritePic(byte[] bArr, int i);
  77 |
  78 |     public static final native void iCmdResume();
  79 |
  80 |     public static final native int iCmdSend(byte[] bArr, int i);
  81 |
  82 |     public static final native int iCmdStart();
  83 |
  84 |     public static final native void iCmdStop();
```

## 原文件 96–165 行

```text
  96 |     static /* synthetic */ INativeListener access$000() {
  97 |         return nativeListener;
  98 |     }
  99 |
 100 |     static /* synthetic */ int access$100() {
 101 |         return resolution;
 102 |     }
 103 |
 104 |     static /* synthetic */ int access$200() {
 105 |         return iretain;
 106 |     }
 107 |
 108 |     static {
 109 |         System.loadLibrary("Camera");
 110 |         System.loadLibrary("yuv");
 111 |         System.loadLibrary("jpeg");
 112 |         System.loadLibrary("turbojpeg");
 113 |         System.loadLibrary("avcodec");
 114 |         System.loadLibrary("avfilter");
 115 |         System.loadLibrary("avformat");
 116 |         System.loadLibrary("avutil");
 117 |         System.loadLibrary("swresample");
 118 |         System.loadLibrary("swscale");
 119 |         System.loadLibrary("avdevice");
 120 |         System.loadLibrary("c++_shared");
 121 |         mHandler = new Handler() { // from class: com.tzh.wifi.utils.Camera.1
 122 |             @Override // android.os.Handler
 123 |             public void handleMessage(Message message) {
 124 |                 super.handleMessage(message);
 125 |                 int i = message.arg1;
 126 |                 if (i == 0) {
 127 |                     if (Camera.access$000() != null) {
 128 |                         Camera.access$000().IWiFiRecvBmp(Camera.access$100(), Camera.access$200(), (Bitmap) message.obj);
 129 |                     }
 130 |                 } else if (i == 1) {
 131 |                     if (Camera.access$000() != null) {
 132 |                         Camera.access$000().IWiFiConState(((Integer) message.obj).intValue());
 133 |                     }
 134 |                 } else if (i == 2) {
 135 |                     if (Camera.access$000() != null) {
 136 |                         Camera.access$000().IWiFiSnapState(((Integer) message.obj).intValue());
 137 |                     }
 138 |                 } else if (i == 3 && Camera.access$000() != null) {
 139 |                     Camera.access$000().ICameraType(((Integer) message.obj).intValue());
 140 |                 }
 141 |             }
 142 |         };
 143 |         mlock = new byte[0];
 144 |     }
 145 |
 146 |     public void onAutoPhotoClick(boolean z, int i) {
 147 |         bAutoClick = z;
 148 |         rotateAngle = i;
 149 |     }
 150 |
 151 |     public static void sendMessage(int i, Object obj) {
 152 |         if (mHandler != null) {
 153 |             Message messageObtain = Message.obtain();
 154 |             messageObtain.arg1 = i;
 155 |             messageObtain.obj = obj;
 156 |             mHandler.sendMessage(messageObtain);
 157 |         }
 158 |     }
 159 |
 160 |     public Camera(Context context, INativeListener iNativeListener) {
 161 |         mContext = context;
 162 |         nativeListener = iNativeListener;
 163 |         faceDector = new FaceDector(iNativeListener);
 164 |     }
 165 |
```

## 原文件 206–216 行

```text
 206 |     public static void OnWiFiStateChange(int i) {
 207 |         sendMessage(1, Integer.valueOf(i));
 208 |     }
 209 |
 210 |     public static void OnCameraType(int i) {
 211 |         sendMessage(3, Integer.valueOf(i));
 212 |     }
 213 |
 214 |     public static void onSnapRecClick(int i) {
 215 |         sendMessage(2, Integer.valueOf(i));
 216 |     }
```
