# C03 — WiFiPresenter

- APK SHA-256: `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`
- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。
- 原始类：`com.tzh.wifi.wificam.presenter.WiFiPresenter`（`classes6.dex`）。
- 来源：`work/jadx/sources/com/tzh/wifi/wificam/presenter/WiFiPresenter.java`
- 完整反编译文件 SHA-256：`7e68fa232a57833cbb0e9e879409893e1ae028850358b50a69db0dc22486ae9e`

下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。

## 原文件 141–167 行

```text
 141 |     private WiFiPresenter(Context context) {
 142 |         this.wiFiModel = null;
 143 |         this.mContext = null;
 144 |         this.media = null;
 145 |         this.oggPlayer = null;
 146 |         this.gSensor = null;
 147 |         this.mPhoto = null;
 148 |         this.mPathUtils = null;
 149 |         this.tFrame = 0;
 150 |         this.wiFiModel = new WiFiModelImpl(context, this);
 151 |         this.media = new Media(context);
 152 |         this.oggPlayer = new OggPlayer(context);
 153 |         this.gSensor = new GSensor(context);
 154 |         this.mPhoto = new Snap(context);
 155 |         this.mPathUtils = new PathUtils(context);
 156 |         this.tFrame = 38;
 157 |         this.mContext = context;
 158 |     }
 159 |
 160 |     public static WiFiPresenter getInstance(Context context) {
 161 |         synchronized (WiFiPresenter.class) {
 162 |             if (mInstance == null) {
 163 |                 mInstance = new WiFiPresenter(context);
 164 |             }
 165 |         }
 166 |         return mInstance;
 167 |     }
```

## 原文件 303–320 行

```text
 303 |     public void attachView(ICaptureView iCaptureView) {
 304 |         this.captureView = iCaptureView;
 305 |         WiFiModelImpl wiFiModelImpl = this.wiFiModel;
 306 |         if (wiFiModelImpl != null) {
 307 |             wiFiModelImpl.setOnDataListener(this);
 308 |             this.wiFiModel.iCameraStart();
 309 |         }
 310 |     }
 311 |
 312 |     public void disattachView() {
 313 |         this.captureView = null;
 314 |         WiFiModelImpl wiFiModelImpl = this.wiFiModel;
 315 |         if (wiFiModelImpl != null) {
 316 |             wiFiModelImpl.setOnDataListener(null);
 317 |             this.mRun = false;
 318 |             this.wiFiModel.iCameraStop();
 319 |         }
 320 |     }
```

## 原文件 337–378 行

```text
 337 |     @Override // com.tzh.wifi.wificam.model.listener.IModelCallBack
 338 |     public void connected() {
 339 |         ICaptureView iCaptureView = this.captureView;
 340 |         if (iCaptureView != null) {
 341 |             iCaptureView.connected();
 342 |         }
 343 |     }
 344 |
 345 |     @Override // com.tzh.wifi.wificam.model.listener.IModelCallBack
 346 |     public void snapState(int i) {
 347 |         ICaptureView iCaptureView = this.captureView;
 348 |         if (iCaptureView != null) {
 349 |             iCaptureView.snapState(i);
 350 |         }
 351 |     }
 352 |
 353 |     @Override // com.tzh.wifi.wificam.model.listener.IModelCallBack
 354 |     public void cameraType(int i) {
 355 |         ICaptureView iCaptureView = this.captureView;
 356 |         if (iCaptureView != null) {
 357 |             iCaptureView.cameraType(i);
 358 |         }
 359 |     }
 360 |
 361 |     @Override // com.tzh.wifi.wificam.model.listener.IModelCallBack
 362 |     public void disconnected() {
 363 |         ICaptureView iCaptureView = this.captureView;
 364 |         if (iCaptureView != null) {
 365 |             iCaptureView.disconnected();
 366 |         }
 367 |     }
 368 |
 369 |     @Override // com.tzh.wifi.wificam.model.listener.IModelCallBack
 370 |     public void recvFrame(int i, int i2, Bitmap bitmap) {
 371 |         if (this.captureView != null) {
 372 |             this.resolution = i;
 373 |             this.iretain = i2;
 374 |             this.srcWidth = bitmap.getWidth();
 375 |             this.srcHeight = bitmap.getHeight();
 376 |             this.captureView.reciveBitmap(i, i2, bitmap);
 377 |         }
 378 |     }
```
