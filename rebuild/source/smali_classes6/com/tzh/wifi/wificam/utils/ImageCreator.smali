.class public abstract Lcom/tzh/wifi/wificam/utils/ImageCreator;
.super Ljava/lang/Object;
.source "ImageCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/ImageCreator;->context:Landroid/content/Context;

    return-void
.end method

.method public static dip2px(I)I
    .locals 1

    .line 31
    sget-object v0, Lcom/tzh/wifi/wificam/WiFiApp;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 32
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p0, p0

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public abstract getSmallImage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public loadImage(Ljava/lang/String;)V
    .locals 3

    .line 23
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v0, 0x50

    .line 24
    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/ImageCreator;->dip2px(I)I

    move-result v0

    .line 26
    new-instance v1, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;-><init>(Lcom/tzh/wifi/wificam/utils/ImageCreator;Lcom/tzh/wifi/wificam/utils/ImageCreator$1;)V

    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
