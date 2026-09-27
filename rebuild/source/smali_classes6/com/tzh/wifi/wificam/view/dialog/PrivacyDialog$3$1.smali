.class Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;
.super Ljava/lang/Object;
.source "PrivacyDialog.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;->this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;->this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;->this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    invoke-interface {v0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;->onPrivacyAccepted()V

    :cond_0
    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;->this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$activity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 267
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;->this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;->this$0:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    invoke-interface {v0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;->onPrivacyAccepted()V

    :cond_0
    return-void
.end method
