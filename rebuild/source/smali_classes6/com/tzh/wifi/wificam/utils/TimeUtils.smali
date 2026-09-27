.class public Lcom/tzh/wifi/wificam/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# instance fields
.field private hour:I

.field private minute:I

.field private second:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->second:I

    .line 6
    iput v0, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->minute:I

    .line 7
    iput v0, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->hour:I

    long-to-int p2, p1

    .line 11
    rem-int/lit8 p1, p2, 0x3c

    iput p1, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->second:I

    .line 12
    div-int/lit8 p1, p2, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    iput p1, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->minute:I

    .line 13
    div-int/lit16 p2, p2, 0xe10

    iput p2, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->hour:I

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 5

    .line 20
    iget v0, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->hour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->minute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tzh/wifi/wificam/utils/TimeUtils;->second:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%02d:%02d:%02d\n"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
