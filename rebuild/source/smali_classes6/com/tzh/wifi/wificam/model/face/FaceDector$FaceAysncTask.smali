.class public Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;
.super Landroid/os/AsyncTask;
.source "FaceDector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/model/face/FaceDector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceAysncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/model/face/FaceDector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    .line 69
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/model/face/FaceDector;->picData:[B

    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    iget v0, v0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->piclength:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bmpOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$100(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Landroid/graphics/Matrix;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$202(Lcom/tzh/wifi/wificam/model/face/FaceDector;Landroid/media/FaceDetector;)Landroid/media/FaceDetector;

    .line 73
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    new-array v1, v4, [Landroid/media/FaceDetector$Face;

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$302(Lcom/tzh/wifi/wificam/model/face/FaceDector;[Landroid/media/FaceDetector$Face;)[Landroid/media/FaceDetector$Face;

    .line 74
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$200(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Landroid/media/FaceDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$300(Lcom/tzh/wifi/wificam/model/face/FaceDector;)[Landroid/media/FaceDetector$Face;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v2

    .line 75
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/model/face/FaceDector;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "face:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/model/face/FaceDector;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v0, "bitmap is null!"

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 79
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 49
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$000(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/model/face/FaceDector;->access$000(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/model/listener/INativeListener;->iFaceDector()V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->this$0:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bFaceDector:Z

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

    .line 49
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
