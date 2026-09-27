# C04 — WiFiModelImpl

- APK SHA-256: `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`
- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。
- 原始类：`com.tzh.wifi.wificam.model.WiFiModelImpl`（`classes6.dex`）。
- 来源：`work/jadx/sources/com/tzh/wifi/wificam/model/WiFiModelImpl.java`
- 完整反编译文件 SHA-256：`5809e98ad13a91de94e60103ec19c821f534fedead6c69ce1775f8e596afa214`

下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。

## 原文件 14–30 行

```text
  14 | public class WiFiModelImpl extends BaseModel implements INativeListener {
  15 |     private BaseCmd baseCmd;
  16 |     private Camera mCamera;
  17 |     private Context mContext;
  18 |     private IModelCallBack modelCallBack;
  19 |
  20 |     public WiFiModelImpl(Context context, IModelCallBack iModelCallBack) {
  21 |         this.mCamera = null;
  22 |         this.baseCmd = null;
  23 |         this.mContext = context;
  24 |         this.modelCallBack = iModelCallBack;
  25 |         this.mCamera = new Camera(context, this);
  26 |         BaseCmd baseCmd = new BaseCmd();
  27 |         this.baseCmd = baseCmd;
  28 |         baseCmd.setTune((byte) ConfigUtils.getLeftTune(context), (byte) ConfigUtils.getRightTune(context), (byte) ConfigUtils.getCenterTune(context));
  29 |     }
  30 |
```

## 原文件 53–72 行

```text
  53 |     @Override // com.tzh.wifi.wificam.model.listener.INativeListener
  54 |     public void IWiFiConState(int i) {
  55 |         IModelCallBack iModelCallBack = this.modelCallBack;
  56 |         if (iModelCallBack != null) {
  57 |             if (i == 0) {
  58 |                 iModelCallBack.disconnected();
  59 |             } else if (i == 1) {
  60 |                 iModelCallBack.connected();
  61 |             }
  62 |         }
  63 |     }
  64 |
  65 |     @Override // com.tzh.wifi.wificam.model.listener.INativeListener
  66 |     public void ICameraType(int i) {
  67 |         this.baseCmd.setCameraType(i);
  68 |         IModelCallBack iModelCallBack = this.modelCallBack;
  69 |         if (iModelCallBack != null) {
  70 |             iModelCallBack.cameraType(i);
  71 |         }
  72 |     }
```

## 原文件 187–217 行

```text
 187 |     @Override // com.tzh.wifi.wificam.model.base.BaseModel
 188 |     public void ICmd_Start() {
 189 |         super.ICmd_Start();
 190 |         BaseCmd baseCmd = this.baseCmd;
 191 |         if (baseCmd != null) {
 192 |             baseCmd.start();
 193 |         }
 194 |     }
 195 |
 196 |     @Override // com.tzh.wifi.wificam.model.base.BaseModel
 197 |     public void ICmd_Resume() {
 198 |         super.ICmd_Resume();
 199 |         BaseCmd baseCmd = this.baseCmd;
 200 |         if (baseCmd != null) {
 201 |             baseCmd.resume();
 202 |         }
 203 |     }
 204 |
 205 |     @Override // com.tzh.wifi.wificam.model.base.BaseModel
 206 |     public void ICmd_Stop() {
 207 |         super.ICmd_Stop();
 208 |         BaseCmd baseCmd = this.baseCmd;
 209 |         if (baseCmd != null) {
 210 |             baseCmd.stop();
 211 |         }
 212 |     }
 213 |
 214 |     public void setOnDataListener(IData iData) {
 215 |         this.mCamera.setOnDatListener(iData);
 216 |     }
 217 | }
```
