.class public Lcom/tzh/wifi/wificam/presenter/Snap;
.super Ljava/lang/Object;
.source "Snap.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static PHOTO_SNAP:I = 0x0

.field private static SCALE_FACTOR:F = 1.0f

.field private static VIDEO_SNAP:I = 0x1


# instance fields
.field private bBmpRotate:Z

.field private bTakePhoto:Z

.field private bVideoSnap:Z

.field private hTarget:I

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mContext:Landroid/content/Context;

.field private mThread:Ljava/lang/Thread;

.field private matrix:Landroid/graphics/Matrix;

.field private pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

.field private photoBmp:Landroid/graphics/Bitmap;

.field private photoFile:Ljava/io/File;

.field private scaleX:F

.field private scaleY:F

.field private snapMode:I

.field private startTime:J

.field private videoPhoto:Ljava/lang/String;

.field private wTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 28
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->startTime:J

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bTakePhoto:Z

    .line 31
    const-class v2, Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 32
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->mThread:Ljava/lang/Thread;

    .line 33
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoBmp:Landroid/graphics/Bitmap;

    .line 34
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleX:F

    .line 36
    iput v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleY:F

    .line 37
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bBmpRotate:Z

    .line 38
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->videoPhoto:Ljava/lang/String;

    .line 39
    sget v0, Lcom/tzh/wifi/wificam/presenter/Snap;->PHOTO_SNAP:I

    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->snapMode:I

    .line 40
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bVideoSnap:Z

    .line 41
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->wTarget:I

    .line 42
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->hTarget:I

    .line 48
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/presenter/Snap;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleX:F

    return p0
.end method

.method static synthetic access$002(Lcom/tzh/wifi/wificam/presenter/Snap;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleX:F

    return p1
.end method

.method static synthetic access$100()F
    .locals 1

    .line 23
    sget v0, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    return v0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/presenter/Snap;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleY:F

    return p0
.end method

.method static synthetic access$202(Lcom/tzh/wifi/wificam/presenter/Snap;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleY:F

    return p1
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/presenter/Snap;)Landroid/graphics/Matrix;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/presenter/Snap;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bBmpRotate:Z

    return p0
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/presenter/Snap;)Ljava/io/File;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    return-object p0
.end method

.method private saveSnapPhoto(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "width:"

    .line 217
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 218
    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 219
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 220
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 221
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 224
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    :goto_0
    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 234
    invoke-static {p2, p1, v0, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private startSnap()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 202
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->mThread:Ljava/lang/Thread;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public prepareSnap(IIZ)V
    .locals 2

    .line 55
    :try_start_0
    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/utils/PathUtils;->createPhotoFile()Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->startTime:J

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40c00000    # 6.0f

    .line 94
    sput p1, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    goto :goto_0

    :cond_1
    const/high16 p1, 0x40400000    # 3.0f

    .line 88
    sput p1, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    .line 82
    sput p1, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    .line 102
    :goto_0
    iput-boolean p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bTakePhoto:Z

    .line 103
    iput-boolean p3, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bBmpRotate:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 107
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public run()V
    .locals 9

    .line 243
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    sget v0, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleX:F

    .line 247
    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->scaleY:F

    .line 248
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 249
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bBmpRotate:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    invoke-direct {p0, v1, v0}, Lcom/tzh/wifi/wificam/presenter/Snap;->saveSnapPhoto(Ljava/io/File;Landroid/graphics/Bitmap;)V

    :cond_2
    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bTakePhoto:Z

    return-void
.end method

.method public takePhoto(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tzh/wifi/wificam/presenter/Snap$1;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/presenter/Snap$1;-><init>(Lcom/tzh/wifi/wificam/presenter/Snap;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public takeSnap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bTakePhoto:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoBmp:Landroid/graphics/Bitmap;

    .line 212
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/presenter/Snap;->startSnap()V

    :cond_1
    :goto_0
    return-void
.end method

.method public videoPrepareSnap(IILjava/lang/String;)V
    .locals 0

    .line 113
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    .line 114
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->photoFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    const/4 p2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p2, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x40c00000    # 6.0f

    .line 153
    sput p1, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    goto :goto_0

    :cond_2
    const/high16 p1, 0x40400000    # 3.0f

    .line 147
    sput p1, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    goto :goto_0

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 141
    sput p1, Lcom/tzh/wifi/wificam/presenter/Snap;->SCALE_FACTOR:F

    .line 158
    :goto_0
    iput-boolean p2, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bVideoSnap:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public videoTakeSnap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bVideoSnap:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/Snap;->bVideoSnap:Z

    .line 195
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/presenter/Snap;->takePhoto(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
