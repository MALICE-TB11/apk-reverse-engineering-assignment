.class Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;
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

    .line 461
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 464
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$800(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$900(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)J

    move-result-wide v2

    sub-long v11, v0, v2

    .line 466
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/AblumUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 468
    invoke-static {v5}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$800(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 469
    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$900(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)J

    move-result-wide v7

    const/16 v9, 0x780

    const/16 v10, 0x438

    .line 466
    invoke-virtual/range {v4 .. v12}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->insertVideoToMediaStore(Landroid/content/Context;Ljava/lang/String;JIIJ)V

    .line 473
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$1000(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
