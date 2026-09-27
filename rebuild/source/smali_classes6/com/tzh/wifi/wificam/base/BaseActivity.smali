.class public Lcom/tzh/wifi/wificam/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AUDIO_PERMISSION_REQUEST_CODE:I = 0x66

.field private static final LOCATION_REQUEST_CODE:I = 0x64

.field private static final STORE_PERMISSION_REQUEST_CODE:I = 0x65


# instance fields
.field private audioPermissions:[Ljava/lang/String;

.field private locationPermissions:[Ljava/lang/String;

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private restorePermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 29
    const-class v0, Lcom/tzh/wifi/wificam/base/BaseActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 42
    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->audioPermissions:[Ljava/lang/String;

    .line 45
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->restorePermissions:[Ljava/lang/String;

    .line 50
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->locationPermissions:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/base/BaseActivity;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->restorePermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/base/BaseActivity;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->locationPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/base/BaseActivity;)[Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->audioPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method private lacksPermission([Ljava/lang/String;)Z
    .locals 4

    .line 57
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 58
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    iget-object p1, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v0, "###lacksPermission true"

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private requestAudioPermission()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->audioPermissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->lacksPermission([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/tzh/wifi/wificam/base/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/base/BaseActivity$3;-><init>(Lcom/tzh/wifi/wificam/base/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showAudioPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private requestLocationPermission()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->locationPermissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->lacksPermission([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/tzh/wifi/wificam/base/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/base/BaseActivity$2;-><init>(Lcom/tzh/wifi/wificam/base/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showLocationPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private requestStorePermission()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->restorePermissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->lacksPermission([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lcom/tzh/wifi/wificam/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/base/BaseActivity$1;-><init>(Lcom/tzh/wifi/wificam/base/BaseActivity;)V

    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showStoragePermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getApp()Lcom/tzh/wifi/wificam/WiFiApp;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/WiFiApp;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 224
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p3, 0x65

    .line 95
    const-string v0, "LogoActivity"

    const/4 v1, 0x0

    if-ne p1, p3, :cond_2

    .line 96
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_1

    aget-object p3, p2, v1

    .line 98
    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_0

    .line 99
    const-string p1, "###\u7f3a\u5c11\u5b58\u50a8\u6743\u9650"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string p2, "###\u7533\u8bf7\u5b8c\u6210\u4fdd\u5b58\u6743\u9650\u5f00\u59cb\u7533\u8bf7\u5b9a\u4f4d\u6743\u9650"

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->requestLocationPermission()Z

    return-void

    :cond_2
    const/16 p3, 0x64

    if-ne p1, p3, :cond_4

    .line 106
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_6

    aget-object p3, p2, v1

    .line 108
    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_3

    .line 109
    const-string p1, "###\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/16 p3, 0x66

    if-ne p1, p3, :cond_6

    .line 116
    array-length p1, p2

    :goto_2
    if-ge v1, p1, :cond_6

    aget-object p3, p2, v1

    .line 118
    invoke-static {p0, p3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_5

    .line 119
    const-string p1, "###\u7f3a\u5c11\u9ea6\u514b\u98ce\u8bbf\u95ee\u6743\u9650"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 219
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public requestPermission()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "###requestPermission"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "###\u9690\u79c1\u534f\u8bae\u672a\u540c\u610f\uff0c\u8df3\u8fc7\u6743\u9650\u7533\u8bf7"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "###\u8df3\u8fc7\u5b58\u50a8\u6743\u9650\u7533\u8bf7\uff0c\u4ec5\u7533\u8bf7\u5b9a\u4f4d\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->requestLocationPermission()Z

    return-void
.end method

.method protected startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x10a0002

    const v0, 0x10a0003

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected startActivityWith3DFlip(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010041

    const v0, 0x7f010042

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected startActivityWith3DFlipZ(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010043

    const v0, 0x7f010044

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public startService()V
    .locals 0

    return-void
.end method
