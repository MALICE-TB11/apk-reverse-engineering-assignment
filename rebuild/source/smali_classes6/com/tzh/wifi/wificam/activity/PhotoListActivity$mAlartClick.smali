.class Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;
.super Ljava/lang/Object;
.source "PhotoListActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/PhotoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mAlartClick"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p2, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->index:I

    return-void
.end method


# virtual methods
.method public OnCancelClick()V
    .locals 0

    return-void
.end method

.method public OnConfirmClick()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$100(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 219
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v1, v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$200(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Ljava/io/File;)V

    .line 220
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 220
    invoke-static {v1, v0, v2, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 224
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$100(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->index:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$100(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$500(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$500(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
