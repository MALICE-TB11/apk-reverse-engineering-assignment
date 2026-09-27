.class public Lcom/tzh/wifi/wificam/view/SurfaceViews;
.super Landroid/view/SurfaceView;
.source "SurfaceViews.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "surfaceview"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private m_canvas:Landroid/graphics/Canvas;

.field private m_holder:Landroid/view/SurfaceHolder;

.field private m_paint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private rect:Landroid/graphics/Rect;

.field private roateAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_holder:Landroid/view/SurfaceHolder;

    .line 24
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_canvas:Landroid/graphics/Canvas;

    .line 25
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_paint:Landroid/graphics/Paint;

    .line 26
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->rect:Landroid/graphics/Rect;

    .line 27
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->matrix:Landroid/graphics/Matrix;

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->roateAngle:I

    .line 29
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_holder:Landroid/view/SurfaceHolder;

    .line 36
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_paint:Landroid/graphics/Paint;

    const v0, -0xffff01

    .line 38
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->matrix:Landroid/graphics/Matrix;

    .line 41
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_holder:Landroid/view/SurfaceHolder;

    const/4 v0, -0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getHeight()I

    move-result v1

    invoke-direct {p1, p2, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->rect:Landroid/graphics/Rect;

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "width "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "surfaceview"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f0062

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public SetBitmap(Landroid/graphics/Bitmap;)V
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_holder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->rect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x5

    .line 55
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 58
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->matrix:Landroid/graphics/Matrix;

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .line 65
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->rect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 68
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_holder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->m_canvas:Landroid/graphics/Canvas;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0062

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->SetBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setRotateAngle(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->roateAngle:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->SetBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "width "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "surfaceview"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/SurfaceViews;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/SurfaceViews;->SetBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
