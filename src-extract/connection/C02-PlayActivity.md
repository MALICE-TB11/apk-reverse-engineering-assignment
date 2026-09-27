# C02 — PlayActivity

- APK SHA-256: `49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0`
- 工具：JADX 1.5.6；配置：`tools/Decompile.java`。
- 原始类：`com.tzh.wifi.wificam.activity.PlayActivity`（`classes6.dex`）。
- 来源：`work/jadx/sources/com/tzh/wifi/wificam/activity/PlayActivity.java`
- 完整反编译文件 SHA-256：`889210aff14bc4d8a328577e6f8169c32ce6a57648dac8df7439b51e79ec45ae`

下方为原样摘录；左侧数字是原文件行号。JADX 输出不等于可重新编译的源码。

## 原文件 1139–1178 行

```text
1139 |
1140 |     @Override // com.tzh.wifi.wificam.view.base.ICaptureView
1141 |     public void connected() {
1142 |         this.bWiFiConnect = true;
1143 |     }
1144 |
1145 |     @Override // com.tzh.wifi.wificam.view.base.ICaptureView
1146 |     public void disconnected() {
1147 |         this.bWiFiConnect = false;
1148 |         play_record_click_up();
1149 |     }
1150 |
1151 |     @Override // com.tzh.wifi.wificam.view.base.ICaptureView
1152 |     public void snapState(int i) {
1153 |         if (i == 0) {
1154 |             this.btnPhotoSnap.performClick();
1155 |         } else {
1156 |             if (i != 1) {
1157 |                 return;
1158 |             }
1159 |             this.btnRecord.performClick();
1160 |         }
1161 |     }
1162 |
1163 |     @Override // com.tzh.wifi.wificam.view.base.ICaptureView
1164 |     public void cameraType(int i) {
1165 |         this.cameraType = i;
1166 |     }
1167 |
1168 |     @Override // com.tzh.wifi.wificam.view.base.ICaptureView
1169 |     public void reciveBitmap(int i, int i2, Bitmap bitmap) {
1170 |         this.bWiFiConnect = true;
1171 |         WiFiPresenter.getInstance(this).takeSnap(bitmap);
1172 |         WiFiPresenter.getInstance(this).videoTakeSnap(bitmap);
1173 |         if (this.mBmpUtils == null || this.ivLeftImage.getWidth() == 0 || this.ivLeftImage.getHeight() == 0) {
1174 |             return;
1175 |         }
1176 |         this.mBmpUtils.setImageParam(this.ivLeftImage.getWidth(), this.ivLeftImage.getHeight());
1177 |         this.mBmpUtils.push(bitmap);
1178 |     }
```

## 原文件 1435–1467 行

```text
1435 |
1436 |     @Override // com.tzh.wifi.wificam.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
1437 |     protected void onResume() {
1438 |         super.onResume();
1439 |         if (getApp().bLockClick) {
1440 |             WiFiPresenter.getInstance(this).ICmd_Start();
1441 |         } else {
1442 |             WiFiPresenter.getInstance(this).ICmd_Resume();
1443 |         }
1444 |         WiFiPresenter.getInstance(this).attachView(this);
1445 |         this.bWiFiConnect = false;
1446 |         BmpUtils bmpUtils = this.mBmpUtils;
1447 |         if (bmpUtils != null) {
1448 |             bmpUtils.start();
1449 |         }
1450 |         Rudder rudder = this.mRudder;
1451 |         rudder.dealWidhDirRudder(rudder.DirCenterDef.x, this.mRudder.DirCenterDef.y, false);
1452 |         if (ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_FINE_LOCATION") == 0 || ActivityCompat.checkSelfPermission(this, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
1453 |             if (getResources().getConfiguration().orientation == 1) {
1454 |                 this.is_portrait = true;
1455 |             } else if (getResources().getConfiguration().orientation == 2) {
1456 |                 this.is_portrait = false;
1457 |             }
1458 |             this.mBmpUtils.setIs_portrait(this.is_portrait);
1459 |         }
1460 |     }
1461 |
1462 |     @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
1463 |     protected void onPause() {
1464 |         super.onPause();
1465 |     }
1466 |
1467 |     @Override // com.tzh.wifi.wificam.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
```

## 原文件 1500–1508 行

```text
1500 |     @Override // com.tzh.wifi.wificam.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
1501 |     protected void onDestroy() {
1502 |         super.onDestroy();
1503 |         writeConfig();
1504 |         this.mRudder.onDestroy();
1505 |         play_auto_photo_up();
1506 |         WiFiPresenter.getInstance(this).disattachView();
1507 |         WiFiPresenter.getInstance(this).ICmd_Stop();
1508 |     }
```
