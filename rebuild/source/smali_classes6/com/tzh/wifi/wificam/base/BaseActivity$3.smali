.class Lcom/tzh/wifi/wificam/base/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/base/BaseActivity;->requestAudioPermission()Z
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

    .line 159
    iput-object p1, p0, Lcom/tzh/wifi/wificam/base/BaseActivity$3;->this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity$3;->this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;

    const-string v1, "\u9700\u8981\u9ea6\u514b\u98ce\u6743\u9650\u624d\u80fd\u5f55\u5236\u5e26\u58f0\u97f3\u7684\u89c6\u9891"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/tzh/wifi/wificam/base/BaseActivity$3;->this$0:Lcom/tzh/wifi/wificam/base/BaseActivity;

    .line 163
    invoke-static {v0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->access$200(Lcom/tzh/wifi/wificam/base/BaseActivity;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    .line 162
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
