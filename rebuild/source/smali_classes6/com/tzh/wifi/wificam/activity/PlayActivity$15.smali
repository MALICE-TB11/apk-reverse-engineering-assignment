.class Lcom/tzh/wifi/wificam/activity/PlayActivity$15;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/unad/sdk/UNADInterstitial$UNADInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;->initUNADInterstitial()V
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

    .line 1909
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 2

    .line 1942
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u70b9\u51fb\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADClosed()V
    .locals 2

    .line 1948
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5173\u95ed\u5e7f\u544a"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const-class v1, Lcom/tzh/wifi/wificam/activity/MusicActivity;

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1900(Lcom/tzh/wifi/wificam/activity/PlayActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public onADError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 3

    .line 1913
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

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

.method public onADOpened()V
    .locals 2

    .line 1936
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5e7f\u544a\u6253\u5f00"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADPresent()V
    .locals 0

    return-void
.end method

.method public onADReceive()V
    .locals 2

    .line 1923
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->showIAD()V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1930
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u89c6\u9891\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
