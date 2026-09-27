.class Lcom/tzh/wifi/wificam/activity/PlayActivity$7;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;->OnBitmapFixed(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1341
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1344
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1000(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/DisplayImage;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1345
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1100(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/DisplayImage;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1346
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1200(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/DisplayImage;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1348
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-boolean v2, v2, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$700()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1349
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mFaceTask:Lcom/hmx/recognition/FaceTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1350
    sget-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$19;->$SwitchMap$android$os$AsyncTask$Status:[I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v3, v3, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mFaceTask:Lcom/hmx/recognition/FaceTask;

    invoke-virtual {v3}, Lcom/hmx/recognition/FaceTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mFaceTask:Lcom/hmx/recognition/FaceTask;

    invoke-virtual {v0, v1}, Lcom/hmx/recognition/FaceTask;->cancel(Z)Z

    .line 1359
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0, v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$802(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z

    .line 1360
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    new-instance v3, Lcom/hmx/recognition/FaceTask;

    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v5, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Lcom/hmx/recognition/FaceTask;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;Landroid/graphics/Bitmap;)V

    iput-object v3, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mFaceTask:Lcom/hmx/recognition/FaceTask;

    .line 1361
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mFaceTask:Lcom/hmx/recognition/FaceTask;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/Void;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/hmx/recognition/FaceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
