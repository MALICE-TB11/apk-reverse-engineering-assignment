.class Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$2;
.super Ljava/lang/Object;
.source "PrivacyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->showIfNecessary(Landroid/app/Activity;Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$2;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$2;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    if-eqz p1, :cond_0

    .line 287
    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;->onPrivacyRejected()V

    return-void

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
