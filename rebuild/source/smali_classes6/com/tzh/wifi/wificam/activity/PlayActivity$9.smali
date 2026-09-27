.class Lcom/tzh/wifi/wificam/activity/PlayActivity$9;
.super Ljava/lang/Thread;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerStart()V
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

    .line 1442
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$9;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1445
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1447
    :try_start_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$9;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->setupRecognizer(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1449
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1451
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$9;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
