.class Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;
.super Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrosshatchBlurAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 3

    .line 617
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;

    const v1, 0x3d75c28f    # 0.06f

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->range(IFF)F

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;->setCrossHatchSpacing(F)V

    .line 618
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;

    const v1, 0x3bc49ba6    # 0.006f

    invoke-virtual {p0, p1, v2, v1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->range(IFF)F

    move-result p1

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageCrosshatchFilter;->setLineWidth(F)V

    return-void
.end method
