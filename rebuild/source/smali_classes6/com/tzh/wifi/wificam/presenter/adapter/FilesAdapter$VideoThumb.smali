.class public Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;
.super Landroid/os/AsyncTask;
.source "FilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoThumb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private iv_image:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 188
    iput-object p3, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->iv_image:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 194
    aget-object p1, p1, v0

    .line 195
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 183
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->doInBackground([Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 209
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->iv_image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->iv_image:Landroid/widget/ImageView;

    const v0, 0x7f0f0023

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 183
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 203
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
