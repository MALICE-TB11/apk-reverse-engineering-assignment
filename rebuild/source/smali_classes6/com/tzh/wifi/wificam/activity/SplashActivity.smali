.class public Lcom/tzh/wifi/wificam/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Lcom/unad/sdk/UNADSplashAdLoader$UNADSplashADListener;


# static fields
.field private static con:Ljava/net/HttpURLConnection; = null

.field private static state:I = -0x1

.field private static url:Ljava/net/URL;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final adID:Ljava/lang/String;

.field private adTime:I

.field private callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public canJump:Z

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private container:Landroid/view/ViewGroup;

.field private handler:Landroid/os/Handler;

.field private isShow:Z

.field private isStartActivity:Z

.field private nextRunnable:Ljava/lang/Runnable;

.field private final splashADId:Ljava/lang/String;

.field private splashbg:Landroid/widget/RelativeLayout;

.field private unadSplashAdLoader:Lcom/unad/sdk/UNADSplashAdLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "unadsdk"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "Adgo-app-5138325721"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adID:Ljava/lang/String;

    .line 48
    const-string v0, "Adgo-unit-8488582055"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->splashADId:Ljava/lang/String;

    const/16 v0, 0xbb8

    .line 50
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adTime:I

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isShow:Z

    .line 52
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->canJump:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isStartActivity:Z

    .line 65
    new-instance v0, Lcom/tzh/wifi/wificam/activity/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->nextRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->next()V

    return-void
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->container:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/SplashActivity;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adTime:I

    return p0
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/activity/SplashActivity;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->showSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->nextRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkAndRequestPermission()V
    .locals 8

    .line 133
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "unadsdk"

    if-nez v0, :cond_0

    .line 134
    const-string v0, "\u9690\u79c1\u653f\u7b56\u672a\u540c\u610f\uff0c\u8df3\u8fc7\u6743\u9650\u7533\u8bf7"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Lcom/tzh/wifi/wificam/activity/SplashActivity;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 142
    invoke-static {p0, v2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    const-string v3, "app_prefs"

    invoke-virtual {p0, v3, v4}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "first_location_request"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 149
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p0, v3, v4}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 153
    :cond_2
    const-string v2, "\u4f4d\u7f6e\u6743\u9650\u5df2\u88ab\u7528\u6237\u62d2\u7edd\uff0c\u8df3\u8fc7\u7533\u8bf7"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adShow()V

    return-void

    .line 167
    :cond_4
    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x400

    invoke-static {p0, v0, v1}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Lcom/tzh/wifi/wificam/activity/SplashActivity;[Ljava/lang/String;I)V

    return-void
.end method

.method private checkPrivacyStatusAndInitAd()V
    .locals 2

    .line 205
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->checkAndRequestPermission()V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adShow()V

    return-void

    .line 214
    :cond_1
    const-string v0, "unadsdk"

    const-string v1, "\u9690\u79c1\u653f\u7b56\u672a\u540c\u610f\uff0c\u8df3\u8fc7\u5e7f\u544a\u521d\u59cb\u5316\uff0c\u76f4\u63a5\u8fdb\u5165LogoActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->next()V

    return-void
.end method

.method private getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 381
    :cond_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 382
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 383
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 384
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private hasAllPermissionsGranted([I)Z
    .locals 5

    .line 172
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static isNetOnline()Z
    .locals 7

    .line 323
    const-string v0, "unadsdk"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 327
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://www.baidu.com"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/tzh/wifi/wificam/activity/SplashActivity;->url:Ljava/net/URL;

    .line 328
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    sput-object v5, Lcom/tzh/wifi/wificam/activity/SplashActivity;->con:Ljava/net/HttpURLConnection;

    const/16 v6, 0x12c

    .line 329
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 330
    sget-object v5, Lcom/tzh/wifi/wificam/activity/SplashActivity;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    sput v5, Lcom/tzh/wifi/wificam/activity/SplashActivity;->state:I

    .line 331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetOnline counts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/tzh/wifi/wificam/activity/SplashActivity;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget v0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    move v4, v2

    goto :goto_2

    :catch_0
    add-int/lit8 v3, v3, 0x1

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isNetOnline URL\u4e0d\u53ef\u7528\uff0c\u8fde\u63a5\u7b2c "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " \u6b21"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    :goto_2
    return v4
.end method

.method private next()V
    .locals 3

    .line 413
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->canJump:Z

    if-eqz v0, :cond_4

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, v2}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 417
    :cond_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 420
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 421
    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 423
    :cond_1
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isStartActivity:Z

    if-eqz v0, :cond_2

    .line 424
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->finish()V

    .line 427
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isStartActivity:Z

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0, v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->overridePendingTransition(II)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->canJump:Z

    return-void
