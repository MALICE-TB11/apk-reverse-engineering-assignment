.class public Lcom/tzh/wifi/wificam/model/base/BaseCmd;
.super Ljava/lang/Object;
.source "BaseCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final RESUME:I = 0x0

.field public static final START:I = 0x1


# instance fields
.field protected bRunning:Z

.field private checkoutCount:I

.field private checkoutFlag:Z

.field private cmdData:[B

.field private cmdNewData:[B

.field private isOneKeyFlyCount:I

.field private isOneKeyFlyDown:Z

.field private isOneKeyMergencyCount:I

.field private isOneKeyMergencyDown:Z

.field private isOneKeyStopCount:I

.field private isOneKeyStopDown:Z

.field private lastLeftHVal:I

.field private lastRightHVal:I

.field private lastRightOVal:I

.field private leftHVal:I

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mDataThread:Ljava/lang/Thread;

.field public pitchData:B

.field public powerVal:B

.field private resumeCount:I

.field private rightHVal:I

.field private rightOVal:I

.field public rollData:B

.field private sendType:I

.field private snapData:[B

.field private state:I

.field public yawData:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 10
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    .line 11
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    const/16 v0, 0x14

    .line 13
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    .line 16
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->bRunning:Z

    .line 18
    iput-byte v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->powerVal:B

    const/16 v1, -0x80

    .line 19
    iput-byte v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->yawData:B

    .line 20
    iput-byte v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rollData:B

    .line 21
    iput-byte v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->pitchData:B

    .line 23
    sget-byte v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_FINETUNE_VALUE:B

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->leftHVal:I

    .line 24
    sget-byte v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_FINETUNE_VALUE:B

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightHVal:I

    .line 25
    sget-byte v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_FINETUNE_VALUE:B

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightOVal:I

    .line 27
    sget-byte v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_FINETUNE_VALUE:B

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastLeftHVal:I

    .line 28
    sget-byte v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_FINETUNE_VALUE:B

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastRightHVal:I

    .line 29
    sget-byte v1, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_FINETUNE_VALUE:B

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastRightOVal:I

    .line 31
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    .line 32
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    .line 34
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    .line 35
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    .line 37
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    .line 38
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    .line 40
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    .line 42
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    .line 43
    const-class v1, Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    .line 51
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->state:I

    const/16 v0, 0x19

    .line 52
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->resumeCount:I

    .line 55
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Init()V

    .line 56
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseNewCmd_Init()V

    return-void
.end method

.method private static Bytes2String([B)Ljava/lang/String;
    .locals 5

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 565
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 566
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v3, "%02x  "

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private IBaseCmdNew_odd()B
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    :goto_0
    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v2, v2, v1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 136
    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result v0

    return v0
.end method

.method private IBaseCmd_Byte2Int(B)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    shr-int v2, p1, v0

    and-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v0

    .line 118
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v2, v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private IBaseCmd_Odd()B
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    aget-byte v2, v2, v1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 128
    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result v0

    return v0
.end method

.method private IBaseCmd_RightData(B)B
    .locals 1

    .line 140
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Byte2Int(B)I

    move-result p1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x99

    if-ne p1, v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    int-to-byte p1, p1

    return p1
.end method

.method private ISnapCmd_Odd()B
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    aget-byte v2, v2, v1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 111
    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result v0

    return v0
.end method


# virtual methods
.method public IBaseCmd_Init()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/16 v1, 0x66

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x80

    .line 61
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 62
    aput-byte v3, v0, v1

    const/4 v1, 0x3

    .line 63
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 64
    aput-byte v3, v0, v1

    const/4 v1, 0x5

    .line 65
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 66
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Odd()B

    move-result v2

    aput-byte v2, v0, v1

    .line 67
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v1, 0x7

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    return-void
.end method

.method public IBaseNewCmd_Init()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/16 v1, 0x66

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x14

    .line 72
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    const/16 v3, -0x80

    .line 73
    aput-byte v3, v0, v1

    const/4 v1, 0x3

    .line 74
    aput-byte v3, v0, v1

    const/4 v1, 0x4

    .line 75
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 76
    aput-byte v3, v0, v1

    const/4 v1, 0x6

    .line 77
    aput-byte v2, v0, v1

    const/4 v1, 0x7

    .line 78
    aput-byte v2, v0, v1

    const/16 v1, 0x8

    .line 79
    aput-byte v2, v0, v1

    const/16 v1, 0x9

    .line 80
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 81
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    .line 82
    aput-byte v2, v0, v1

    const/16 v1, 0xc

    .line 83
    aput-byte v2, v0, v1

    const/16 v1, 0xd

    .line 84
    aput-byte v2, v0, v1

    const/16 v1, 0xe

    .line 85
    aput-byte v2, v0, v1

    const/16 v1, 0xf

    .line 86
    aput-byte v2, v0, v1

    const/16 v1, 0x10

    .line 87
    aput-byte v2, v0, v1

    const/16 v1, 0x11

    .line 88
    aput-byte v2, v0, v1

    const/16 v1, 0x12

    .line 89
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmdNew_odd()B

    move-result v2

    aput-byte v2, v0, v1

    .line 90
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/16 v1, 0x13

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    return-void
.end method

.method public ISnapCmd_Init()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    const/16 v1, -0x56

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, -0x80

    .line 96
    aput-byte v3, v0, v1

    const/4 v1, 0x2

    .line 97
    aput-byte v3, v0, v1

    const/4 v1, 0x3

    .line 98
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    .line 99
    aput-byte v3, v0, v1

    const/4 v1, 0x5

    .line 100
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 101
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->ISnapCmd_Odd()B

    move-result v2

    aput-byte v2, v0, v1

    .line 102
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    const/4 v1, 0x7

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    return-void
.end method

.method public clearCheckOutFlg()V
    .locals 4

    .line 279
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 290
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    if-eqz v0, :cond_4

    .line 291
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    const/16 v3, 0x32

    if-le v0, v3, :cond_1

    .line 292
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    .line 293
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v1, 0x6

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfb

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 294
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    return-void

    :cond_1
    add-int/2addr v0, v1

    .line 296
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    return-void

    .line 280
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    if-eqz v0, :cond_4

    .line 281
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 282
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    .line 283
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v1, 0x5

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 284
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    return-void

    :cond_3
    add-int/2addr v0, v1

    .line 286
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    :cond_4
    return-void
.end method

.method public clearOneKeyFly()V
    .locals 4

    .line 304
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 315
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    if-eqz v0, :cond_4

    .line 316
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    const/16 v3, 0x32

    if-le v0, v3, :cond_1

    .line 317
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    .line 318
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v1, 0x6

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 319
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    return-void

    :cond_1
    add-int/2addr v0, v1

    .line 321
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    return-void

    .line 305
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    if-eqz v0, :cond_4

    .line 306
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 307
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    .line 308
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v1, 0x5

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 309
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    return-void

    :cond_3
    add-int/2addr v0, v1

    .line 311
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    :cond_4
    return-void
.end method

.method public clearOneKeyMergency()V
    .locals 4

    .line 377
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 388
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    if-eqz v0, :cond_4

    .line 389
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    const/16 v3, 0x32

    if-le v0, v3, :cond_1

    .line 390
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    .line 391
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v1, 0x6

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 392
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    return-void

    :cond_1
    add-int/2addr v0, v1

    .line 394
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    return-void

    .line 378
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    if-eqz v0, :cond_4

    .line 379
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 380
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    .line 381
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v1, 0x5

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfb

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 382
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    return-void

    :cond_3
    add-int/2addr v0, v1

    .line 384
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    :cond_4
    return-void
.end method

.method public clearOneKeyStop()V
    .locals 4

    .line 341
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 352
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    if-eqz v0, :cond_4

    .line 353
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    const/16 v3, 0x32

    if-le v0, v3, :cond_1

    .line 354
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    .line 355
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v1, 0x6

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 356
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    return-void

    :cond_1
    add-int/2addr v0, v1

    .line 358
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    return-void

    .line 342
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    if-eqz v0, :cond_4

    .line 343
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 344
    iput v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    .line 345
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v1, 0x5

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 346
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    return-void

    :cond_3
    add-int/2addr v0, v1

    .line 348
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    :cond_4
    return-void
.end method

.method public dealWithPitchValue(B)B
    .locals 2

    .line 480
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Byte2Int(B)I

    move-result p1

    .line 481
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightOVal:I

    iget v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastRightOVal:I

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    const/16 v0, 0xff

    if-lt p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    sub-int v0, p1, v1

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    int-to-byte v0, v1

    sub-int/2addr p1, v0

    :cond_2
    int-to-byte p1, p1

    :goto_0
    int-to-byte p1, p1

    .line 496
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result p1

    return p1
.end method

.method public dealWithResume()V
    .locals 4

    const-string v0, "#### send data:"

    .line 530
    :try_start_0
    iget v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->resumeCount:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 531
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->resumeCount:I

    .line 532
    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/tzh/wifi/utils/Camera;->iCmdSend([BI)I

    .line 533
    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->snapData:[B

    invoke-static {v1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->Bytes2String([B)Ljava/lang/String;

    move-result-object v1

    .line 534
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 536
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->resumeCount:I

    :goto_0
    const-wide/16 v0, 0x1e

    .line 541
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

.method public dealWithRollValue(B)B
    .locals 2

    .line 460
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Byte2Int(B)I

    move-result p1

    .line 461
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightHVal:I

    iget v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastRightHVal:I

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    const/16 v0, 0xff

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    sub-int v0, p1, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    int-to-byte v0, v1

    sub-int/2addr p1, v0

    :cond_2
    int-to-byte v0, p1

    :goto_0
    int-to-byte p1, v0

    .line 476
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result p1

    return p1
.end method

.method public dealWithStart()V
    .locals 4

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->clearCheckOutFlg()V

    .line 503
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->clearOneKeyFly()V

    .line 504
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->clearOneKeyStop()V

    .line 505
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->clearOneKeyMergency()V

    .line 507
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "YXY send data:"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 515
    :try_start_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    invoke-direct {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmdNew_odd()B

    move-result v2

    const/16 v3, 0x12

    aput-byte v2, v0, v3

    .line 516
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/tzh/wifi/utils/Camera;->iCmdSend([BI)I

    .line 517
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    invoke-static {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->Bytes2String([B)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x2f

    .line 519
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    return-void

    .line 508
    :cond_1
    :goto_0
    const-string v0, "[YXY]"

    const-string v2, "dealWithStart: "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    invoke-direct {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Odd()B

    move-result v2

    const/4 v3, 0x6

    aput-byte v2, v0, v3

    .line 510
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    array-length v2, v0

    invoke-static {v0, v2}, Lcom/tzh/wifi/utils/Camera;->iCmdSend([BI)I

    .line 511
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    invoke-static {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->Bytes2String([B)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    const-wide/16 v0, 0x28

    .line 513
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public dealWithYawValue(B)B
    .locals 2

    .line 439
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Byte2Int(B)I

    move-result p1

    .line 440
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->leftHVal:I

    iget v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastLeftHVal:I

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    const/16 v0, 0xff

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    int-to-byte v0, v1

    sub-int/2addr p1, v0

    :cond_2
    int-to-byte v0, p1

    :goto_0
    int-to-byte p1, v0

    .line 456
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result p1

    return p1
.end method

.method public onAccNotify(BB)V
    .locals 3

    .line 415
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 419
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    iput-byte p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->powerVal:B

    aput-byte p1, v0, v1

    const/4 p1, 0x5

    .line 420
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithYawValue(B)B

    move-result p2

    aput-byte p2, v0, p1

    :cond_1
    return-void

    .line 416
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    iput-byte p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->powerVal:B

    const/4 v2, 0x3

    aput-byte p1, v0, v2

    .line 417
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithYawValue(B)B

    move-result p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public onDirNotify(BB)V
    .locals 3

    .line 426
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 430
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithRollValue(B)B

    move-result p1

    aput-byte p1, v0, v2

    .line 431
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v0, 0x3

    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithPitchValue(B)B

    move-result p2

    aput-byte p2, p1, v0

    :cond_1
    return-void

    .line 427
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithRollValue(B)B

    move-result p1

    aput-byte p1, v0, v1

    .line 428
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithPitchValue(B)B

    move-result p2

    aput-byte p2, p1, v2

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    .line 586
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->state:I

    .line 587
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    .line 588
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    .line 589
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    .line 590
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    .line 591
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->ISnapCmd_Init()V

    const/16 v0, 0x19

    .line 592
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->resumeCount:I

    .line 593
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 594
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    .line 595
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "start:  "

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->bRunning:Z

    .line 551
    :cond_0
    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->bRunning:Z

    if-eqz v1, :cond_3

    .line 552
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->bRunning:Z

    .line 553
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->bRunning:Z

    if-eqz v1, :cond_0

    .line 554
    iget v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->state:I

    if-ne v1, v0, :cond_2

    .line 555
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithStart()V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_1

    .line 557
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->dealWithResume()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setCameraType(I)V
    .locals 2

    .line 615
    iput p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCameraType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[YXY]"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckOutFlg()V
    .locals 5

    .line 193
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 198
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v3, 0x6

    aget-byte v4, v0, v3

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 199
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    .line 200
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    :cond_1
    return-void

    .line 194
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v3, 0x5

    aget-byte v4, v0, v3

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 195
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutCount:I

    .line 196
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->checkoutFlag:Z

    return-void
.end method

.method public setNoHeadModle(Z)V
    .locals 3

    .line 223
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x7

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v2, p1, v0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x5

    if-eqz p1, :cond_4

    .line 225
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void

    .line 227
    :cond_4
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xef

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public setRotate(Z)V
    .locals 2

    .line 206
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xf7

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x5

    if-eqz p1, :cond_4

    .line 208
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void

    .line 210
    :cond_4
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xf7

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public setStayHigh(Z)V
    .locals 3

    .line 241
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v2, p1, v0

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xfd

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_2
    :goto_0
    return-void
.end method

.method public setTune(BBB)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 260
    iput p1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->leftHVal:I

    return-void

    :cond_0
    if-eq p2, v0, :cond_1

    .line 262
    iput p2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightHVal:I

    return-void

    :cond_1
    if-eq p3, v0, :cond_2

    .line 264
    iput p3, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightOVal:I

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    .line 576
    iput v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->state:I

    .line 577
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 578
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    .line 579
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "start:  "

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->bRunning:Z

    .line 602
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "stop:  "

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 605
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    .line 606
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->mDataThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public takOneKeyLand()V
    .locals 6

    .line 165
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v2, 0x6

    aget-byte v4, v0, v2

    or-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 171
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    .line 172
    iput-boolean v3, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    :cond_1
    return-void

    .line 166
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v4, 0x5

    aget-byte v5, v0, v4

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 167
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopCount:I

    .line 168
    iput-boolean v3, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyStopDown:Z

    return-void
.end method

.method public takeOneKeyFly()V
    .locals 5

    .line 150
    const-string v0, "[YXY]"

    const-string v1, "takeOneKeyFly: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 156
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v3, 0x6

    aget-byte v4, v0, v3

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 157
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    .line 158
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    :cond_1
    return-void

    .line 152
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v3, 0x5

    aget-byte v4, v0, v3

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 153
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyCount:I

    .line 154
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyFlyDown:Z

    return-void
.end method

.method public takeOneKeyMergency()V
    .locals 6

    .line 179
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 184
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdNewData:[B

    const/4 v4, 0x6

    aget-byte v5, v0, v4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    .line 185
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    .line 186
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    :cond_1
    return-void

    .line 180
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->cmdData:[B

    const/4 v3, 0x5

    aget-byte v4, v0, v3

    or-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 181
    iput v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyCount:I

    .line 182
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->isOneKeyMergencyDown:Z

    return-void
.end method
