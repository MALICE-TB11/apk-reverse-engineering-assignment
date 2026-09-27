.class Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;
.super Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HazeAdjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
        "Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;",
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

    .line 637
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public adjust(I)V
    .locals 4

    .line 640
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;

    const v1, -0x41666666    # -0.3f

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1, v1, v2}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->range(IFF)F

    move-result v3

    invoke-virtual {v0, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setDistance(F)V

    .line 641
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;

    invoke-virtual {p0, p1, v1, v2}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->range(IFF)F

    move-result p1

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageHazeFilter;->setSlope(F)V

    return-void
.end method
