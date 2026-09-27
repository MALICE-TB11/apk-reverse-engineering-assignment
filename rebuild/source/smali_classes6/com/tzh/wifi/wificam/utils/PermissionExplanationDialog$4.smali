.class Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;
.super Ljava/lang/Object;
.source "PermissionExplanationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showAppListPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;->val$callback:Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 68
    :try_start_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;->val$context:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 69
    check-cast p1, Landroid/app/Activity;

    const-string p2, "android.permission.QUERY_ALL_PACKAGES"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3ea

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "package:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    iget-object p2, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;->val$callback:Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;->onConfirm()V

    :cond_1
    return-void
.end method
