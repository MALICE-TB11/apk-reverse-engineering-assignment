.class Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;
.super Ljava/lang/Object;
.source "VideoListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/VideoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 438
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->isEncodingVadio()I

    move-result v0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$700(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$800(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$900(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)J

    move-result-wide v2

    sub-long v11, v0, v2

    .line 442
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/AblumUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 444
    invoke-static {v5}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$800(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 445
    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$900(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)J

    move-result-wide v7

    const/16 v9, 0x280

    const/16 v10, 0x1e0

    .line 442
    invoke-virtual/range {v4 .. v12}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->insertVideoToMediaStore(Landroid/content/Context;Ljava/lang/String;JIIJ)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel upload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$800(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$502(Lcom/tzh/wifi/wificam/activity/VideoListActivity;I)I

    .line 453
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$600(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mEncodingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
