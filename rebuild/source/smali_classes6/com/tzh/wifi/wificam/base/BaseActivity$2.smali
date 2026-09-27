.class Lcom/tzh/wifi/wificam/base/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/base/BaseActivity;->requestLocationPermission()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/base/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/tzh/wifi/wificam/base/BaseActivity$2;->this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity$2;->this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;

    const-string v1, "\u9700\u8981\u5b9a\u4f4d\u6743\u9650\u624d\u80fd\u4f7f\u7528\u4f4d\u7f6e\u76f8\u5173\u529f\u80fd"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity$2;->this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;

    .line 137
    invoke-static {v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->access$100(Lcom/tzh/wifi/wificam/base/BaseActivity;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    .line 136
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
