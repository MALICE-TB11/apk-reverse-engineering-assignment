.class Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Lcom/unad/sdk/UNADFeedAd$UNADFeedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->initNativeExpressAD()V
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

    .line 117
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 0

    return-void
.end method

.method public onADClosed(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UI   :onClose"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$2;-><init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onADError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    .line 156
    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lcom/unad/sdk/dto/UnadError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    .line 157
    const-string p1, "onNoAD, error code: %S, error msg: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onADPresent(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 0

    return-void
.end method

.method public onADReceive(Lcom/unad/sdk/UNADFeedAdView;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UI   :onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$100(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p1}, Lcom/unad/sdk/UNADFeedAdView;->render()V

    .line 124
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$1;-><init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;)V

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
