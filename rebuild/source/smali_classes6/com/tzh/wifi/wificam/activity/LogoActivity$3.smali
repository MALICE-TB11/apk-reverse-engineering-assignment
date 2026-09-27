.class Lcom/tzh/wifi/wificam/activity/LogoActivity$3;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Lcom/unad/sdk/UNADBannerAdLoader$UNADBannerADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/LogoActivity;->loadBanner()V
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

    .line 136
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onADClosed$1$com-tzh-wifi-wificam-activity-LogoActivity$3()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$100(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$onADReceive$0$com-tzh-wifi-wificam-activity-LogoActivity$3()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$100(Lcom/tzh/wifi/wificam/activity/LogoActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onADClicked()V
    .locals 2

    .line 147
    const-string v0, "LogoActivityAD"

    const-string v1, "onADClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADClosed()V
    .locals 2

    .line 144
    const-string v0, "LogoActivityAD"

    const-string v1, "onADClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/LogoActivity$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$3$$ExternalSyntheticLambda1;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 1

    .line 137
    const-string p1, "LogoActivityAD"

    const-string v0, "onADError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADPresent()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 2

    .line 139
    const-string v0, "LogoActivityAD"

    const-string v1, "onADReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/LogoActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/LogoActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/tzh/wifi/wificam/activity/LogoActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
