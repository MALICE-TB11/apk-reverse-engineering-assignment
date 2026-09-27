.class abstract Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Adjuster"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private filter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->this$0:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;-><init>(Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster;)V

    return-void
.end method


# virtual methods
.method public abstract adjust(I)V
.end method

.method public filter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;",
            ")",
            "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster<",
            "TT;>;"
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->filter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object p0
.end method

.method public getFilter()Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->filter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method protected range(IFF)F
    .locals 0

    sub-float/2addr p3, p2

    int-to-float p1, p1

    mul-float p3, p3, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p3, p1

    add-float/2addr p3, p2

    return p3
.end method

.method protected range(III)I
    .locals 0

    sub-int/2addr p3, p2

    mul-int p3, p3, p1

    .line 457
    div-int/lit8 p3, p3, 0x64

    add-int/2addr p3, p2

    return p3
.end method
