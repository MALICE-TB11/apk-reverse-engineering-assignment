.class public Lcom/tzh/wifi/wificam/WiFiApp;
.super Landroid/app/Application;
.source "WiFiApp.java"


# static fields
.field private static final TCP_SERVER_IP:Ljava/lang/String; = "192.168.4.151"

.field private static final UDP_SERVER_IP:Ljava/lang/String; = "192.168.4.153"

.field private static con:Ljava/net/HttpURLConnection; = null

.field public static sContext:Landroid/content/Context; = null

.field private static state:I = -0x1

.field private static url:Ljava/net/URL;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adID:Ljava/lang/String;

.field public bButtonClick:Z

.field public bLockClick:Z

.field public bRotate:I

.field public bVRClick:Z

.field public bfilter_playClick:Z

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private callback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field copyRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isLoad:Z

.field private logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field public nSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    const-string v0, "unadsdk"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "Adgo-app-5138325721"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->adID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->isLoad:Z

    .line 64
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->bVRClick:Z

    .line 65
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    .line 66
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->bButtonClick:Z

    .line 67
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->bfilter_playClick:Z

    .line 68
    iput v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    .line 74
    const-class v0, Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 133
    new-instance v0, Lcom/tzh/wifi/wificam/WiFiApp$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/WiFiApp$1;-><init>(Lcom/tzh/wifi/wificam/WiFiApp;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Lcom/tzh/wifi/wificam/WiFiApp$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/WiFiApp$2;-><init>(Lcom/tzh/wifi/wificam/WiFiApp;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->copyRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/WiFiApp;)Lcom/tzh/wifi/wificam/utils/LogUtils;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/WiFiApp;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->copyMusics()V

    return-void
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/WiFiApp;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private copyMusics()V
    .locals 11

    .line 174
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/HandClap.mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    .line 176
    :cond_0
    const-string v0, "MJPEG"

    const-string v1, "copy file..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 179
    :try_start_0
    const-string v1, "musics"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "musics/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v5, 0x400

    .line 183
    :try_start_2
    new-array v5, v5, [B

    .line 185
    :goto_1
    invoke-virtual {v6, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 186
    invoke-virtual {v7, v5, v3, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 188
    :cond_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 181
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private getLocalIP(Landroid/content/Context;)I
    .locals 3

    .line 155
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 159
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 160
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p1

    .line 161
    iget p1, p1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    .line 162
    const-string v0, "192.168.4.151"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 164
    :cond_0
    const-string v0, "192.168.4.153"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WIFI\u7684IP\u5730\u5740\u662f:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 199
    :cond_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 200
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

    .line 201
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 202
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private initDialog()V
    .locals 2

    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lcom/kongzue/dialog/util/DialogSettings;->isUseBlur:Z

    .line 106
    sget-object v1, Lcom/kongzue/dialog/util/DialogSettings$STYLE;->STYLE_IOS:Lcom/kongzue/dialog/util/DialogSettings$STYLE;

    sput-object v1, Lcom/kongzue/dialog/util/DialogSettings;->style:Lcom/kongzue/dialog/util/DialogSettings$STYLE;

    .line 107
    sput-boolean v0, Lcom/kongzue/dialog/util/DialogSettings;->DEBUGMODE:Z

    const/16 v0, 0x80

    .line 108
    sput v0, Lcom/kongzue/dialog/util/DialogSettings;->blurAlpha:I

    .line 109
    const-string v0, "\u53d6\u6d88\u9009\u62e9"

    sput-object v0, Lcom/kongzue/dialog/util/DialogSettings;->defaultCancelButtonText:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/kongzue/dialog/util/DialogSettings;->init()V

    return-void
.end method

.method public static isNetOnline()Z
    .locals 7

    .line 262
    const-string v0, "FragmentNet"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    .line 266
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://www.baidu.com"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/tzh/wifi/wificam/WiFiApp;->url:Ljava/net/URL;

    .line 267
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    sput-object v5, Lcom/tzh/wifi/wificam/WiFiApp;->con:Ljava/net/HttpURLConnection;

    .line 268
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    sput v5, Lcom/tzh/wifi/wificam/WiFiApp;->state:I

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetOnline counts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "=state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/tzh/wifi/wificam/WiFiApp;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget v0, Lcom/tzh/wifi/wificam/WiFiApp;->state:I
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

    .line 277
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

    .line 228
    const-string v0, "unadsdk"

    .line 231
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ping -c 1 -w 1 www.baidu.com"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, -0x1

    .line 234
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x96

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 236
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v4

    .line 237
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

    .line 252
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

    .line 253
    throw v1

    .line 252
    :catch_1
    const-string v1, "result = IOException"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private useNetwork()V
    .locals 3

    .line 285
    const-string v0, "unadsdk"

    const-string v1, "change network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 287
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0xc

    .line 288
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 289
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/tzh/wifi/wificam/WiFiApp$3;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/WiFiApp$3;-><init>(Lcom/tzh/wifi/wificam/WiFiApp;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/WiFiApp;->callback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 318
    iget-object v2, p0, Lcom/tzh/wifi/wificam/WiFiApp;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method


# virtual methods
.method public adInit()V
    .locals 3

    .line 326
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 327
    invoke-direct {p0, p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "unadsdk"

    const-string v1, "init sdk"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lcom/unad/sdk/dto/UNADConfig$Builder;

    invoke-direct {v0}, Lcom/unad/sdk/dto/UNADConfig$Builder;-><init>()V

    const/4 v1, 0x0

    .line 331
    invoke-virtual {v0, v1}, Lcom/unad/sdk/dto/UNADConfig$Builder;->disablePersonalRecommand(Z)Lcom/unad/sdk/dto/UNADConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 332
    invoke-virtual {v0, v1}, Lcom/unad/sdk/dto/UNADConfig$Builder;->setDebug(Z)Lcom/unad/sdk/dto/UNADConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unad/sdk/dto/UNADConfig$Builder;->build()Lcom/unad/sdk/dto/UNADConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/WiFiApp;->adID:Ljava/lang/String;

    new-instance v2, Lcom/tzh/wifi/wificam/WiFiApp$4;

    invoke-direct {v2, p0}, Lcom/tzh/wifi/wificam/WiFiApp$4;-><init>(Lcom/tzh/wifi/wificam/WiFiApp;)V

    .line 330
    invoke-static {v0, v1, p0, v2}, Lcom/unad/sdk/UNAD;->initialize(Lcom/unad/sdk/dto/UNADConfig;Ljava/lang/String;Landroid/app/Application;Lcom/unad/sdk/UNAD$InitCallback;)V

    :cond_0
    return-void
.end method

.method public getIsLoad()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->isLoad:Z

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 79
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 80
    const-string v0, "Application init"

    const-string v1, "unadsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->handler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tzh/wifi/wificam/WiFiApp;->sContext:Landroid/content/Context;

    .line 83
    invoke-static {}, Lcom/tzh/wifi/wificam/utils/UICrashHandler;->getInstance()Lcom/tzh/wifi/wificam/utils/UICrashHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/UICrashHandler;->init(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/WiFiApp;->copyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    const-string v0, "INativeUtils iCameraInit"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraInit()I

    .line 93
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->initDialog()V

    .line 94
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/WiFiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraDeinit()V

    .line 99
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/WiFiApp;->unregister()V

    .line 100
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/WiFiApp;->copyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openWiFi()V
    .locals 2

    .line 115
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/WiFiApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 116
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/tzh/wifi/wificam/WiFiApp;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tzh/wifi/wificam/WiFiApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setIsLoad(Z)V
    .locals 0

    .line 351
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/WiFiApp;->isLoad:Z

    return-void
.end method

.method public unregister()V
    .locals 0

    return-void
.end method
