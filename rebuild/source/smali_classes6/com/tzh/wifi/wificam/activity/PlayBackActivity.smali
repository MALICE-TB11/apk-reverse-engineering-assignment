.class public Lcom/tzh/wifi/wificam/activity/PlayBackActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "PlayBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static con:Ljava/net/HttpURLConnection; = null

.field private static state:I = -0x1

.field private static url:Ljava/net/URL;


# instance fields
.field private TAG:Ljava/lang/String;

.field private bannerContainer:Landroid/view/ViewGroup;

.field callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field connectivityManager:Landroid/net/ConnectivityManager;

.field private mADManager:Lcom/unad/sdk/UNADFeedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    .line 29
    const-string v0, "PlayBackActivityAD"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->bannerContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private initNativeExpressAD()V
    .locals 3

    .line 117
    new-instance v0, Lcom/unad/sdk/UNADFeedAd;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)V

    const-string v2, "Adgo-unit-1068256447"

    invoke-direct {v0, p0, v2, v1}, Lcom/unad/sdk/UNADFeedAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unad/sdk/UNADFeedAd$UNADFeedAdListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->mADManager:Lcom/unad/sdk/UNADFeedAd;

    const/16 v1, 0x140

    .line 164
    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADFeedAd;->setAdWidth(I)V

    .line 165
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->mADManager:Lcom/unad/sdk/UNADFeedAd;

    invoke-virtual {v0}, Lcom/unad/sdk/UNADFeedAd;->loadAD()V

    return-void
.end method

.method public static isNetOnline()Z
    .locals 7

    .line 176
    const-string v0, "LogoActivityAD"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 180
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://www.baidu.com"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->url:Ljava/net/URL;

    .line 181
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    sput-object v5, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->con:Ljava/net/HttpURLConnection;

    const/16 v6, 0x12c

    .line 182
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 183
    sget-object v5, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    sput v5, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->state:I

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetOnline counts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->state:I
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

    .line 192
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

.method public static final ping()Z
    .locals 10

    .line 263
    const-string v0, "LogoActivityAD"

    .line 268
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ping -c 1 -w 1 www.baidu.com"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    .line 283
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

    .line 285
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v4

    .line 286
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

    .line 302
    const-string v1, "result = success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "result = failed"

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "result = null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    throw v1

    .line 302
    :catch_1
    const-string v1, "result = IOException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private useNetwork()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    const-string v1, "change network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 207
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 258
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    return-void

    .line 67
    :sswitch_0
    const-class p1, Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    .line 59
    :sswitch_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->onBackPressed()V

    return-void

    .line 63
    :sswitch_2
    const-class p1, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a03b4 -> :sswitch_2
        0x7f0a03b5 -> :sswitch_1
        0x7f0a03c1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    const p1, 0x7f0d0021

    .line 45
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->setContentView(I)V

    const p1, 0x7f0a0199

    .line 46
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->bannerContainer:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v0, 0x140

    .line 48
    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PxUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 49
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->bannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->bannerContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 52
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->initNativeExpressAD()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    const-string v1, "ping init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->ping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u6709\u7f51\u7edc"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    const-string v1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u5207\u6362\u79fb\u52a8\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->useNetwork()V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->TAG:Ljava/lang/String;

    const-string v1, "ping end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 90
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStop()V

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, v2}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 100
    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_1
    return-void
.end method

.method public refreshBanner()V
    .locals 2

    .line 170
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->initNativeExpressAD()V

    .line 171
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->bannerContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
