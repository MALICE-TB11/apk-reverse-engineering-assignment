.class Lcom/tzh/wifi/wificam/activity/PlayActivity$10;
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

    .line 1620
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$10;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1623
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$10;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$10;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v1

    iget-object v1, v1, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$10;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method