.end method

.method public static final ping()Z
    .locals 10

    .line 346
    const-string v0, "unadsdk"

    .line 349
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ping -c 1 -w 1 www.baidu.com"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    .line 352
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v5, v2

    const-wide/16 v7, 0xc8

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 354
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v4

    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-nez v4, :cond_1

    .line 369
    const-string v1, "===>result = success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "===>result = failed"

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "===>result = null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    throw v1

    .line 369
    :catch_1
    const-string v1, "===>result = IOException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private showSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V
    .locals 9

    .line 236
    new-instance v0, Lcom/unad/sdk/UNADSplashAdLoader;

    const v6, 0x7f0f0001

    const/4 v7, 0x0

    const/4 v5, 0x1

    move-object v8, p0

    move-object v1, p1

    move-object v3, p2

    move-object v2, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/unad/sdk/UNADSplashAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;IZIILcom/unad/sdk/UNADSplashAdLoader$UNADSplashADListener;)V

    iput-object v0, v8, Lcom/tzh/wifi/wificam/activity/SplashActivity;->unadSplashAdLoader:Lcom/unad/sdk/UNADSplashAdLoader;

    .line 238
    sget-object p1, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;->DOWNLOAD_CONFIRM_LISTENER:Lcom/unad/sdk/listener/UNADDownloadConfirmListener;

    invoke-virtual {v0, p1}, Lcom/unad/sdk/UNADSplashAdLoader;->setDownloadConfirmListener(Lcom/unad/sdk/listener/UNADDownloadConfirmListener;)V

    .line 239
    iget-object p1, v8, Lcom/tzh/wifi/wificam/activity/SplashActivity;->unadSplashAdLoader:Lcom/unad/sdk/UNADSplashAdLoader;

    invoke-virtual {p1}, Lcom/unad/sdk/UNADSplashAdLoader;->loadAD()V

    return-void
.end method

