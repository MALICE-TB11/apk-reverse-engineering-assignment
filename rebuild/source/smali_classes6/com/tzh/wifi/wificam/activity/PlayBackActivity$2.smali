.class Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PlayBackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->useNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 222
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 224
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5df2\u6839\u636e\u529f\u80fd\u548c\u4f20\u8f93\u7c7b\u578b\u627e\u5230\u5408\u9002\u7684\u7f51\u7edc"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 235
    :goto_0
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->isNetOnline()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5207\u6362\u540e\u6709\u7f51\u7edc"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5207\u6362\u540e\u6ca1\u6709\u7f51\u7edc"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2$1;-><init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 255
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 250
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 251
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
