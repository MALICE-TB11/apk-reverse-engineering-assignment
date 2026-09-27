.class public Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterList;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageTwoInputFilter;",
            ">;)",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;"
        }
    .end annotation

    .line 334
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoInputFilter;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f001b

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageTwoInputFilter;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFilterForType(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 4

    .line 105
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;-><init>()V

    .line 106
    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;->ordinal()I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    .line 326
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No filter of that type!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :pswitch_0
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBalanceFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBalanceFilter;-><init>()V

    return-object p0

    .line 321
    :pswitch_1
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFalseColorFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFalseColorFilter;-><init>()V

    return-object p0

    .line 319
    :pswitch_2
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageWeakPixelInclusionFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageWeakPixelInclusionFilter;-><init>()V

    return-object p0

    .line 317
    :pswitch_3
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;-><init>()V

    return-object p0

    .line 315
    :pswitch_4
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSphereRefractionFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSphereRefractionFilter;-><init>()V

    return-object p0

    .line 313
    :pswitch_5
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageNonMaximumSuppressionFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageNonMaximumSuppressionFilter;-><init>()V

    return-object p0

    .line 311
    :pswitch_6
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageLaplacianFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageLaplacianFilter;-><init>()V

    return-object p0

    .line 309
    :pswitch_7
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;-><init>()V

    return-object p0

    .line 307
    :pswitch_8
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageGlassSphereFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageGlassSphereFilter;-><init>()V

    return-object p0

    .line 305
    :pswitch_9
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;-><init>()V

    return-object p0

    .line 302
    :pswitch_a
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSmoothToonFilter;-><init>()V

    return-object p0

    .line 300
    :pswitch_b
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToonFilter;-><init>()V

    return-object p0

    .line 298
    :pswitch_c
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSketchFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSketchFilter;-><init>()V

    return-object p0

    .line 296
    :pswitch_d
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBDilationFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBDilationFilter;-><init>()V

    return-object p0

    .line 294
    :pswitch_e
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;-><init>()V

    return-object p0

    .line 292
    :pswitch_f
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageDilationFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageDilationFilter;-><init>()V

    return-object p0

    .line 290
    :pswitch_10
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageCGAColorspaceFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageCGAColorspaceFilter;-><init>()V

    return-object p0

    .line 288
    :pswitch_11
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageBoxBlurFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageBoxBlurFilter;-><init>()V

    return-object p0

    .line 285
    :pswitch_12
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;-><init>()V

    return-object p0

    .line 283
    :pswitch_13
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;-><init>()V

    return-object p0

    .line 278
    :pswitch_14
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLookupFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageLookupFilter;-><init>()V

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0f004d

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageLookupFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 275
    :pswitch_15
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageNormalBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 273
    :pswitch_16
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageChromaKeyBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 271
    :pswitch_17
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSubtractBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 269
    :pswitch_18
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSoftLightBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 267
    :pswitch_19
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLinearBurnBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 265
    :pswitch_1a
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLuminosityBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 263
    :pswitch_1b
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 261
    :pswitch_1c
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHueBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 259
    :pswitch_1d
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 257
    :pswitch_1e
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageAlphaBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 255
    :pswitch_1f
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageScreenBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 253
    :pswitch_20
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageOverlayBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_21
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageMultiplyBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 249
    :pswitch_22
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDivideBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 247
    :pswitch_23
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageAddBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 245
    :pswitch_24
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageLightenBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_25
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHardLightBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 230
    :pswitch_26
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSourceOverBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 240
    :pswitch_27
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageExclusionBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 238
    :pswitch_28
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDissolveBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 228
    :pswitch_29
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDifferenceBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 236
    :pswitch_2a
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDarkenBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 234
    :pswitch_2b
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorDodgeBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 232
    :pswitch_2c
    const-class p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBurnBlendFilter;

    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p0

    return-object p0

    .line 223
    :pswitch_2d
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;-><init>()V

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f110013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object p1

    .line 217
    :pswitch_2e
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 218
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 219
    iput p1, p0, Landroid/graphics/PointF;->y:F

    .line 220
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {p1, p0, v0, v2, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;-><init>(Landroid/graphics/PointF;[FFF)V

    return-object p1

    .line 215
    :pswitch_2f
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageWhiteBalanceFilter;

    const p1, 0x459c4000    # 5000.0f

    invoke-direct {p0, p1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageWhiteBalanceFilter;-><init>(FF)V

    return-object p0

    .line 213
    :pswitch_30
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    invoke-direct {p0, v3, v3, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;-><init>(FFF)V

    return-object p0

    .line 211
    :pswitch_31
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageOpacityFilter;

    invoke-direct {p0, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageOpacityFilter;-><init>(F)V

    return-object p0

    .line 209
    :pswitch_32
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageMonochromeFilter;

    const/4 p1, 0x4

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-direct {p0, v3, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageMonochromeFilter;-><init>(F[F)V

    return-object p0

    .line 207
    :pswitch_33
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;

    invoke-direct {p0, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;-><init>(FF)V

    return-object p0

    .line 205
    :pswitch_34
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;

    invoke-direct {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;-><init>(F)V

    return-object p0

    .line 203
    :pswitch_35
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;

    invoke-direct {p0, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;-><init>(F)V

    return-object p0

    .line 172
    :pswitch_36
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;-><init>()V

    return-object p0

    .line 174
    :pswitch_37
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;

    const/high16 p1, 0x42b40000    # 90.0f

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;-><init>(F)V

    return-object p0

    .line 170
    :pswitch_38
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;-><init>()V

    return-object p0

    .line 176
    :pswitch_39
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageBrightnessFilter;

    const/high16 p1, 0x3fc00000    # 1.5f

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageBrightnessFilter;-><init>(F)V

    return-object p0

    .line 168
    :pswitch_3a
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageGammaFilter;

    invoke-direct {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageGammaFilter;-><init>(F)V

    return-object p0

    .line 195
    :pswitch_3b
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImagePosterizeFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImagePosterizeFilter;-><init>()V

    return-object p0

    .line 193
    :pswitch_3c
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageEmbossFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageEmbossFilter;-><init>()V

    return-object p0

    .line 197
    :pswitch_3d
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 198
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDirectionalSobelEdgeDetectionFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageDirectionalSobelEdgeDetectionFilter;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;

    invoke-direct {p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance p1, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;

    invoke-direct {p1, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilterGroup;-><init>(Ljava/util/List;)V

    return-object p1

    .line 188
    :pswitch_3e
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3ConvolutionFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3ConvolutionFilter;-><init>()V

    const/16 p1, 0x9

    .line 189
    new-array p1, p1, [F

    fill-array-data p1, :array_2

    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3ConvolutionFilter;->setConvolutionKernel([F)V

    return-object p0

    .line 186
    :pswitch_3f
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;-><init>()V

    return-object p0

    .line 180
    :pswitch_40
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>()V

    return-object p0

    .line 182
    :pswitch_41
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;-><init>()V

    .line 183
    invoke-virtual {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;->setSharpness(F)V

    return-object p0

    .line 178
    :pswitch_42
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageGrayscaleFilter;-><init>()V

    return-object p0

    .line 166
    :pswitch_43
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    invoke-direct {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;-><init>(F)V

    return-object p0

    .line 162
    :pswitch_44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110014

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 158
    :pswitch_45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110010

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 154
    :pswitch_46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11000e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 150
    :pswitch_47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11000c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 146
    :pswitch_48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11000b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 142
    :pswitch_49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f11000a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 138
    :pswitch_4a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110008

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 134
    :pswitch_4b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110007

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 130
    :pswitch_4c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110005

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 126
    :pswitch_4d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110004

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 122
    :pswitch_4e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110003

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 118
    :pswitch_4f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110001

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 114
    :pswitch_50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f110002

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 110
    :pswitch_51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 p1, 0x7f110000

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageToneCurveFilter;->setFromCurveFileInputStream(Ljava/io/InputStream;)V

    return-object v0

    .line 108
    :pswitch_52
    new-instance p0, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ee66666    # 0.45f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