.method private useNetwork()V
    .locals 3

    .line 282
    const-string v0, "unadsdk"

    const-string v1, "change network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 284
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 285
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 286
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 319
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public adInit()V
    .locals 4

    .line 391
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/WiFiApp;->setIsLoad(Z)V

    .line 392
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 393
    invoke-direct {p0, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "unadsdk"

    const-string v2, "init sdk"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Lcom/unad/sdk/dto/UNADConfig$Builder;

    invoke-direct {v0}, Lcom/unad/sdk/dto/UNADConfig$Builder;-><init>()V

    const/4 v2, 0x0

    .line 397
    invoke-virtual {v0, v2}, Lcom/unad/sdk/dto/UNADConfig$Builder;->disablePersonalRecommand(Z)Lcom/unad/sdk/dto/UNADConfig$Builder;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v1}, Lcom/unad/sdk/dto/UNADConfig$Builder;->setDebug(Z)Lcom/unad/sdk/dto/UNADConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unad/sdk/dto/UNADConfig$Builder;->build()Lcom/unad/sdk/dto/UNADConfig;

    move-result-object v0

    .line 399
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lcom/tzh/wifi/wificam/activity/SplashActivity$3;

    invoke-direct {v2, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity$3;-><init>(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V

    .line 396
    const-string v3, "Adgo-app-5138325721"

    invoke-static {v0, v3, v1, v2}, Lcom/unad/sdk/UNAD;->initialize(Lcom/unad/sdk/dto/UNADConfig;Ljava/lang/String;Landroid/app/Application;Lcom/unad/sdk/UNAD$InitCallback;)V

    :cond_0
    return-void
.end method

.method public adShow()V
    .locals 4

    .line 221
    const-string v0, "ping init"

    const-string v1, "unadsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->ping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "\u6709\u7f51\u7edc"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/WiFiApp;->getIsLoad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adInit()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->container:Landroid/view/ViewGroup;

    const-string v2, "Adgo-unit-8488582055"

    iget v3, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adTime:I

    invoke-direct {p0, p0, v0, v2, v3}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->showSplashAD(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V

    goto :goto_0

    .line 229
    :cond_1
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u5207\u6362\u79fb\u52a8\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->useNetwork()V

    .line 232
    :goto_0
    const-string v0, "ping end"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getApp()Lcom/tzh/wifi/wificam/WiFiApp;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/WiFiApp;

    return-object v0
.end method

.method synthetic lambda$onADReceive$0$com-tzh-wifi-wificam-activity-SplashActivity()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADClicked()V
    .locals 2

    .line 249
    const-string v0, "unadsdk"

    const-string v1, "UI:onADClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADDismissed()V
    .locals 2

    .line 270
    const-string v0, "unadsdk"

    const-string v1, "UI:onADDismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->next()V

    return-void
.end method

.method public onADError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unadsdk"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->next()V

    return-void
.end method

.method public onADPresent()V
    .locals 2

    .line 244
    const-string v0, "unadsdk"

    const-string v1, "UI:onADPresent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADReceive(J)V
    .locals 0

    .line 259
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isShow:Z

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->splashbg:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isShow:Z

    .line 262
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->unadSplashAdLoader:Lcom/unad/sdk/UNADSplashAdLoader;

    invoke-virtual {p1}, Lcom/unad/sdk/UNADSplashAdLoader;->showAD()V

    .line 263
    new-instance p1, Lcom/tzh/wifi/wificam/activity/SplashActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity$$ExternalSyntheticLambda3;-><init>(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    :cond_0
    const-string p1, "unadsdk"

    const-string p2, "UI:onADLoaded"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADTick(J)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string p1, "unadsdk"

    const-string v0, "SplashActivity init"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->handler:Landroid/os/Handler;

    .line 82
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    const p1, 0x7f0d02cc

    .line 83
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->setContentView(I)V

    .line 85
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isStartActivity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isStartActivity:Z

    :cond_0
    const p1, 0x7f0a0a41

    .line 88
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->container:Landroid/view/ViewGroup;

    const p1, 0x7f0a0a58

    .line 89
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->splashbg:Landroid/widget/RelativeLayout;

    .line 92
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->checkPrivacyStatusAndInitAd()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, v2}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 122
    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->unadSplashAdLoader:Lcom/unad/sdk/UNADSplashAdLoader;

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/unad/sdk/UNADSplashAdLoader;->destroy()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 443
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    .line 439
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->canJump:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x400

    if-ne p1, v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 186
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const-string p2, "app_prefs"

    invoke-virtual {p0, p2, v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 189
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "first_location_request"

    .line 190
    invoke-interface {p2, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 191
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    aget p2, p3, v1

    if-nez p2, :cond_0

    const-string p2, "\u540c\u610f"

    goto :goto_1

    :cond_0
    const-string p2, "\u62d2\u7edd"

    :goto_1
    const-string p3, "\u4f4d\u7f6e\u6743\u9650\u7533\u8bf7\u7ed3\u679c: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "unadsdk"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adShow()V

    :cond_3
    const/16 p2, 0x401

    if-ne p1, p2, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->useNetwork()V

    :cond_4
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->canJump:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->next()V

    :cond_0
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->canJump:Z

    .line 102
    const-string v0, "unadsdk"

    const-string v1, "SplashActivity onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity;->nextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public youDesirePermissionCode(Landroid/app/Activity;)V
    .locals 4

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android.permission.WRITE_SETTINGS"

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 449
    invoke-static {p1}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 454
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->useNetwork()V

    return-void

    .line 456
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x401

    if-lt v0, v2, :cond_3

    .line 457
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 461
    :cond_3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
