.class public Lcom/tzh/wifi/wificam/utils/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# static fields
.field public static final DIFF_DEGREE:F = 30.0f

.field public static final DIFF_DEGREE_INNER:F = 35.0f

.field public static final UNIT:D = 0.017453292519943295

.field public static filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/bean/FilterEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    .line 25
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 26
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    sget-object v2, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->NORMAL:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    const-string v3, "\u539f\u56fe"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u871c\u7c89"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->ACV_MORENJIAQIANG:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u7c89\u5ae9"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->RGB_DILATION:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u81ea\u7136"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->COLOR_BALANCE:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u7231\u7f8e"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->ACV_AIMEI:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u6de1\u84dd"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->ACV_DANLAN:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u679c\u51bb"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->ACV_GAOLENG:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u53ef\u7231"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->ACV_KEAI:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u6cb9\u753b"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->KUWAHARA:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u9ed1\u767d"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->GRAYSCALE:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    new-instance v1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    const-string v2, "\u6a21\u7cca"

    sget-object v3, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->GAUSSIAN_BLUR:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    invoke-direct {v1, v2, v3, v4}, Lcom/tzh/wifi/wificam/bean/FilterEffect;-><init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionNotEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSmallPic(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {v1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v2, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    .line 44
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->deleteImage()V

    .line 45
    invoke-virtual {v3}, Lcom/tzh/wifi/wificam/bean/FilterEffect;->getType()Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createFilterForType(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 47
    invoke-virtual {v1, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 48
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
