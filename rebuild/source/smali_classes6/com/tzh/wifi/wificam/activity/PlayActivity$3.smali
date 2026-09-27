.class Lcom/tzh/wifi/wificam/activity/PlayActivity$3;
.super Landroid/os/Handler;
.source "PlayActivity.java"


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

    .line 1136
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1140
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x5

    const/4 v3, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1160
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1161
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0, v3}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$302(Lcom/tzh/wifi/wificam/activity/PlayActivity;I)I

    .line 1162
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 1165
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handRecordDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    .line 1168
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handSnapDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    .line 1151
    :cond_3
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_rotate_click_up()V

    return-void

    .line 1142
    :cond_4
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    mul-int/lit16 v0, v0, 0xb4

    invoke-virtual {p1, v6, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->onAutoPhotoClick(ZI)V

    .line 1143
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {p1, v3}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$302(Lcom/tzh/wifi/wificam/activity/PlayActivity;I)I

    .line 1144
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1145
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->faceDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v0, "Constance recive a message!"

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 1155
    :cond_5
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->switchSearch()V

    return-void
.end method
