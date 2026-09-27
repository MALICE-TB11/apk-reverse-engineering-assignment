.class public Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;
.super Landroid/opengl/GLSurfaceView;
.source "PathViewer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;
    }
.end annotation


# instance fields
.field isPowerChange:Z

.field logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mLeftPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field private mRenderer:Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;

.field private mRightPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mRenderer:Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;

    .line 30
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 31
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    .line 32
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mRightPaint:Landroid/graphics/Paint;

    .line 33
    const-class p2, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;

    invoke-static {p2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->isPowerChange:Z

    .line 35
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mPath:Landroid/graphics/Path;

    .line 36
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    .line 47
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mHolder:Landroid/view/SurfaceHolder;

    .line 48
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setHinting(I)V

    .line 57
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mRightPaint:Landroid/graphics/Paint;

    const v0, -0x333334

    .line 60
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->setFocusable(Z)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->setFocusableInTouchMode(Z)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->setZOrderOnTop(Z)V

    .line 65
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 66
    new-instance p1, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-direct {p1}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    .line 67
    new-instance p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;-><init>(Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mRenderer:Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;

    .line 68
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 69
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 100
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 101
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getLPoints()Ljava/util/List;

    move-result-object v0

    .line 103
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 104
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    int-to-float v4, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    int-to-float v5, v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    int-to-float v6, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    int-to-float v7, v2

    iget-object v8, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mLeftPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getEndPoint()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getEndPoint()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object v0

    return-object v0
.end method

.method public getPathLen()F
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getPathLen()F

    move-result v0

    return v0
.end method

.method public getPoints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getPoints()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 172
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 173
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0, v1, p1}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineTo(II)V

    .line 174
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->invalidate()V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->clear()V

    .line 137
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->invalidate()V

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 140
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;->mAnPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0, v1, p1}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineTo(II)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
