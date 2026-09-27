.class public Lcom/tzh/wifi/wificam/model/face/FaceDector;
.super Ljava/lang/Object;
.source "FaceDector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;
    }
.end annotation


# instance fields
.field bFaceDector:Z

.field bmpOptions:Landroid/graphics/BitmapFactory$Options;

.field private cameraListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

.field private faceAysncTask:Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;

.field logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mFaceDetecotr:Landroid/media/FaceDetector;

.field private mFaces:[Landroid/media/FaceDetector$Face;

.field private matrix:Landroid/graphics/Matrix;

.field private maxFace:I

.field picData:[B

.field piclength:I

.field private rotateAngle:I


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/model/listener/INativeListener;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->maxFace:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->mFaceDetecotr:Landroid/media/FaceDetector;

    .line 22
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->faceAysncTask:Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;

    .line 23
    const-class v1, Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bFaceDector:Z

    .line 25
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bmpOptions:Landroid/graphics/BitmapFactory$Options;

    const v2, 0x64000

    .line 26
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->picData:[B

    .line 27
    iput v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->piclength:I

    .line 28
    iput v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->rotateAngle:I

    .line 29
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->matrix:Landroid/graphics/Matrix;

    .line 30
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->cameraListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    .line 33
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bmpOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 34
    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->cameraListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Lcom/tzh/wifi/wificam/model/listener/INativeListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->cameraListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Landroid/graphics/Matrix;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/model/face/FaceDector;)Landroid/media/FaceDetector;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->mFaceDetecotr:Landroid/media/FaceDetector;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tzh/wifi/wificam/model/face/FaceDector;Landroid/media/FaceDetector;)Landroid/media/FaceDetector;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->mFaceDetecotr:Landroid/media/FaceDetector;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/model/face/FaceDector;)[Landroid/media/FaceDetector$Face;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->mFaces:[Landroid/media/FaceDetector$Face;

    return-object p0
.end method

.method static synthetic access$302(Lcom/tzh/wifi/wificam/model/face/FaceDector;[Landroid/media/FaceDetector$Face;)[Landroid/media/FaceDetector$Face;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->mFaces:[Landroid/media/FaceDetector$Face;

    return-object p1
.end method


# virtual methods
.method public onFaceDector([BII)V
    .locals 2

    .line 38
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bFaceDector:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->bFaceDector:Z

    .line 40
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->picData:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 41
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->picData:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iput p2, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->piclength:I

    .line 43
    iput p3, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->rotateAngle:I

    .line 44
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/face/FaceDector;->matrix:Landroid/graphics/Matrix;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 45
    new-instance p1, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;-><init>(Lcom/tzh/wifi/wificam/model/face/FaceDector;)V

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/model/face/FaceDector$FaceAysncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
