.class Lcom/tzh/wifi/wificam/activity/PlayActivity$12;
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

    .line 1634
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1637
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1638
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getPathPoint()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1640
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getPathLen()F

    move-result v0

    float-to-long v0, v0

    const-wide/16 v2, 0x8

    div-long v8, v0, v2

    .line 1641
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "animation time "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1642
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v4}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getPathPoint()Ljava/util/Collection;

    move-result-object v7

    const-string v6, "fab"

    invoke-static/range {v4 .. v9}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1600(Lcom/tzh/wifi/wificam/activity/PlayActivity;Landroid/view/View;Ljava/lang/String;Ljava/util/Collection;J)V

    .line 1643
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
