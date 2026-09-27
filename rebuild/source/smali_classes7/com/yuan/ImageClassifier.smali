.class public abstract Lcom/yuan/ImageClassifier;
.super Ljava/lang/Object;
.source "ImageClassifier.java"


# static fields
.field private static final DIM_BATCH_SIZE:I = 0x1

.field private static final DIM_PIXEL_SIZE:I = 0x3

.field private static final FILTER_FACTOR:F = 0.4f

.field private static final FILTER_STAGES:I = 0x3

.field private static final GOOD_PROB_THRESHOLD:F = 0.3f

.field private static final RESULTS_TO_SHOW:I = 0x3

.field private static final SMALL_COLOR:I = -0x225578

.field private static final TAG:Ljava/lang/String; = "TfLiteCameraDemo"


# instance fields
.field private filterLabelProbArray:[[F

.field protected imgData:Ljava/nio/ByteBuffer;

.field private intValues:[I

.field private labelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sortedLabels:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field protected tflite:Lorg/tensorflow/lite/Interpreter;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getImageSizeX()I

    move-result v0

    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getImageSizeY()I

    move-result v1

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yuan/ImageClassifier;->intValues:[I

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/yuan/ImageClassifier;->imgData:Ljava/nio/ByteBuffer;

    .line 93
    iput-object v0, p0, Lcom/yuan/ImageClassifier;->filterLabelProbArray:[[F

    .line 98
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/yuan/ImageClassifier$1;

    invoke-direct {v1, p0}, Lcom/yuan/ImageClassifier$1;-><init>(Lcom/yuan/ImageClassifier;)V

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/yuan/ImageClassifier;->sortedLabels:Ljava/util/PriorityQueue;

    .line 112
    new-instance v0, Lorg/tensorflow/lite/Interpreter;

    invoke-direct {p0, p1}, Lcom/yuan/ImageClassifier;->loadModelFile(Landroid/app/Activity;)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tensorflow/lite/Interpreter;-><init>(Ljava/nio/MappedByteBuffer;)V

    iput-object v0, p0, Lcom/yuan/ImageClassifier;->tflite:Lorg/tensorflow/lite/Interpreter;

    .line 113
    invoke-direct {p0, p1}, Lcom/yuan/ImageClassifier;->loadLabelList(Landroid/app/Activity;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/yuan/ImageClassifier;->labelList:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getImageSizeX()I

    move-result p1

    .line 118
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getImageSizeY()I

    move-result v0

    mul-int p1, p1, v0

    mul-int/lit8 p1, p1, 0x3

    .line 120
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getNumBytesPerChannel()I

    move-result v0

    mul-int p1, p1, v0

    .line 115
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/yuan/ImageClassifier;->imgData:Ljava/nio/ByteBuffer;

    .line 121
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getNumLabels()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput v2, v0, p1

    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/yuan/ImageClassifier;->filterLabelProbArray:[[F

    .line 123
    const-string p1, "TfLiteCameraDemo"

    const-string v0, "Created a Tensorflow Lite Image Classifier."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertBitmapToByteBuffer(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 226
    iget-object v0, p0, Lcom/yuan/ImageClassifier;->imgData:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 230
    iget-object v2, p0, Lcom/yuan/ImageClassifier;->intValues:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 234
    :goto_0
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getImageSizeX()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v4, 0x0

    .line 235
    :goto_1
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getImageSizeY()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/yuan/ImageClassifier;->intValues:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    .line 237
    invoke-virtual {p0, v3}, Lcom/yuan/ImageClassifier;->addPixelValue(I)V

    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "Timecost to put values into ByteBuffe`r: "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TfLiteCameraDemo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadLabelList(Landroid/app/Activity;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 197
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getLabelPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 199
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 202
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private loadModelFile(Landroid/app/Activity;)Ljava/nio/MappedByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getModelPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 217
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    .line 218
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v6

    .line 219
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private printTopKLabels(Landroid/text/SpannableStringBuilder;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 248
    :goto_0
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getNumLabels()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/yuan/ImageClassifier;->sortedLabels:Ljava/util/PriorityQueue;

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    iget-object v4, p0, Lcom/yuan/ImageClassifier;->labelList:Ljava/util/List;

    .line 250
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yuan/ImageClassifier;->getNormalizedProbability(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v2, p0, Lcom/yuan/ImageClassifier;->sortedLabels:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 252
    iget-object v2, p0, Lcom/yuan/ImageClassifier;->sortedLabels:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/yuan/ImageClassifier;->sortedLabels:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 258
    iget-object v3, p0, Lcom/yuan/ImageClassifier;->sortedLabels:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 259
    new-instance v4, Landroid/text/SpannableString;

    .line 260
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v0

    const/4 v5, 0x1

    aput-object v6, v7, v5

    const-string v5, "%s:  %4.2f\n"

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const v5, 0x3e99999a    # 0.3f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    const/high16 v3, -0x1000000

    goto :goto_2

    :cond_2
    const v3, -0x225578

    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_4

    if-ne v2, v5, :cond_3

    const/high16 v5, 0x3fe00000    # 1.75f

    goto :goto_3

    :cond_3
    const v5, 0x3f4ccccd    # 0.8f

    .line 271
    :goto_3
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v4, v6, v0, v5, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 273
    :cond_4
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v4, v5, v0, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 274
    invoke-virtual {p1, v0, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method protected abstract addPixelValue(I)V
.end method

.method applyFilter()V
    .locals 9

    .line 154
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->getNumLabels()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const v3, 0x3ecccccd    # 0.4f

    if-ge v2, v0, :cond_0

    .line 158
    iget-object v4, p0, Lcom/yuan/ImageClassifier;->filterLabelProbArray:[[F

    aget-object v4, v4, v1

    aget v5, v4, v2

    .line 159
    invoke-virtual {p0, v2}, Lcom/yuan/ImageClassifier;->getProbability(I)F

    move-result v6

    iget-object v7, p0, Lcom/yuan/ImageClassifier;->filterLabelProbArray:[[F

    aget-object v7, v7, v1

    aget v7, v7, v2

    sub-float/2addr v6, v7

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_1
    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    .line 164
    iget-object v5, p0, Lcom/yuan/ImageClassifier;->filterLabelProbArray:[[F

    aget-object v6, v5, v2

    aget v7, v6, v4

    add-int/lit8 v8, v2, -0x1

    aget-object v5, v5, v8

    aget v5, v5, v4

    sub-float/2addr v5, v7

    mul-float v5, v5, v3

    add-float/2addr v7, v5

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    .line 171
    iget-object v2, p0, Lcom/yuan/ImageClassifier;->filterLabelProbArray:[[F

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yuan/ImageClassifier;->setProbability(ILjava/lang/Number;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public classifyFrame(Landroid/graphics/Bitmap;Landroid/text/SpannableStringBuilder;)V
    .locals 6

    .line 130
    invoke-direct {p0, p2}, Lcom/yuan/ImageClassifier;->printTopKLabels(Landroid/text/SpannableStringBuilder;)V

    .line 132
    iget-object v0, p0, Lcom/yuan/ImageClassifier;->tflite:Lorg/tensorflow/lite/Interpreter;

    const-string v1, "TfLiteCameraDemo"

    if-nez v0, :cond_0

    .line 133
    const-string v0, "Image classifier has not been initialized; Skipped."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, "Uninitialized Classifier."

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/yuan/ImageClassifier;->convertBitmapToByteBuffer(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 139
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->runInference()V

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Timecost to run model inference: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/yuan/ImageClassifier;->applyFilter()V

    .line 148
    new-instance p1, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0x333334

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public close()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/yuan/ImageClassifier;->tflite:Lorg/tensorflow/lite/Interpreter;

    invoke-virtual {v0}, Lorg/tensorflow/lite/Interpreter;->close()V

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/yuan/ImageClassifier;->tflite:Lorg/tensorflow/lite/Interpreter;

    return-void
.end method

.method protected abstract getImageSizeX()I
.end method

.method protected abstract getImageSizeY()I
.end method

.method protected abstract getLabelPath()Ljava/lang/String;
.end method

.method protected abstract getModelPath()Ljava/lang/String;
.end method

.method protected abstract getNormalizedProbability(I)F
.end method

.method protected abstract getNumBytesPerChannel()I
.end method

.method protected getNumLabels()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/yuan/ImageClassifier;->labelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getProbability(I)F
.end method

.method protected abstract runInference()V
.end method

.method public setNumThreads(I)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/yuan/ImageClassifier;->tflite:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->setNumThreads(I)V

    :cond_0
    return-void
.end method

.method protected abstract setProbability(ILjava/lang/Number;)V
.end method

.method public setUseNNAPI(Ljava/lang/Boolean;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/yuan/ImageClassifier;->tflite:Lorg/tensorflow/lite/Interpreter;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/tensorflow/lite/Interpreter;->setUseNNAPI(Z)V

    :cond_0
    return-void
.end method
