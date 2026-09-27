.class Lcom/tzh/wifi/wificam/WiFiApp$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WiFiApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/WiFiApp;->useNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/WiFiApp;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/WiFiApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/tzh/wifi/wificam/WiFiApp$3;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 294
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 295
    const-string v0, "\u5df2\u6839\u636e\u529f\u80fd\u548c\u4f20\u8f93\u7c7b\u578b\u627e\u5230\u5408\u9002\u7684\u7f51\u7edc"

    const-string v1, "unadsdk"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp$3;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/WiFiApp;->access$200(Lcom/tzh/wifi/wificam/WiFiApp;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 301
    :goto_0
    invoke-static {}, Lcom/tzh/wifi/wificam/WiFiApp;->isNetOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    const-string p1, "\u5207\u6362\u540e\u6709\u7f51\u7edc"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_1
    const-string p1, "\u5207\u6362\u540e\u6ca1\u6709\u7f51\u7edc"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/WiFiApp$3;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/WiFiApp;->adInit()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 315
    const-string p1, "unadsdk"

    const-string v0, "onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 310
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 311
    const-string v0, "unadsdk"

    const-string v1, "onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
