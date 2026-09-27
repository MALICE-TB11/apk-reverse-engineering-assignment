.class Lcom/hmx/recognition/FaceTask$1;
.super Ljava/lang/Object;
.source "FaceTask.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hmx/recognition/FaceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hmx/recognition/FaceTask;


# direct methods
.method constructor <init>(Lcom/hmx/recognition/FaceTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/hmx/recognition/FaceTask$1;->this$0:Lcom/hmx/recognition/FaceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 37
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/16 v0, 0xf0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask$1;->this$0:Lcom/hmx/recognition/FaceTask;

    invoke-static {p1}, Lcom/hmx/recognition/FaceTask;->access$000(Lcom/hmx/recognition/FaceTask;)Lcom/tzh/wifi/wificam/activity/PlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setHandPalm()V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask$1;->this$0:Lcom/hmx/recognition/FaceTask;

    invoke-static {p1}, Lcom/hmx/recognition/FaceTask;->access$000(Lcom/hmx/recognition/FaceTask;)Lcom/tzh/wifi/wificam/activity/PlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->resetHandRect()V

    goto :goto_0

    .line 41
    :cond_0
    :pswitch_2
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask$1;->this$0:Lcom/hmx/recognition/FaceTask;

    invoke-static {p1}, Lcom/hmx/recognition/FaceTask;->access$000(Lcom/hmx/recognition/FaceTask;)Lcom/tzh/wifi/wificam/activity/PlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setHandFist()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask$1;->this$0:Lcom/hmx/recognition/FaceTask;

    invoke-static {p1}, Lcom/hmx/recognition/FaceTask;->access$000(Lcom/hmx/recognition/FaceTask;)Lcom/tzh/wifi/wificam/activity/PlayActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setWaitFalse()V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0xfd
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
