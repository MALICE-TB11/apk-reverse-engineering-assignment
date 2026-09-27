.class public Lcom/hmx/recognition/FaceTask;
.super Landroid/os/AsyncTask;
.source "FaceTask.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private handler:Landroid/os/Handler;

.field private openCVHelper:Lcom/hmx/recognition/OpenCVHelper;

.field private playActivity:Lcom/tzh/wifi/wificam/activity/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/hmx/recognition/FaceTask$1;

    invoke-direct {v1, p0}, Lcom/hmx/recognition/FaceTask$1;-><init>(Lcom/hmx/recognition/FaceTask;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/hmx/recognition/FaceTask;->handler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/hmx/recognition/OpenCVHelper;

    iget-object v1, p0, Lcom/hmx/recognition/FaceTask;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/hmx/recognition/OpenCVHelper;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/hmx/recognition/FaceTask;->openCVHelper:Lcom/hmx/recognition/OpenCVHelper;

    .line 64
    iput-object p1, p0, Lcom/hmx/recognition/FaceTask;->playActivity:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    .line 66
    iput-object p2, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$000(Lcom/hmx/recognition/FaceTask;)Lcom/tzh/wifi/wificam/activity/PlayActivity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/hmx/recognition/FaceTask;->playActivity:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    return-object p0
.end method

.method private static argbToNv21([III)[B
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x3

    .line 147
    div-int/lit8 v3, v3, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v1, :cond_8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_7

    .line 150
    aget v10, p0, v8

    const/high16 v11, 0xff0000

    and-int/2addr v11, v10

    shr-int/lit8 v11, v11, 0x10

    const v12, 0xff00

    and-int/2addr v12, v10

    shr-int/lit8 v12, v12, 0x8

    const/16 v13, 0xff

    and-int/2addr v10, v13

    mul-int/lit8 v14, v11, 0x42

    mul-int/lit16 v15, v12, 0x81

    add-int/2addr v14, v15

    mul-int/lit8 v15, v10, 0x19

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit8 v14, v14, 0x10

    mul-int/lit8 v15, v11, -0x26

    mul-int/lit8 v16, v12, 0x4a

    sub-int v15, v15, v16

    mul-int/lit8 v16, v10, 0x70

    add-int v15, v15, v16

    add-int/lit16 v15, v15, 0x80

    shr-int/lit8 v15, v15, 0x8

    add-int/lit16 v15, v15, 0x80

    mul-int/lit8 v11, v11, 0x70

    mul-int/lit8 v12, v12, 0x5e

    sub-int/2addr v11, v12

    mul-int/lit8 v10, v10, 0x12

    sub-int/2addr v11, v10

    add-int/lit16 v11, v11, 0x80

    shr-int/lit8 v10, v11, 0x8

    add-int/lit16 v10, v10, 0x80

    add-int/lit8 v11, v7, 0x1

    if-gez v14, :cond_0

    const/4 v14, 0x0

    goto :goto_2

    :cond_0
    if-le v14, v13, :cond_1

    const/16 v14, 0xff

    :cond_1
    :goto_2
    int-to-byte v12, v14

    .line 156
    aput-byte v12, v4, v7

    .line 157
    rem-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_6

    rem-int/lit8 v7, v8, 0x2

    if-nez v7, :cond_6

    add-int/lit8 v7, v3, -0x2

    if-ge v2, v7, :cond_6

    add-int/lit8 v7, v2, 0x1

    if-gez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    if-le v10, v13, :cond_3

    const/16 v10, 0xff

    :cond_3
    :goto_3
    int-to-byte v10, v10

    .line 158
    aput-byte v10, v4, v2

    add-int/lit8 v2, v2, 0x2

    if-gez v15, :cond_4

    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    if-le v15, v13, :cond_5

    goto :goto_4

    :cond_5
    move v13, v15

    :goto_4
    int-to-byte v10, v13

    .line 159
    aput-byte v10, v4, v7

    :cond_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v11

    goto :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-object v4
.end method

.method public static bitmapToNv21(Landroid/graphics/Bitmap;II)[B
    .locals 9

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, p2, :cond_0

    mul-int v0, p1, p2

    .line 126
    new-array v2, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p1

    move-object v1, p0

    move v4, p1

    move v8, p2

    .line 127
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 128
    invoke-static {v2, v4, v8}, Lcom/hmx/recognition/FaceTask;->argbToNv21([III)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 71
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->playActivity:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-boolean p1, p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    if-eqz p1, :cond_5

    .line 72
    sget-boolean p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->disposeFlagInit:Z

    if-nez p1, :cond_0

    .line 74
    sget-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->path1:Ljava/lang/String;

    sget-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->path2:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hmx/recognition/OpenCVHelper;->initGesture(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 75
    sput-boolean p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->disposeFlagInit:Z

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 81
    rem-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 84
    :cond_2
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    .line 90
    :cond_4
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/hmx/recognition/FaceTask;->bitmapToNv21(Landroid/graphics/Bitmap;II)[B

    move-result-object v2

    .line 92
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v7, 0x3fa00000    # 1.25f

    const/16 v8, 0x23

    const/high16 v5, 0x3fa00000    # 1.25f

    const/16 v6, 0x3c

    invoke-static/range {v2 .. v8}, Lcom/hmx/recognition/OpenCVHelper;->runGesture([BIIFIFI)I

    move-result p1

    if-gez p1, :cond_5

    .line 95
    iget-object v0, p0, Lcom/hmx/recognition/FaceTask;->bitmap:Landroid/graphics/Bitmap;

    .line 96
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {v5, p1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 102
    invoke-static {p1, v3, v4}, Lcom/hmx/recognition/FaceTask;->bitmapToNv21(Landroid/graphics/Bitmap;II)[B

    move-result-object v6

    const/high16 v11, 0x3fa00000    # 1.25f

    const/16 v12, 0x23

    const/high16 v9, 0x3fa00000    # 1.25f

    const/16 v10, 0x3c

    move v7, v3

    move v8, v4

    .line 104
    invoke-static/range {v6 .. v12}, Lcom/hmx/recognition/OpenCVHelper;->runGesture([BIIFIFI)I

    move-result p1

    if-gez p1, :cond_5

    .line 108
    iget-object p1, p0, Lcom/hmx/recognition/FaceTask;->handler:Landroid/os/Handler;

    const/16 v0, 0xfd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
