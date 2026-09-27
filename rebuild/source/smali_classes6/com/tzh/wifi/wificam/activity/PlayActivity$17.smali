.class Lcom/tzh/wifi/wificam/activity/PlayActivity$17;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;->requestStoragePermissionForRecord()V
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

    .line 2185
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$17;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 2198
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$17;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const-string v1, "\u9700\u8981\u5b58\u50a8\u6743\u9650\u624d\u80fd\u5f55\u50cf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 2188
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$17;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$2102(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z

    .line 2190
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$17;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
