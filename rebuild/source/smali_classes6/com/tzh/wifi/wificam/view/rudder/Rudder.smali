.class public Lcom/tzh/wifi/wificam/view/rudder/Rudder;
.super Landroid/opengl/GLSurfaceView;
.source "Rudder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/view/rudder/Rudder$MyRenderer;
    }
.end annotation


# static fields
.field public static final AUTOPATH:I = 0x1

.field public static final AUTOPATHPLAY:I = 0x2

.field public static final NORMAL:I


# instance fields
.field public AccCenterY:I

.field private AccCurrent:Landroid/graphics/Point;

.field public AccDefault:Landroid/graphics/Point;

.field public DirCenterDef:Landroid/graphics/Point;

.field private DirCurrent:Landroid/graphics/Point;

.field public DirDefault:Landroid/graphics/Point;

.field private HOffset:I

.field private VOffset:I

.field private accDown:Landroid/graphics/Point;

.field private accLeft:Landroid/graphics/Point;

.field private accRight:Landroid/graphics/Point;

.field private accUp:Landroid/graphics/Point;

.field private autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

.field private bAccInside:Z

.field private bDirInside:Z

.field private bRotate:Z

.field private bRunning:Z

.field private bSensor:Z

.field private bStayHigh:Z

.field private bmpBgWidth:I

.field private bmpWidth:I

.field private ctrlMode:I

.field private dirDown:Landroid/graphics/Point;

.field private dirLeft:Landroid/graphics/Point;

.field private dirRight:Landroid/graphics/Point;

.field private dirUp:Landroid/graphics/Point;

.field private followID:I

.field private leftBgBitmap:Landroid/graphics/Bitmap;

.field private leftBitmap:Landroid/graphics/Bitmap;

.field private leftID:I

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mLeftPaint:Landroid/graphics/Paint;

.field public mPathPoint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderer:Lcom/tzh/wifi/wificam/view/rudder/Rudder$MyRenderer;

.field private mRightPaint:Landroid/graphics/Paint;

.field private mThread:Ljava/lang/Thread;

.field private matrix:Landroid/graphics/Matrix;

.field private rightBgBitmap:Landroid/graphics/Bitmap;

.field private rightBitmap:Landroid/graphics/Bitmap;

.field private rightID:I

.field private rotateAction:I

.field public rudderLen:I

