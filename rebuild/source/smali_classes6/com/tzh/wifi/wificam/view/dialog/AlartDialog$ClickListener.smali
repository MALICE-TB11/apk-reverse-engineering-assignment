.class Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;
.super Ljava/lang/Object;
.source "AlartDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;-><init>(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    .line 170
    :pswitch_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    move-result-object p1

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;->OnCancelClick()V

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->dismiss()V

    return-void

    .line 163
    :pswitch_2
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    move-result-object p1

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;->OnConfirmClick()V

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->dismiss()V

    return-void

    .line 157
    :pswitch_3
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    move-result-object p1

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;->OnCancelClick()V

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;->this$0:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0067
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
