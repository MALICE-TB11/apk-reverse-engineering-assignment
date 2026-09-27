.class public Lcom/tzh/wifi/wificam/utils/GPSUtil;
.super Ljava/lang/Object;
.source "GPSUtil.java"


# static fields
.field public static a:D = 6378245.0

.field public static ee:D = 0.006693421622965943

.field public static pi:D = 3.141592653589793

.field public static x_pi:D = 52.35987755982988


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bd09_To_Gcj02(DD)[D
    .locals 6

    const-wide v0, 0x3f7a9fbe76c8b439L    # 0.0065

    sub-double/2addr p2, v0

    const-wide v0, 0x3f789374bc6a7efaL    # 0.006

    sub-double/2addr p0, v0

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->x_pi:D

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 115
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sget-wide v2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->x_pi:D

    mul-double p2, p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p2, p2, v2

    sub-double/2addr p0, p2

    .line 116
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p2, p2, v0

    .line 117
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    const/4 p0, 0x2

    .line 118
    new-array p0, p0, [D

    const/4 p1, 0x0

    aput-wide v0, p0, p1

    const/4 p1, 0x1

    aput-wide p2, p0, p1

    return-object p0
.end method

.method public static bd09_To_gps84(DD)[D
    .locals 3

    .line 136
    invoke-static {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->bd09_To_Gcj02(DD)[D

    move-result-object p0

    const/4 p1, 0x0

    .line 137
    aget-wide p2, p0, p1

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    invoke-static {p2, p3, v1, v2}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->gcj02_To_Gps84(DD)[D

    move-result-object p0

    .line 139
    aget-wide p2, p0, p1

    invoke-static {p2, p3}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->retain6(D)D

    move-result-wide p2

    aput-wide p2, p0, p1

    .line 140
    aget-wide p1, p0, v0

    invoke-static {p1, p2}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->retain6(D)D

    move-result-wide p1

    aput-wide p1, p0, v0

    return-object p0
.end method

.method public static gcj02_To_Bd09(DD)[D
    .locals 6

    mul-double v0, p2, p2

    mul-double v2, p0, p0

    add-double/2addr v0, v2

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-wide v2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->x_pi:D

    mul-double v2, v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v4, 0x3ef4f8b588e368f1L    # 2.0E-5

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    .line 101
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    sget-wide v2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->x_pi:D

    mul-double p2, p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide v2, 0x3ec92a737110e454L    # 3.0E-6

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    .line 102
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p2, p2, v0

    const-wide v2, 0x3f7a9fbe76c8b439L    # 0.0065

    add-double/2addr p2, v2

    .line 103
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double v0, v0, p0

    const-wide p0, 0x3f789374bc6a7efaL    # 0.006

    add-double/2addr v0, p0

    const/4 p0, 0x2

    .line 104
    new-array p0, p0, [D

    const/4 p1, 0x0

    aput-wide v0, p0, p1

    const/4 p1, 0x1

    aput-wide p2, p0, p1

    return-object p0
.end method

.method public static gcj02_To_Gps84(DD)[D
    .locals 6

    .line 86
    invoke-static {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->transform(DD)[D

    move-result-object v0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double p2, p2, v1

    const/4 v3, 0x1

    .line 87
    aget-wide v4, v0, v3

    sub-double/2addr p2, v4

    mul-double p0, p0, v1

    const/4 v1, 0x0

    .line 88
    aget-wide v4, v0, v1

    sub-double/2addr p0, v4

    const/4 v0, 0x2

    .line 89
    new-array v0, v0, [D

    aput-wide p0, v0, v1

    aput-wide p2, v0, v3

    return-object v0
.end method

.method public static gps84_To_Gcj02(DD)[D
    .locals 22

    .line 66
    invoke-static/range {p0 .. p3}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->outOfChina(DD)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 67
    new-array v0, v3, [D

    aput-wide p0, v0, v2

    aput-wide p2, v0, v1

    return-object v0

    :cond_0
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, p2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, p0, v6

    .line 69
    invoke-static {v4, v5, v6, v7}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->transformLat(DD)D

    move-result-wide v8

    .line 70
    invoke-static {v4, v5, v6, v7}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->transformLon(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v10, p0, v6

    .line 71
    sget-wide v12, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v10, v10, v12

    .line 72
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 73
    sget-wide v14, Lcom/tzh/wifi/wificam/utils/GPSUtil;->ee:D

    mul-double v14, v14, v12

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    .line 74
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v8, v8, v6

    .line 75
    sget-wide v18, Lcom/tzh/wifi/wificam/utils/GPSUtil;->a:D

    sget-wide v20, Lcom/tzh/wifi/wificam/utils/GPSUtil;->ee:D

    sub-double v12, v12, v20

    mul-double v12, v12, v18

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    sget-wide v14, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v12, v12, v14

    div-double/2addr v8, v12

    mul-double v4, v4, v6

    div-double v18, v18, v16

    .line 76
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    sget-wide v6, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v18, v18, v6

    div-double v4, v4, v18

    add-double v6, p0, v8

    add-double v4, p2, v4

    .line 79
    new-array v0, v3, [D

    aput-wide v6, v0, v2

    aput-wide v4, v0, v1

    return-object v0
.end method

.method public static gps84_To_bd09(DD)[D
    .locals 2

    .line 130
    invoke-static {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->gps84_To_Gcj02(DD)[D

    move-result-object p0

    const/4 p1, 0x0

    .line 131
    aget-wide p1, p0, p1

    const/4 p3, 0x1

    aget-wide v0, p0, p3

    invoke-static {p1, p2, v0, v1}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->gcj02_To_Bd09(DD)[D

    move-result-object p0

    return-object p0
.end method

.method public static isInArea(DD)Z
    .locals 4

    const-wide/high16 v0, 0x405e000000000000L    # 120.0

    const/4 v2, 0x1

    cmpl-double v3, p2, v0

    if-lez v3, :cond_0

    const-wide v0, 0x405e800000000000L    # 122.0

    cmpg-double v3, p2, v0

    if-gez v3, :cond_0

    const-wide v0, 0x40393ae147ae147bL    # 25.23

    cmpg-double v3, p0, v0

    if-gez v3, :cond_0

    const-wide v0, 0x4035fae147ae147bL    # 21.98

    cmpl-double v3, p0, v0

    if-lez v3, :cond_0

    return v2

    :cond_0
    const-wide v0, 0x400eb23d4f15e7c9L    # 3.837031

    cmpl-double v3, p0, v0

    if-lez v3, :cond_1

    const-wide v0, 0x404ac824d4cb9ecfL    # 53.563624

    cmpg-double v3, p0, v0

    if-gez v3, :cond_1

    const-wide p0, 0x4060e30fba8826abL    # 135.09567

    cmpg-double v0, p2, p0

    if-gez v0, :cond_1

    const-wide p0, 0x405260269595fedaL    # 73.502355

    cmpl-double v0, p2, p0

    if-lez v0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static outOfChina(DD)Z
    .locals 4

    const-wide v0, 0x4052004189374bc7L    # 72.004

    const/4 v2, 0x1

    cmpg-double v3, p2, v0

    if-ltz v3, :cond_2

    const-wide v0, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v3, p2, v0

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide p2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v0, p0, p2

    if-ltz v0, :cond_2

    const-wide p2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method private static retain6(D)D
    .locals 1

    .line 151
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "%.6f"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static transform(DD)[D
    .locals 22

    .line 34
    invoke-static/range {p0 .. p3}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->outOfChina(DD)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 35
    new-array v0, v3, [D

    aput-wide p0, v0, v2

    aput-wide p2, v0, v1

    return-object v0

    :cond_0
    const-wide v4, 0x405a400000000000L    # 105.0

    sub-double v4, p2, v4

    const-wide v6, 0x4041800000000000L    # 35.0

    sub-double v6, p0, v6

    .line 37
    invoke-static {v4, v5, v6, v7}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->transformLat(DD)D

    move-result-wide v8

    .line 38
    invoke-static {v4, v5, v6, v7}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->transformLon(DD)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v10, p0, v6

    .line 39
    sget-wide v12, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v10, v10, v12

    .line 40
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 41
    sget-wide v14, Lcom/tzh/wifi/wificam/utils/GPSUtil;->ee:D

    mul-double v14, v14, v12

    mul-double v14, v14, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v14

    .line 42
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    mul-double v8, v8, v6

    .line 43
    sget-wide v18, Lcom/tzh/wifi/wificam/utils/GPSUtil;->a:D

    sget-wide v20, Lcom/tzh/wifi/wificam/utils/GPSUtil;->ee:D

    sub-double v12, v12, v20

    mul-double v12, v12, v18

    mul-double v14, v14, v16

    div-double/2addr v12, v14

    sget-wide v14, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v12, v12, v14

    div-double/2addr v8, v12

    mul-double v4, v4, v6

    div-double v18, v18, v16

    .line 44
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    sget-wide v6, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v18, v18, v6

    div-double v4, v4, v18

    add-double v6, p0, v8

    add-double v4, p2, v4

    .line 47
    new-array v0, v3, [D

    aput-wide v6, v0, v2

    aput-wide v4, v0, v1

    return-object v0
.end method

.method public static transformLat(DD)D
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p0, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p2, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p2, v8

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p0

    mul-double v10, v10, p2

    add-double/2addr v4, v10

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double p0, p0, v8

    .line 17
    sget-wide v8, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p0, p0, v8

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double p0, p0, v8

    sget-wide v10, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v2, v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    .line 18
    sget-wide p0, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p0, p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v8

    div-double v2, p2, v6

    sget-wide v8, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    mul-double v2, v2, v8

    add-double/2addr p0, v2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    const-wide/high16 p0, 0x4028000000000000L    # 12.0

    div-double p0, p2, p0

    .line 19
    sget-wide v2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p0, p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    mul-double p0, p0, v2

    sget-wide v2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p2, p2, v2

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    div-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    mul-double p2, p2, v2

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    div-double/2addr p0, v6

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public static transformLon(DD)D
    .locals 12

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p2, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p0, v6

    mul-double v10, v8, p0

    add-double/2addr v2, v10

    mul-double v8, v8, p2

    add-double/2addr v2, v8

    .line 25
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4018000000000000L    # 6.0

    mul-double p2, p2, p0

    .line 26
    sget-wide v6, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double p2, p2, v6

    mul-double v8, p0, v4

    sget-wide v10, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr p2, v8

    mul-double p2, p2, v4

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    .line 27
    sget-wide p2, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p2, p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p2, p2, v6

    div-double v6, p0, v8

    sget-wide v10, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    mul-double v6, v6, v10

    add-double/2addr p2, v6

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    const-wide/high16 p2, 0x4028000000000000L    # 12.0

    div-double p2, p0, p2

    .line 28
    sget-wide v6, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p2, p2, v6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    const-wide v6, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double/2addr p0, v6

    sget-wide v6, Lcom/tzh/wifi/wificam/utils/GPSUtil;->pi:D

    mul-double p0, p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double p0, p0, v0

    add-double/2addr p2, p0

    mul-double p2, p2, v4

    div-double/2addr p2, v8

    add-double/2addr v2, p2

    return-wide v2
.end method
