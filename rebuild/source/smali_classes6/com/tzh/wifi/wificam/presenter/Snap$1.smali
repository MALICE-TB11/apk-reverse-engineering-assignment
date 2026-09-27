.class Lcom/tzh/wifi/wificam/presenter/Snap$1;
.super Ljava/lang/Object;
.source "Snap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/presenter/Snap;->takePhoto(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

.field final synthetic val$srcBmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/presenter/Snap;Landroid/graphics/Bitmap;)V
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

    .line 165
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->val$srcBmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "width:"

    .line 168
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$100()F

    move-result v2

    invoke-static {v1, v2}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$002(Lcom/tzh/wifi/wificam/presenter/Snap;F)F

    .line 169
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$100()F

    move-result v2

    invoke-static {v1, v2}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$202(Lcom/tzh/wifi/wificam/presenter/Snap;F)F

    .line 170
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$300(Lcom/tzh/wifi/wificam/presenter/Snap;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$000(Lcom/tzh/wifi/wificam/presenter/Snap;)F

    move-result v2

    iget-object v3, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$200(Lcom/tzh/wifi/wificam/presenter/Snap;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$400(Lcom/tzh/wifi/wificam/presenter/Snap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$300(Lcom/tzh/wifi/wificam/presenter/Snap;)Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->val$srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->val$srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$300(Lcom/tzh/wifi/wificam/presenter/Snap;)Landroid/graphics/Matrix;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v3}, Lcom/tzh/wifi/wificam/presenter/Snap;->access$500(Lcom/tzh/wifi/wificam/presenter/Snap;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 178
    iget-object v3, p0, Lcom/tzh/wifi/wificam/presenter/Snap$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Snap;

    iget-object v3, v3, Lcom/tzh/wifi/wificam/presenter/Snap;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 179
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 180
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 181
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method
