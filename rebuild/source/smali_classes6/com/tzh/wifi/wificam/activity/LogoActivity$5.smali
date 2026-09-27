.class Lcom/tzh/wifi/wificam/activity/LogoActivity$5;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/LogoActivity;->useNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAvailable$0$com-tzh-wifi-wificam-activity-LogoActivity$5()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->refreshBanner()V

    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 272
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 273
    const-string v0, "\u5df2\u6839\u636e\u529f\u80fd\u548c\u4f20\u8f93\u7c7b\u578b\u627e\u5230\u5408\u9002\u7684\u7f51\u7edc"

    const-string v1, "LogoActivityAD"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 275
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$300(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 279
    :goto_0
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->isNetOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    const-string p1, "\u5207\u6362\u540e\u6709\u7f51\u7edc"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 282
    :cond_1
    const-string p1, "\u5207\u6362\u540e\u6ca1\u6709\u7f51\u7edc"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/LogoActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$5$$ExternalSyntheticLambda0;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity$5;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 287
    const-string p1, "LogoActivityAD"

    const-string v0, "onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 286
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "LogoActivityAD"

    const-string v1, "onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
