.class public Lcom/tzh/wifi/wificam/view/ZoomView;
.super Landroid/view/View;
.source "ZoomView.java"


# instance fields
.field private height:I

.field private lineHeight:I

.field private lineWidth:I

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPoint:Landroid/graphics/Point;

.field private mSliderBar:Landroid/graphics/Bitmap;

.field private mThumb:Landroid/graphics/Bitmap;

.field private roundR:I

.field private scaleListener:Lcom/tzh/wifi/wificam/view/listener/IScaleListener;

.field private touchID:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    .line 28
    const-class p1, Lcom/tzh/wifi/wificam/view/ZoomView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->width:I

    .line 30
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->height:I

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->touchID:I

    .line 33
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mSliderBar:Landroid/graphics/Bitmap;

    .line 34
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mThumb:Landroid/graphics/Bitmap;

    .line 35
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    .line 36
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPath:Landroid/graphics/Path;

    .line 37
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineWidth:I

    .line 38
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineHeight:I

    .line 39
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    .line 45
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f008e

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mSliderBar:Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f008f

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mThumb:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070924

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineWidth:I

    .line 48
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a03

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineHeight:I

    .line 49
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070967

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    .line 50
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "###zoomview slider:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mSliderBar:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mSliderBar:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public caculateZoomView()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x31

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->scaleListener:Lcom/tzh/wifi/wificam/view/listener/IScaleListener;

    if-eqz v1, :cond_0

    .line 132
    invoke-interface {v1, v0}, Lcom/tzh/wifi/wificam/view/listener/IScaleListener;->OnZoomSet(I)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "###percent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public dealWithTouchDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    .line 83
    iput v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->touchID:I

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 85
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 87
    :cond_0
    div-int/lit8 v0, v1, 0x2

    if-gt p1, v0, :cond_1

    .line 88
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    div-int/lit8 v1, v1, 0x2

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->scaleListener:Lcom/tzh/wifi/wificam/view/listener/IScaleListener;

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/listener/IScaleListener;->OnZoomStart()V

    :cond_2
    return-void
.end method

.method public dealWithTouchMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 106
    iget v3, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->touchID:I

    if-ne v1, v3, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    .line 108
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_0
    if-gt v2, v4, :cond_1

    .line 110
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iput v4, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->y:I

    .line 114
    :goto_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->caculateZoomView()V

    .line 115
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->invalidate()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dealWithTouchUp(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, -0x1

    .line 97
    iput p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->touchID:I

    .line 98
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->scaleListener:Lcom/tzh/wifi/wificam/view/listener/IScaleListener;

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/listener/IScaleListener;->OnZoomEnd()V

    :cond_0
    return-void
.end method

.method public dealWithrest()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    const/16 v1, 0x149

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const-string v0, "###width:"

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 143
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->roundR:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 150
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->lineWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/ZoomView;->dealWithTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/ZoomView;->dealWithTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/ZoomView;->dealWithTouchDown(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setDelegate(Lcom/tzh/wifi/wificam/view/listener/IScaleListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/ZoomView;->scaleListener:Lcom/tzh/wifi/wificam/view/listener/IScaleListener;

    return-void
.end method
