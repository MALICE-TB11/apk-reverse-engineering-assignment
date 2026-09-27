.class Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;
.super Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPU3x3TextureAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;",
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

    .line 532
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;->this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 3

    .line 535
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;

    const/4 v1, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;->range(IFF)F

    move-result p1

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage3x3TextureSamplingFilter;->setLineSize(F)V

    return-void
.end method
