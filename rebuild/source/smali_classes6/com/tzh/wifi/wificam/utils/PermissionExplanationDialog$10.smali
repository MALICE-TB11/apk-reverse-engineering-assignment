.class Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$10;
.super Ljava/lang/Object;
.source "PermissionExplanationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showAudioPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$10;->val$callback:Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$10;->val$callback:Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;->onConfirm()V

    :cond_0
    return-void
.end method
