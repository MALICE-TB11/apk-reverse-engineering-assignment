.class Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;
.super Ljava/lang/Object;
.source "FilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickUploadListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;I)V
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

    .line 145
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;->this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 152
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;->this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->access$200(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;->this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->access$200(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;

    move-result-object p1

    iget v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;->index:I

    invoke-interface {p1, v0}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;->onFileUpload(I)V

    :cond_0
    return-void
.end method
