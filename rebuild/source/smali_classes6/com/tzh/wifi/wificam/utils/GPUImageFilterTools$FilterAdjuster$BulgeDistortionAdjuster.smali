.class Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;
.super Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BulgeDistortionAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;",
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

    .line 622
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 622
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 3

    .line 625
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->range(IFF)F

    move-result v1

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;->setRadius(F)V

    .line 626
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v1, v2}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->range(IFF)F

    move-result p1

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageBulgeDistortionFilter;->setScale(F)V

    return-void
.end method
