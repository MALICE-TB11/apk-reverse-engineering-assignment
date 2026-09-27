.class public Lcom/tzh/wifi/wificam/utils/BmpUtils;
.super Ljava/lang/Object;
.source "BmpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final IMAGE_MAX_SCALE_SIZE:I = 0x32

.field public static final IMAGE_MIN_SCALE_SIZE:I = 0x1


# instance fields
.field private bRunning:Z

.field private imgHeight:I

.field private imgWidth:I

.field private is_portrait:Z

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mContext:Landroid/content/Context;

.field private mThread:Ljava/lang/Thread;

.field private matrix:Landroid/graphics/Matrix;

.field private onBitmapFixListener:Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;

.field private scaleVal:F

.field public srcBmps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public targetBmps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/tzh/wifi/wificam/utils/BmpUtils;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    iput v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->matrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->targetBmps:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->bRunning:Z

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->mThread:Ljava/lang/Thread;

    .line 31
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->is_portrait:Z

    .line 38
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->onBitmapFixListener:Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;

    return-void
.end method


# virtual methods
.method public push(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->bRunning:Z

    .line 80
    :cond_0
    :goto_0
    iget-boolean v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->bRunning:Z

    if-eqz v0, :cond_6

    .line 82
    :try_start_0
    iget-object v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v2, 0x2

    if-gtz v0, :cond_1

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 86
    :cond_1
    iget-boolean v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->is_portrait:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v0, :cond_2

    .line 87
    :try_start_1
    const-string v0, "\u5f53\u524d\u662f\u7ad6\u5c4f"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    :cond_2
    const-string v0, "\u5f53\u524d\u662f\u6a2a\u5c4f"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    iget-object v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 99
    :cond_3
    iget v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgWidth:I

    int-to-float v0, v0

    iget v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 100
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 104
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v6, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgHeight:I

    mul-int v0, v0, v6

    iget v6, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgWidth:I

    div-int/2addr v0, v6

    .line 105
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v6, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgWidth:I

    mul-int v0, v0, v6

    iget v6, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgHeight:I

    div-int/2addr v0, v6

    .line 108
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    int-to-float v0, v6

    move v2, v0

    const/4 v0, 0x0

    .line 110
    :goto_2
    iget-object v6, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v12, v12}, Landroid/graphics/Matrix;->setScale(FF)V

    float-to-int v6, v2

    float-to-int v7, v0

    .line 112
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v9, v2, v3

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v10, v0, v3

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget-object v10, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->matrix:Landroid/graphics/Matrix;

    const/4 v11, 0x1

    .line 111
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 114
    iget-object v6, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###cutX:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  cutY:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_5
    move-object v13, v5

    .line 116
    iget-object v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->matrix:Landroid/graphics/Matrix;

    iget v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 117
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    div-float v2, v12, v2

    sub-float v2, v12, v2

    mul-float v0, v0, v2

    div-float/2addr v0, v3

    float-to-int v14, v0

    .line 118
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    div-float v2, v12, v2

    sub-float/2addr v12, v2

    mul-float v0, v0, v12

    div-float/2addr v0, v3

    float-to-int v15, v0

    .line 120
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->matrix:Landroid/graphics/Matrix;

    const/16 v19, 0x1

    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    iget-object v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###new bitmap:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 123
    iget-object v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    iget-object v2, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->onBitmapFixListener:Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v2, v0}, Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;->OnBitmapFixed(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    :cond_6
    iget-object v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->srcBmps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    iget-object v0, v1, Lcom/tzh/wifi/wificam/utils/BmpUtils;->targetBmps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setImageParam(II)V
    .locals 1

    .line 48
    iget v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 51
    :cond_0
    iput p2, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgHeight:I

    .line 52
    iput p1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->imgWidth:I

    .line 53
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->targetBmps:Ljava/util/List;

    monitor-enter p1

    .line 54
    :try_start_0
    iget-object p2, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->targetBmps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 55
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setIs_portrait(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->is_portrait:Z

    return-void
.end method

.method public setScale(I)V
    .locals 1

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 43
    iput p1, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    .line 44
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->bRunning:Z

    .line 60
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 61
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->mThread:Ljava/lang/Thread;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->bRunning:Z

    return-void
.end method

.method public zoomAdd()V
    .locals 3

    .line 139
    iget v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    const/high16 v1, 0x42480000    # 50.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 140
    iput v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    .line 141
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f29\u653e\u6bd4\u4f8b\u4e3a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public zoomSub()V
    .locals 3

    .line 146
    iget v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    sub-float/2addr v0, v1

    .line 147
    iput v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    .line 148
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7f29\u653e\u6bd4\u4f8b\u4e3a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tzh/wifi/wificam/utils/BmpUtils;->scaleVal:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
