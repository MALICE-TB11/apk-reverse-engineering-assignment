.class Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$1;
.super Landroid/text/style/ClickableSpan;
.source "PrivacyDialog.java"


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

.field final synthetic val$link:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$1;->val$link:Ljava/lang/String;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 219
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$1;->val$link:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
