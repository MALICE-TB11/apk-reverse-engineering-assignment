.class public Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterAdjuster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;,
        Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;
    }
.end annotation


# instance fields
.field private final adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
            "+",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 2

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSharpenFilter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 368
    :cond_0
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 370
    :cond_1
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    if-eqz v0, :cond_2

    .line 371
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 372
    :cond_2
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageGammaFilter;

    if-eqz v0, :cond_3

    .line 373
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 374
    :cond_3
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageBrightnessFilter;

    if-eqz v0, :cond_4

    .line 375
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 376
    :cond_4
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSobelEdgeDetection;

    if-eqz v0, :cond_5

    .line 377
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 378
    :cond_5
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageEmbossFilter;

    if-eqz v0, :cond_6

    .line 379
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 380
    :cond_6
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;

    if-eqz v0, :cond_7

    .line 381
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 382
    :cond_7
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHueFilter;

    if-eqz v0, :cond_8

    .line 383
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 384
    :cond_8
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImagePosterizeFilter;

    if-eqz v0, :cond_9

    .line 385
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 386
    :cond_9
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    if-eqz v0, :cond_a

    .line 387
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 388
    :cond_a
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSaturationFilter;

    if-eqz v0, :cond_b

    .line 389
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 390
    :cond_b
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageExposureFilter;

    if-eqz v0, :cond_c

    .line 391
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 392
    :cond_c
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHighlightShadowFilter;

    if-eqz v0, :cond_d

    .line 393
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 394
    :cond_d
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageMonochromeFilter;

    if-eqz v0, :cond_e

    .line 395
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 396
    :cond_e
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageOpacityFilter;

    if-eqz v0, :cond_f

    .line 397
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 398
    :cond_f
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageRGBFilter;

    if-eqz v0, :cond_10

    .line 399
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 400
    :cond_10
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageWhiteBalanceFilter;

    if-eqz v0, :cond_11

    .line 401
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 402
    :cond_11
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;

    if-eqz v0, :cond_12

    .line 403
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 404
    :cond_12
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageDissolveBlendFilter;

    if-eqz v0, :cond_13

    .line 405
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 406
    :cond_13
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageGaussianBlurFilter;

    if-eqz v0, :cond_14

    .line 407
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 408
    :cond_14
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;

    if-eqz v0, :cond_15

    .line 409
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 410
    :cond_15
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;

    if-eqz v0, :cond_16

    .line 411
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 412
    :cond_16
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageGlassSphereFilter;

    if-eqz v0, :cond_17

    .line 413
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 414
    :cond_17
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;

    if-eqz v0, :cond_18

    .line 415
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 416
    :cond_18
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSphereRefractionFilter;

    if-eqz v0, :cond_19

    .line 417
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 418
    :cond_19
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;

    if-eqz v0, :cond_1a

    .line 419
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 420
    :cond_1a
    instance-of v0, p1, Ljp/co/cyberagent/android/gpuimage/GPUImageColorBalanceFilter;

    if-eqz v0, :cond_1b

    .line 421
    new-instance v0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;->filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void

    .line 423
    :cond_1b
    iput-object v1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->adjust(I)V

    :cond_0
    return-void
.end method

.method public canAdjust()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
