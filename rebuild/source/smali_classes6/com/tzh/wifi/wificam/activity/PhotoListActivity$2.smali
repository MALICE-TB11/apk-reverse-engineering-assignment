.class Lcom/tzh/wifi/wificam/activity/PhotoListActivity$2;
.super Ljava/lang/Object;
.source "PhotoListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->showAlartDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

.field final synthetic val$alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$2;->val$alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 192
    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$2;->val$alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    if-eqz p2, :cond_0

    .line 193
    invoke-interface {p2}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;->OnCancelClick()V

    .line 195
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
