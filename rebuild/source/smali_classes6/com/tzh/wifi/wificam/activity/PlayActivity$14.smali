.class Lcom/tzh/wifi/wificam/activity/PlayActivity$14;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;
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

    .line 1876
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1879
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->stop()V

    .line 1882
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mCloseVoiceControl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
