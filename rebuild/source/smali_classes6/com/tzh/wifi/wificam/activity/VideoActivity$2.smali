.class Lcom/tzh/wifi/wificam/activity/VideoActivity$2;
.super Landroid/os/Handler;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->Pause()V

    return-void

    .line 301
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$902(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z

    return-void

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$902(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z

    return-void

    .line 261
    :cond_3
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$800()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity$2$1;-><init>(Lcom/tzh/wifi/wificam/activity/VideoActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
