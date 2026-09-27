.class Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;
.super Ljava/lang/Object;
.source "VideoListActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/VideoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mAlartUploadClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCancelClick()V
    .locals 2

    .line 365
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->isEncodingVadio()I

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$502(Lcom/tzh/wifi/wificam/activity/VideoListActivity;I)I

    .line 367
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$600(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V

    :cond_0
    return-void
.end method

.method public OnConfirmClick()V
    .locals 1

    .line 358
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraEncodeStop()I

    .line 359
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->clearEncodingState()V

    return-void
.end method
