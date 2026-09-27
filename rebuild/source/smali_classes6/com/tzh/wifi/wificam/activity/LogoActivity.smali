.class public Lcom/tzh/wifi/wificam/activity/LogoActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "LogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogoActivityAD"

.field private static con:Ljava/net/HttpURLConnection; = null

.field private static state:I = -0x1

.field private static url:Ljava/net/URL;


# instance fields
.field private banner:Lcom/unad/sdk/UNADBannerAdLoader;

.field private bannerContainer:Landroid/view/ViewGroup;

.field private btnInfo:Landroid/widget/ImageView;

.field private btnStart:Landroid/widget/ImageView;

.field private callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private mADManager:Lcom/unad/sdk/UNADFeedAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->initNativeExpressAD()V

    return-void
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->bannerContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/LogoActivity;Ljava/lang/Class;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->startActivityWith3DFlipZ(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private checkPrivacyAndInitAd()V
    .locals 1

    .line 84
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->initNativeExpressAD()V

    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/tzh/wifi/wificam/activity/LogoActivity$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V

    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->showIfNecessary(Landroid/app/Activity;Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;)V

    return-void
.end method

.method private initNativeExpressAD()V
    .locals 3

    .line 107
    new-instance v0, Lcom/unad/sdk/UNADFeedAd;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V

    const-string v2, "Adgo-unit-1068256447"

    invoke-direct {v0, p0, v2, v1}, Lcom/unad/sdk/UNADFeedAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unad/sdk/UNADFeedAd$UNADFeedAdListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->mADManager:Lcom/unad/sdk/UNADFeedAd;

    const/16 v1, 0x140

    .line 130
    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADFeedAd;->setAdWidth(I)V

    .line 131
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->mADManager:Lcom/unad/sdk/UNADFeedAd;

    invoke-virtual {v0}, Lcom/unad/sdk/UNADFeedAd;->loadAD()V

    return-void
.end method

.method public static isNetOnline()Z
    .locals 7

    .line 240
    const-string v0, "LogoActivityAD"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 244
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://www.baidu.com"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/tzh/wifi/wificam/activity/LogoActivity;->url:Ljava/net/URL;

    .line 245
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    sput-object v5, Lcom/tzh/wifi/wificam/activity/LogoActivity;->con:Ljava/net/HttpURLConnection;

    const/16 v6, 0x12c

    .line 246
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 247
    sget-object v5, Lcom/tzh/wifi/wificam/activity/LogoActivity;->con:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    sput v5, Lcom/tzh/wifi/wificam/activity/LogoActivity;->state:I

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetOnline counts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/tzh/wifi/wificam/activity/LogoActivity;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget v0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->state:I
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

    .line 256
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

.method private loadBanner()V
    .locals 4

    .line 136
    new-instance v0, Lcom/unad/sdk/UNADBannerAdLoader;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->bannerContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;

    invoke-direct {v2, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V

    const-string v3, "Adgo-unit-4377979448"

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/unad/sdk/UNADBannerAdLoader;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/unad/sdk/UNADBannerAdLoader$UNADBannerADListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->banner:Lcom/unad/sdk/UNADBannerAdLoader;

    .line 149
    sget-object v1, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;->DOWNLOAD_CONFIRM_LISTENER:Lcom/unad/sdk/listener/UNADDownloadConfirmListener;

    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADBannerAdLoader;->setDownloadConfirmListener(Lcom/unad/sdk/listener/UNADDownloadConfirmListener;)V

    .line 150
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->banner:Lcom/unad/sdk/UNADBannerAdLoader;

    const/16 v1, 0x140

    invoke-static {p0, v1}, Lcom/tzh/wifi/wificam/utils/PxUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADBannerAdLoader;->setAdWidth(I)V

    .line 151
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->banner:Lcom/unad/sdk/UNADBannerAdLoader;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADBannerAdLoader;->setRefreshTime(I)V

    .line 152
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->banner:Lcom/unad/sdk/UNADBannerAdLoader;

    invoke-virtual {v0}, Lcom/unad/sdk/UNADBannerAdLoader;->load()V

    return-void
.end method

.method public static final ping()Z
    .locals 10

    .line 301
    const-string v0, "LogoActivityAD"

    .line 304
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ping -c 1 -w 1 www.baidu.com"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    .line 307
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

    .line 309
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v4

    .line 310
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

    .line 323
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

    .line 324
    throw v1

    .line 323
    :catch_1
    const-string v1, "result = IOException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private useNetwork()V
    .locals 3

    .line 263
    const-string v0, "LogoActivityAD"

    const-string v1, "change network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 266
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/tzh/wifi/wificam/activity/LogoActivity$5;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$5;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 289
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private widgetInit()V
    .locals 1

    const v0, 0x7f0a03b3

    .line 77
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->btnStart:Landroid/widget/ImageView;

    const v0, 0x7f0a03b2

    .line 78
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->btnInfo:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    .line 232
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/WiFiApp;->onDestroy()V

    .line 233
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 160
    :pswitch_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    const-class p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->startActivityWith3DFlipZ(Ljava/lang/Class;)V

    return-void

    .line 165
    :cond_0
    new-instance p1, Lcom/tzh/wifi/wificam/activity/LogoActivity$4;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$4;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->showIfNecessary(Landroid/app/Activity;Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;)V

    return-void

    .line 181
    :pswitch_1
    const-class p1, Lcom/tzh/wifi/wificam/activity/HelpActivity;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    .line 184
    :pswitch_2
    const-string p1, "LogoActivityAD"

    const-string v0, "\u70b9\u51fb\u4e86\u9690\u79c1\u6309\u94ae"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v0, "https://www.yuque.com/nullptr-dlg8o/ti459l/nvm7zabsl2vyinmg?singleDoc#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a03b1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    const p1, 0x7f0d001d

    .line 62
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->setContentView(I)V

    const p1, 0x7f0a0198

    .line 63
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->bannerContainer:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v0, 0x140

    .line 65
    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PxUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 66
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->bannerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->bannerContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 69
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->widgetInit()V

    .line 73
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->checkPrivacyAndInitAd()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 223
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    .line 224
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->banner:Lcom/unad/sdk/UNADBannerAdLoader;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/unad/sdk/UNADBannerAdLoader;->destroy()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 196
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onResume()V

    .line 197
    const-string v0, "ping init"

    const-string v1, "LogoActivityAD"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->ping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "\u6709\u7f51\u7edc"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_0
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u5207\u6362\u79fb\u52a8\u6570\u636e"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->useNetwork()V

    .line 204
    :goto_0
    const-string v0, "ping end"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 209
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStop()V

    .line 210
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, v2}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 216
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 217
    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_1
    return-void
.end method

.method public refreshBanner()V
    .locals 2

    .line 293
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->initNativeExpressAD()V

    .line 294
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity;->bannerContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
