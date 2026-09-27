.class Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 392
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iget-wide v0, p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime1:J

    iput-wide v0, p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->oldtime:J

    .line 393
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    int-to-double p2, p2

    iput-wide p2, p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->offsettime:D

    .line 395
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iget-boolean p1, p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isOver:Z

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isOver:Z

    .line 397
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$202(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z

    .line 398
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iput-wide p2, p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->offsettime:D

    .line 399
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->Play()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 413
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-double v0, p1

    .line 414
    invoke-static {v0, v1}, Lcom/tzh/wifi/utils/Camera;->iCameraGetOneSecond(D)[B

    .line 415
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeUtils;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeUtils;-><init>(J)V

    .line 416
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$800()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/TimeUtils;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
