.class public Lcom/yuan/ImageClassifierFloatInception;
.super Lcom/yuan/ImageClassifier;
.source "ImageClassifierFloatInception.java"


# static fields
.field private static final IMAGE_MEAN:F = 1.0f

.field private static final IMAGE_STD:F = 127.0f


# instance fields
.field private labelProbArray:[[F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/yuan/ImageClassifier;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/yuan/ImageClassifierFloatInception;->labelProbArray:[[F

    .line 48
    invoke-virtual {p0}, Lcom/yuan/ImageClassifierFloatInception;->getNumLabels()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput v1, v0, p1

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/yuan/ImageClassifierFloatInception;->labelProbArray:[[F

    return-void
.end method


# virtual methods
.method protected addPixelValue(I)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/yuan/ImageClassifierFloatInception;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x42fe0000    # 127.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v0, p0, Lcom/yuan/ImageClassifierFloatInception;->imgData:Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v0, p0, Lcom/yuan/ImageClassifierFloatInception;->imgData:Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getImageSizeX()I
    .locals 1

    const/16 v0, 0xe0

    return v0
.end method

.method protected getImageSizeY()I
    .locals 1

    const/16 v0, 0xe0

    return v0
.end method

.method protected getLabelPath()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "labels.txt"

    return-object v0
.end method

.method protected getModelPath()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "model.tflite"

    return-object v0
.end method

.method protected getNormalizedProbability(I)F
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/yuan/ImageClassifierFloatInception;->getProbability(I)F

    move-result p1

    return p1
.end method

.method protected getNumBytesPerChannel()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getProbability(I)F
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/yuan/ImageClassifierFloatInception;->labelProbArray:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget p1, v0, p1

    return p1
.end method

.method protected runInference()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/yuan/ImageClassifierFloatInception;->tflite:Lorg/tensorflow/lite/Interpreter;

    iget-object v1, p0, Lcom/yuan/ImageClassifierFloatInception;->imgData:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/yuan/ImageClassifierFloatInception;->labelProbArray:[[F

    invoke-virtual {v0, v1, v2}, Lorg/tensorflow/lite/Interpreter;->run(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected setProbability(ILjava/lang/Number;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/yuan/ImageClassifierFloatInception;->labelProbArray:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    aput p2, v0, p1

    return-void
.end method
