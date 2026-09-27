.class Lcom/tzh/wifi/wificam/activity/LogoActivity$2;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Lcom/unad/sdk/UNADFeedAd$UNADFeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/LogoActivity;->initNativeExpressAD()V
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

    .line 107
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onADClosed$1$com-tzh-wifi-wificam-activity-LogoActivity$2()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$100(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onADReceive$0$com-tzh-wifi-wificam-activity-LogoActivity$2()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$100(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onADClicked(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 0

    return-void
.end method

.method public onADClosed(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 1

    .line 121
    const-string p1, "LogoActivityAD"

    const-string v0, "UI   :onClose"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity$2;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "onNoAD, error code: %S, error msg: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogoActivityAD"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADPresent(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 0

    return-void
.end method

.method public onADReceive(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 2

    .line 110
    const-string v0, "LogoActivityAD"

    const-string v1, "UI   :onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$100(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p1}, Lcom/unad/sdk/UNADFeedAdView;->render()V

    .line 113
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/LogoActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity$2;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
