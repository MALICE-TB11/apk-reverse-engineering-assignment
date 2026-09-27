.class Lcom/tzh/wifi/wificam/activity/PlayActivity$16;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/unad/sdk/UNADRewarded$UNADRewardedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;->initUNADReInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1967
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 0

    return-void
.end method

.method public onADError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 3

    .line 2007
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onADError:==code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADPresent()V
    .locals 2

    .line 1979
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onADPresent:=="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADReceive()V
    .locals 3

    .line 1972
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAdLoaded:=="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const-string v1, "\u5e7f\u544a\u52a0\u8f7d\u6210\u529f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1974
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->showReIAD()V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 2002
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClose:=="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReward(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1984
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReward:=="

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const-string v0, "\u5f97\u5230\u4e86\u5956\u52b1"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1986
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const-class v0, Lcom/tzh/wifi/wificam/activity/MusicActivity;

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$2000(Lcom/tzh/wifi/wificam/activity/PlayActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1997
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoComplete:=="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
