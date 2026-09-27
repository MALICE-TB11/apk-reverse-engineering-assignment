.class public Lcom/tzh/wifi/wificam/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetLR(IIII)I
    .locals 0

    sub-int/2addr p0, p2

    .line 39
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int p3, p3, p0

    div-int/2addr p3, p1

    return p3
.end method

.method public static GetUpDown(IIII)I
    .locals 0

    sub-int/2addr p0, p2

    .line 33
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int p3, p3, p0

    div-int/2addr p3, p1

    return p3
.end method

.method public static Length(IIII)I
    .locals 4

    sub-int/2addr p0, p2

    .line 8
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-int/2addr p1, p3

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static UpdatePoint(IIIII)Landroid/graphics/Point;
    .locals 7

    .line 24
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/utils/Util;->getRadian(IIII)D

    move-result-wide p0

    int-to-double v1, p2

    int-to-double v3, p4

    .line 26
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v3

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-int p2, v1

    iput p2, v0, Landroid/graphics/Point;->x:I

    int-to-double p2, p3

    .line 27
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v3, v3, p0

    sub-double/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int p0, p0

    iput p0, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public static getRadian(IIII)D
    .locals 8

    sub-int/2addr p2, p0

    sub-int p0, p3, p1

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v6, p0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    if-ge p3, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    int-to-double p0, p0

    mul-double v0, v0, p0

    return-wide v0
.end method
