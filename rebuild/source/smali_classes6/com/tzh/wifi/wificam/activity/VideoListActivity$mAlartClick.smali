.class Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;
.super Ljava/lang/Object;
.source "VideoListActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/VideoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mAlartClick"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;I)V
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

    .line 266
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->index:I

    return-void
.end method


# virtual methods
.method public OnCancelClick()V
    .locals 0

    return-void
.end method

.method public OnConfirmClick()V
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$000(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "/.videoPic/"

    const-string v4, "/video/"

    const-string v5, ".jpg"

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$100(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Ljava/io/File;)V

    .line 280
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 282
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v0, v1, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 285
    :cond_0
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$100(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Ljava/io/File;)V

    .line 290
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v0, v1, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$000(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$200(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 298
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v1, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$100(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Ljava/io/File;)V

    .line 299
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v1, v0, v6, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 303
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$200(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$300(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->notifyDataSetChanged()V

    .line 305
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$200(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$400(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;->this$0:Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->access$400(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
