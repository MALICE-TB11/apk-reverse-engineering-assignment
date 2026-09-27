.class Lcom/tzh/wifi/wificam/activity/PlayActivity$8;
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

    .line 1422
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1425
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1302(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z

    .line 1426
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v0

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v3

    iget v3, v3, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {v0, v2, v3}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 1427
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v0

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v3

    iget-object v3, v3, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method
