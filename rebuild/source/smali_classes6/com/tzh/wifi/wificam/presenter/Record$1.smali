.class Lcom/tzh/wifi/wificam/presenter/Record$1;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/presenter/Record;->takeSnap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/Record;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/presenter/Record;Landroid/graphics/Bitmap;)V
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

    .line 45
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Record;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "width:"

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Record;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/Record;->access$000(Lcom/tzh/wifi/wificam/presenter/Record;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Record;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/Record;->access$100(Lcom/tzh/wifi/wificam/presenter/Record;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Record;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/presenter/Record;->access$000(Lcom/tzh/wifi/wificam/presenter/Record;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 53
    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Record;

    iget-object v2, v2, Lcom/tzh/wifi/wificam/presenter/Record;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 55
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record$1;->this$0:Lcom/tzh/wifi/wificam/presenter/Record;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/presenter/Record;->access$102(Lcom/tzh/wifi/wificam/presenter/Record;Z)Z

    return-void
.end method
