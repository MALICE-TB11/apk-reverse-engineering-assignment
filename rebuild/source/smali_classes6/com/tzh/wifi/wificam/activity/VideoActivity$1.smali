.class Lcom/tzh/wifi/wificam/activity/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 208
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 211
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 212
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->oldtime:J

    .line 213
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$002(Lcom/tzh/wifi/wificam/activity/VideoActivity;D)D

    const/4 v0, 0x1

    .line 215
    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$102(Z)Z

    .line 216
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$202(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z

    const/4 v1, 0x0

    .line 217
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$200(Lcom/tzh/wifi/wificam/activity/VideoActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 219
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime1:J

    .line 220
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iget-wide v4, v3, Lcom/tzh/wifi/wificam/activity/VideoActivity;->offsettime:D

    iget-object v6, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iget-wide v6, v6, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime1:J

    iget-object v8, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iget-wide v8, v8, Lcom/tzh/wifi/wificam/activity/VideoActivity;->oldtime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$002(Lcom/tzh/wifi/wificam/activity/VideoActivity;D)D

    .line 221
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$000(Lcom/tzh/wifi/wificam/activity/VideoActivity;)D

    move-result-wide v3

    double-to-int v3, v3

    if-eq v3, v1, :cond_1

    .line 224
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 225
    iput v0, v1, Landroid/os/Message;->what:I

    .line 226
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iget-object v4, v4, Lcom/tzh/wifi/wificam/activity/VideoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v1, v3

    .line 228
    :cond_1
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$000(Lcom/tzh/wifi/wificam/activity/VideoActivity;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v5}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$300(Lcom/tzh/wifi/wificam/activity/VideoActivity;)I

    move-result v5

    int-to-double v5, v5

    cmpl-double v7, v3, v5

    if-ltz v7, :cond_2

    .line 229
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    iput-boolean v0, v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isOver:Z

    .line 230
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v1, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$202(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z

    .line 231
    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$102(Z)Z

    return-void

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$000(Lcom/tzh/wifi/wificam/activity/VideoActivity;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/tzh/wifi/utils/Camera;->iCameraGetOneSecond(D)[B

    move-result-object v3

    .line 235
    array-length v4, v3

    invoke-static {v3, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 238
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v4}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$500(Lcom/tzh/wifi/wificam/activity/VideoActivity;)Landroid/graphics/Matrix;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$402(Lcom/tzh/wifi/wificam/activity/VideoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 239
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$600()Lcom/tzh/wifi/wificam/view/SurfaceViews;

    move-result-object v3

    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v4}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$400(Lcom/tzh/wifi/wificam/activity/VideoActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_3
    return-void
.end method
