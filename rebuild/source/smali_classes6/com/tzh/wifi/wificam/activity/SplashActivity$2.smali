.class Lcom/tzh/wifi/wificam/activity/SplashActivity$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/SplashActivity;->useNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAvailable$0$com-tzh-wifi-wificam-activity-SplashActivity$2()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$600(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$500(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onAvailable$1$com-tzh-wifi-wificam-activity-SplashActivity$2()V
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$200(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$300(Lcom/tzh/wifi/wificam/activity/SplashActivity;)I

    move-result v2

    const-string v3, "Adgo-unit-8488582055"

    invoke-static {v0, v0, v1, v3, v2}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$400(Lcom/tzh/wifi/wificam/activity/SplashActivity;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;I)V

    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 290
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 291
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/SplashActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/tzh/wifi/wificam/activity/SplashActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$100(Lcom/tzh/wifi/wificam/activity/SplashActivity;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 297
    :goto_0
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->isNetOnline()Z

    move-result p1

    const-string v0, "unadsdk"

    if-eqz p1, :cond_1

    .line 298
    const-string p1, "\u5207\u6362\u540e\u6709\u7f51\u7edc"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    :cond_1
    const-string p1, "\u5207\u6362\u540e\u6ca1\u6709\u7f51\u7edc"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/WiFiApp;->getIsLoad()Z

    move-result p1

    if-nez p1, :cond_2

    .line 303
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->adInit()V

    .line 305
    :cond_2
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/SplashActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/SplashActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/tzh/wifi/wificam/activity/SplashActivity$2;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 316
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
