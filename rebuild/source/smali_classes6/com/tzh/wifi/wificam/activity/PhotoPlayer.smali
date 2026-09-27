.class public Lcom/tzh/wifi/wificam/activity/PhotoPlayer;
.super Landroid/app/Activity;
.source "PhotoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;,
        Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;
    }
.end annotation


# static fields
.field private static final CHOOSE_CODE:I = 0x3e6

.field private static final FILTER_CODE:I = 0x19a5

.field private static final MAX_SCALE:F = 3.0f

.field private static final MIN_SCALE:F = 0.5f


# instance fields
.field private bRotate:I

.field private btnReturn:Landroid/widget/ImageView;

.field private btnRotate:Landroid/widget/ImageView;

.field private bundle:Landroid/os/Bundle;

.field private currentImageIndex:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field h:I

.field private imagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field matrix:Landroid/graphics/Matrix;

.field private path:Ljava/lang/String;

.field private scaleFactor:F

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private screenHeight:I

.field private screenWidth:I

.field private shareButton:Landroid/widget/ImageView;

.field private showjpg:Landroid/widget/ImageView;

.field w:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->screenWidth:I

    .line 41
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->screenHeight:I

    .line 42
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bRotate:I

    .line 43
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->matrix:Landroid/graphics/Matrix;

    .line 48
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->w:I

    .line 49
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->h:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 55
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleFactor:F

    .line 63
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->shareImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleFactor:F

    return p0
.end method

.method static synthetic access$402(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;F)F
    .locals 0

    .line 34
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleFactor:F

    return p1
.end method

.method static synthetic access$432(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;F)F
    .locals 1

    .line 34
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleFactor:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleFactor:F

    return v0
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showPreviousImage()V

    return-void
.end method

.method static synthetic access$700(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showNextImage()V

    return-void
.end method

.method private loadAndDisplayImage()V
    .locals 10

    .line 223
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 226
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 229
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 230
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 233
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->w:I

    .line 234
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->h:I

    .line 243
    iget v5, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->w:I

    int-to-float v6, v5

    int-to-float v7, v4

    div-float/2addr v6, v7

    int-to-float v7, v1

    int-to-float v8, v0

    div-float v9, v7, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_0

    int-to-float v4, v5

    div-float/2addr v4, v7

    .line 249
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_0

    :cond_0
    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 252
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 256
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    .line 259
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 268
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 272
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    .line 276
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 279
    iget-object v5, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    iget-object v4, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 282
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 285
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 286
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 289
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->matrix:Landroid/graphics/Matrix;

    .line 290
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method private shareImage()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    const-string v0, "Share Image"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNextImage()V
    .locals 2

    .line 342
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 343
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    .line 344
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->loadAndDisplayImage()V

    return-void

    .line 347
    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u5f20\u56fe\u7247"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showPreviousImage()V
    .locals 2

    .line 352
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 353
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    .line 354
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->loadAndDisplayImage()V

    return-void

    .line 357
    :cond_0
    const-string v0, "\u5df2\u7ecf\u662f\u7b2c\u4e00\u5f20\u56fe\u7247"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e6

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x19a5

    if-ne p1, v0, :cond_1

    const/16 p1, 0xf

    if-ne p2, p1, :cond_1

    .line 212
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "filter_image"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01fb

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a01ff

    if-eq p1, v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bRotate:I

    const-wide/16 v0, 0x1f4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    .line 153
    iput v3, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bRotate:I

    .line 154
    new-instance v4, Landroid/view/animation/RotateAnimation;

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 155
    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 156
    invoke-virtual {v4, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 157
    invoke-virtual {v4, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 158
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 164
    invoke-virtual {v5, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 165
    invoke-virtual {v5, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 167
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bRotate:I

    .line 175
    :goto_0
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bRotate:I

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writePlayBackRotateCfg(Landroid/content/Context;I)V

    return-void

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->finish()V

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d02b3

    .line 69
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->setContentView(I)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 72
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->screenWidth:I

    .line 73
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->screenHeight:I

    const p1, 0x7f0a037f

    .line 75
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bundle:Landroid/os/Bundle;

    .line 77
    const-string v0, "showjpg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "currentPath:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "22222"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "photoList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->imagePaths:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "selectedPhotoIndex"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "selectedPhotoIndex:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->currentImageIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f0a01fb

    .line 89
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->btnReturn:Landroid/widget/ImageView;

    const p1, 0x7f0a01ff

    .line 90
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->btnRotate:Landroid/widget/ImageView;

    .line 91
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->btnRotate:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->loadAndDisplayImage()V

    .line 96
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->matrix:Landroid/graphics/Matrix;

    .line 97
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getPlayBackRotateCfg(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->bRotate:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->showjpg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_1
    const p1, 0x7f0a0380

    .line 106
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0200

    .line 115
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->shareButton:Landroid/widget/ImageView;

    .line 116
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$2;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance p1, Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;)V

    invoke-direct {p1, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 126
    new-instance p1, Landroid/view/GestureDetector;

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;)V

    invoke-direct {p1, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 299
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
