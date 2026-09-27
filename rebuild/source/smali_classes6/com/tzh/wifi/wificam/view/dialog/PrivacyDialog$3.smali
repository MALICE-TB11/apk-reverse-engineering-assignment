.class Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;
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

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/app/Activity;Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$callback:Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "privacy_accepted"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 254
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;->val$activity:Landroid/app/Activity;

    new-instance p2, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;

    invoke-direct {p2, p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3$1;-><init>(Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$3;)V

    invoke-static {p1, p2}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showLocationPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    return-void
.end method
