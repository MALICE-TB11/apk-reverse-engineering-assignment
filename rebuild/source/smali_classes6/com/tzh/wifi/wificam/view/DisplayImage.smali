.class public Lcom/tzh/wifi/wificam/view/DisplayImage;
.super Landroid/widget/ImageView;
.source "DisplayImage.java"


# instance fields
.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private scaleVal:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->scaleVal:F

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 21
    const-class p1, Lcom/tzh/wifi/wificam/view/DisplayImage;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 35
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v0, "###get drawable failed!"

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setScaleVal(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->scaleVal:F

    return-void
.end method

.method public setShader(Landroid/graphics/Canvas;)V
    .locals 8

    .line 46
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 47
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 48
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getWidth()I

    move-result p1

    .line 53
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getHeight()I

    move-result v7

    .line 54
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 55
    iget v1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->scaleVal:F

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/DisplayImage;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "###width:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " height:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