.field private rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRenderer:Lcom/tzh/wifi/wificam/view/rudder/Rudder$MyRenderer;

    .line 42
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mHolder:Landroid/view/SurfaceHolder;

    .line 43
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    .line 44
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    .line 46
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    .line 47
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mThread:Ljava/lang/Thread;

    .line 48
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRunning:Z

    .line 50
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    .line 51
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    .line 52
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    .line 53
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    .line 55
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    .line 56
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    .line 58
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accUp:Landroid/graphics/Point;

    .line 59
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accDown:Landroid/graphics/Point;

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accLeft:Landroid/graphics/Point;

    .line 61
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accRight:Landroid/graphics/Point;

    .line 63
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirUp:Landroid/graphics/Point;

    .line 64
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirDown:Landroid/graphics/Point;

    .line 65
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirLeft:Landroid/graphics/Point;

    .line 66
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirRight:Landroid/graphics/Point;

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    .line 69
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    .line 70
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->followID:I

    .line 72
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBitmap:Landroid/graphics/Bitmap;

    .line 73
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBitmap:Landroid/graphics/Bitmap;

    .line 75
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    .line 76
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBgBitmap:Landroid/graphics/Bitmap;

    .line 78
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->matrix:Landroid/graphics/Matrix;

    .line 79
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    .line 80
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    .line 81
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    .line 82
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->HOffset:I

    .line 83
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    .line 84
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    .line 86
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    .line 92
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    .line 93
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccInside:Z

    .line 94
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirInside:Z

    .line 95
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bStayHigh:Z

    .line 97
    const-class v1, Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 98
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    .line 99
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    .line 100
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRotate:Z

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mPathPoint:Ljava/util/List;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 111
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    .line 112
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    .line 113
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mHolder:Landroid/view/SurfaceHolder;

    .line 114
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    const p2, -0x333334

    .line 117
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 125
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->setFocusableInTouchMode(Z)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->setZOrderOnTop(Z)V

    .line 130
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 131
    new-instance p1, Lcom/tzh/wifi/wificam/view/rudder/Rudder$MyRenderer;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder$MyRenderer;-><init>(Lcom/tzh/wifi/wificam/view/rudder/Rudder;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRenderer:Lcom/tzh/wifi/wificam/view/rudder/Rudder$MyRenderer;

    .line 132
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 133
    new-instance p1, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-direct {p1}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    .line 134
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->widget_init()V

    return-void
.end method

.method public static isCurOriLand(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    .line 146
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 147
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private startRudder()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 237
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mThread:Ljava/lang/Thread;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public bAccTouchInsight(II)Z
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bDirTouchInsight(II)Z
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dealWidhDirRudder(IIZ)V
    .locals 9

    if-eqz p3, :cond_0

    goto/16 :goto_6

    .line 570
    :cond_0
    iget-object p3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2, p3, v0}, Lcom/tzh/wifi/wificam/utils/Util;->Length(IIII)I

    move-result p3

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    if-lt p3, v0, :cond_1

    .line 571
    iget-object p3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    invoke-static {p1, p2, p3, v0, v1}, Lcom/tzh/wifi/wificam/utils/Util;->UpdatePoint(IIIII)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    goto :goto_0

    .line 574
    :cond_1
    iget-object p3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 575
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 577
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-lt p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 578
    :goto_1
    iget-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-gt p2, v1, :cond_3

    const/4 p3, 0x1

    .line 580
    :cond_3
    iget-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sget v3, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    invoke-static {p2, v1, v2, v3}, Lcom/tzh/wifi/wificam/utils/Util;->GetLR(IIII)I

    move-result p2

    int-to-byte p2, p2

    .line 582
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v4, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    invoke-static {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/utils/Util;->GetUpDown(IIII)I

    move-result v1

    int-to-byte v1, v1

    mul-int v2, p1, p2

    add-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    mul-int v3, p3, v1

    add-int/lit16 v3, v3, 0x80

    const/16 v4, 0xff

    if-lt v3, v4, :cond_4

    const/16 v3, 0xff

    :cond_4
    if-ne p3, v0, :cond_6

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    move v3, v4

    :cond_6
    const/16 v4, -0x80

    const/16 v5, -0x5d

    const/16 v6, -0x5f

    if-ne v2, v6, :cond_7

    const/16 v2, -0x5d

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v2, -0x80

    .line 594
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sget-byte v8, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    if-gt v7, v8, :cond_8

    const/16 v2, -0x80

    :cond_8
    :goto_3
    if-ne v3, v6, :cond_9

    const/16 v3, -0x5d

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v3, -0x80

    .line 599
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sget-byte v6, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    if-gt v5, v6, :cond_a

    const/16 v3, -0x80

    .line 603
    :cond_a
    :goto_4
    iget-boolean v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRotate:Z

    if-eqz v4, :cond_e

    .line 604
    sget v4, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    const-string v6, "TAG"

    if-le p2, v4, :cond_c

    if-ne p1, v0, :cond_b

    .line 606
    const-string p1, "dealWidhDirRudder rotateAction = 1;"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    goto :goto_5

    .line 609
    :cond_b
    const-string p1, "dealWidhDirRudder rotateAction = 2;"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iput v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    goto :goto_5

    .line 612
    :cond_c
    sget p1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    div-int/2addr p1, v5

    if-le v1, p1, :cond_e

    if-ne p3, v0, :cond_d

    .line 614
    const-string p1, "dealWidhDirRudder rotateAction = 4;"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 615
    iput p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    goto :goto_5

    .line 617
    :cond_d
    const-string p1, "dealWidhDirRudder rotateAction = 3;"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 618
    iput p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    .line 622
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    if-eqz p1, :cond_f

    .line 623
    iget p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    invoke-interface {p1, v2, v3, p2}, Lcom/tzh/wifi/wificam/view/listener/IRudderListener;->onDirNotify(III)V

    :cond_f
    :goto_6
    return-void
.end method

.method public dealWithAccRudder(II)V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-static {p1, p2, v0, v1}, Lcom/tzh/wifi/wificam/utils/Util;->Length(IIII)I

    move-result v0

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    if-lt v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/Util;->UpdatePoint(IIIII)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 533
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 535
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    if-lt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 536
    :goto_1
    iget-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget v2, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_ACC_H_VALUE:I

    invoke-static {p2, v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/Util;->GetLR(IIII)I

    move-result p2

    int-to-byte p2, p2

    .line 538
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sget v3, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_POW_VALUE:I

    invoke-static {v0, v1, v2, v3}, Lcom/tzh/wifi/wificam/utils/Util;->GetUpDown(IIII)I

    move-result v0

    mul-int p1, p1, p2

    const/16 p2, 0x80

    add-int/2addr p1, p2

    int-to-byte p1, p1

    const/16 v1, -0x5d

    const/16 v2, -0x5f

    if-ne p1, v2, :cond_2

    const/16 p1, -0x5d

    goto :goto_2

    :cond_2
    add-int/lit8 v3, p1, -0x80

    .line 545
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget-byte v4, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    if-gt v3, v4, :cond_3

    const/16 p1, -0x80

    :cond_3
    :goto_2
    if-ne v0, v2, :cond_4

    const/16 v0, -0x5d

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v0, -0x80

    .line 553
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-byte v2, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    if-gt v1, v2, :cond_6

    const/16 v0, 0x80

    .line 556
    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    if-eqz p2, :cond_7

    .line 557
    invoke-interface {p2, p1, v0}, Lcom/tzh/wifi/wificam/view/listener/IRudderListener;->onAccNotify(II)V

    :cond_7
    return-void
.end method

.method public getEndPathPoint()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getEndPoint()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object v0

    return-object v0
.end method

.method public getPathLen()F
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getPathLen()F

    move-result v0

    return v0
.end method

.method public getPathPoint()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getPoints()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public invalidateValue()V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 655
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-boolean v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public onNotifySpeed()V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 707
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-boolean v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method

.method public onPathFollowRegister()V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->clear()V

    const/4 v0, 0x1

    .line 629
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    return-void
.end method

.method public onPathFollowUnregister()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->clear()V

    const/4 v0, 0x0

    .line 634
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    .line 635
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 636
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 637
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method

.method public onRegisterRotate()V
    .locals 1

    const/4 v0, 0x1

    .line 711
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRotate:Z

    const/4 v0, 0x0

    .line 712
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    return-void
.end method

.method public onRegisterStayHighMode()V
    .locals 2

    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bStayHigh:Z

    .line 726
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    return-void
.end method

.method public onSensorNotify(II)V
    .locals 2

    .line 697
    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    mul-int p1, p1, v0

    sget v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    sget v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    div-int/2addr p1, v0

    .line 699
    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    mul-int p2, p2, v0

    sget v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int v0, v0, v1

    add-int/2addr p2, v0

    sget v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    div-int/2addr p2, v0

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1, p2, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x8

    .line 353
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 354
    const-string v3, "right rudder down!\n"

    const-string v4, "left rudder down!\n"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_f

    const-string v7, "right rudder up!\n"

    const-string v8, "left rudder up!\n"

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v2, v6, :cond_d

    if-eq v2, v5, :cond_7

    const/4 v0, 0x5

    if-eq v2, v0, :cond_4

    const/4 p1, 0x6

    if-eq v2, p1, :cond_0

    goto/16 :goto_5

    .line 436
    :cond_0
    iget p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    if-ne p1, v1, :cond_2

    .line 437
    iput-boolean v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccInside:Z

    .line 438
    iput v10, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    .line 439
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bStayHigh:Z

    if-eqz p1, :cond_1

    .line 440
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 443
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v8}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 444
    :cond_2
    iget p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    if-ne p1, v1, :cond_3

    .line 445
    iput-boolean v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirInside:Z

    .line 446
    iput v10, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    .line 447
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 448
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v7}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 449
    :cond_3
    iget p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->followID:I

    if-ne p1, v1, :cond_12

    .line 450
    iput v10, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->followID:I

    .line 451
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->pathFollowUp()V

    goto/16 :goto_5

    .line 384
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 385
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 386
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/2addr v2, v5

    if-ge v0, v2, :cond_5

    .line 387
    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccTouchInsight(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccInside:Z

    if-eqz v2, :cond_12

    .line 389
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    .line 390
    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 391
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 394
    :cond_5
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    if-nez v2, :cond_6

    .line 395
    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirTouchInsight(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirInside:Z

    if-eqz v2, :cond_12

    .line 397
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    .line 398
    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    if-nez v1, :cond_12

    .line 399
    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 400
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v3}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 404
    :cond_6
    invoke-virtual {p0, v0, p1, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->pathFollowInit(III)V

    goto/16 :goto_5

    :cond_7
    :goto_1
    if-ge v9, v0, :cond_12

    .line 497
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 498
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 499
    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->followID:I

    if-ne v3, v9, :cond_8

    .line 500
    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v3, v1, v2}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineTo(II)V

    goto/16 :goto_3

    .line 502
    :cond_8
    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v3, v4

    const/16 v4, 0xff

    if-lt v1, v3, :cond_9

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accRight:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr v3, v5

    if-gt v1, v3, :cond_9

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accUp:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v3, v5

    if-lt v2, v3, :cond_9

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr v3, v5

    if-gt v2, v3, :cond_9

    iget-boolean v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccInside:Z

    if-eqz v3, :cond_9

    .line 505
    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 506
    iput v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    goto :goto_2

    .line 507
    :cond_9
    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirLeft:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v3, v5

    if-lt v1, v3, :cond_a

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirRight:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr v3, v5

    if-gt v1, v3, :cond_a

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirUp:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v3, v5

    if-lt v2, v3, :cond_a

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    add-int/2addr v3, v5

    if-gt v2, v3, :cond_a

    iget-boolean v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirInside:Z

    if-eqz v3, :cond_a

    .line 510
    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 511
    iput v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    .line 513
    :cond_a
    :goto_2
    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    if-ne v3, v9, :cond_b

    .line 514
    invoke-virtual {p0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    goto :goto_3

    .line 515
    :cond_b
    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    if-ne v3, v9, :cond_c

    .line 516
    iget-boolean v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    :cond_c
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 474
    :cond_d
    iput-boolean v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccInside:Z

    .line 475
    iput-boolean v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirInside:Z

    .line 477
    iput v10, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    .line 478
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bStayHigh:Z

    if-eqz p1, :cond_e

    .line 479
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    goto :goto_4

    .line 481
    :cond_e
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 482
    :goto_4
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v8}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 485
    iput v10, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    .line 486
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 487
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v7}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 490
    iput v10, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->followID:I

    .line 491
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->pathFollowUp()V

    goto :goto_5

    .line 356
    :cond_f
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 357
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 358
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/2addr v2, v5

    if-ge v0, v2, :cond_10

    .line 359
    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccTouchInsight(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bAccInside:Z

    if-eqz v2, :cond_12

    .line 361
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftID:I

    .line 362
    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 363
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/listener/IRudderListener;->closeVoiceControl()V

    goto :goto_5

    .line 367
    :cond_10
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    if-nez v2, :cond_11

    .line 368
    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirTouchInsight(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bDirInside:Z

    if-eqz v2, :cond_12

    .line 370
    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightID:I

    .line 371
    iget v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    if-nez v1, :cond_12

    .line 372
    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 373
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {p1, v3}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/view/listener/IRudderListener;->closeVoiceControl()V

    goto :goto_5

    .line 378
    :cond_11
    invoke-virtual {p0, v0, p1, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->pathFollowInit(III)V

    :cond_12
    :goto_5
    return v6
.end method

.method public onUnregisterRotate()V
    .locals 3

    .line 716
    monitor-enter p0

    const/4 v0, 0x0

    .line 717
    :try_start_0
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRotate:Z

    .line 718
    iput v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rotateAction:I

    .line 719
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 721
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "###onUnregisterRotate "

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 719
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onUnregisterStayHighMode()V
    .locals 2

    const/4 v0, 0x0

    .line 730
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bStayHigh:Z

    .line 731
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    return-void
.end method

.method public pathFollowInit(III)V
    .locals 1

    .line 641
    iget v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->clear()V

    .line 643
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 644
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 645
    iput p3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->followID:I

    .line 646
    iget-object p3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {p3, p1, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineTo(II)V

    .line 647
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 648
    invoke-interface {p1, p2, p3}, Lcom/tzh/wifi/wificam/view/listener/IRudderListener;->onPathFollowNotify(ZLjava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public pathFollowUp()V
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 660
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 661
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getPoints()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/tzh/wifi/wificam/view/listener/IRudderListener;->onPathFollowNotify(ZLjava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/tzh/wifi/wificam/view/listener/IRudderListener;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderListener:Lcom/tzh/wifi/wificam/view/listener/IRudderListener;

    return-void
.end method

.method public run()V
    .locals 11

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRunning:Z

    .line 247
    :goto_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRunning:Z

    if-eqz v0, :cond_7

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x5

    .line 251
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 254
    :cond_0
    const-class v8, Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :try_start_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 256
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->isCurOriLand(Landroid/content/Context;)Z

    move-result v0

    .line 257
    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->ctrlMode:I

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    if-eq v4, v1, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/2addr v4, v5

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    div-int/lit8 v7, v7, 0x2

    iget v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    add-int/2addr v7, v9

    sub-int/2addr v7, v6

    int-to-float v6, v7

    iget-object v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/2addr v4, v5

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    iget v9, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v6

    int-to-float v6, v7

    iget-object v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->autoPath:Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->getLPoints()Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 279
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_5

    .line 280
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v4, v4, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    int-to-float v4, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v5, v5, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    int-to-float v5, v5

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v3, v3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    int-to-float v3, v3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    iget v6, v6, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    move v10, v5

    move v5, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v9

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/2addr v3, v5

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iget-object v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 261
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBgBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/2addr v3, v5

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/2addr v3, v5

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    iget v7, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iget-object v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBgBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/2addr v3, v5

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    iget v6, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mRightPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 266
    :goto_3
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 267
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_6

    .line 292
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_6
    const-wide/16 v2, 0x14

    .line 293
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 294
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public sensorRegister()V
    .locals 3

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    .line 684
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method

.method public sensorUnregister()V
    .locals 3

    const/4 v0, 0x0

    .line 689
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bSensor:Z

    .line 690
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->startRudder()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bRunning:Z

    return-void
.end method

.method public widget_init()V
    .locals 10

    .line 163
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->isCurOriLand(Landroid/content/Context;)Z

    move-result v0

    .line 164
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f006b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07096a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07093b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 171
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 173
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 174
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBitmap:Landroid/graphics/Bitmap;

    .line 175
    iput-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBitmap:Landroid/graphics/Bitmap;

    .line 176
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    .line 178
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f006a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a67

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 181
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070a3a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 184
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0709cc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    .line 187
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 189
    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 190
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->matrix:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    .line 191
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpBgWidth:I

    .line 192
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rightBgBitmap:Landroid/graphics/Bitmap;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 194
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    .line 195
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    div-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_2

    .line 197
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 198
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    goto :goto_2

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCurrent:Landroid/graphics/Point;

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 201
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    .line 204
    :goto_2
    iget v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->bmpWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    .line 205
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenWidth:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    iput v4, v1, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCurrent:Landroid/graphics/Point;

    iget v3, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->screenHeight:I

    iget v4, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->VOffset:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 212
    :goto_3
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 213
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 214
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 215
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 216
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accUp:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 217
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accUp:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 218
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accDown:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 219
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->accDown:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 221
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 222
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirLeft:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 223
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 224
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirRight:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 225
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirUp:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 226
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirUp:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 227
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirDown:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->leftBgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 228
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dirDown:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    return-void
.end method
