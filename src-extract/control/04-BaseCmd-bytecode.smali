# APK SHA-256: 49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0
# DEX: classes6.dex
# Tool: JADX 1.5.6 JavaClass.getSmali(), baksmali 3.0.9
# Original class: Lcom/tzh/wifi/wificam/model/base/BaseCmd;
# .line is the original DEX debug source line, not this excerpt line.

# Original getSmali() lines 396-419
.method private IBaseCmd_RightData(B)B
    .registers 3

    .line 140
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Byte2Int(B)I

    move-result p1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_c

    const/16 v0, 0x99

    if-ne p1, v0, :cond_e

    :cond_c
    add-int/lit8 p1, p1, 0x1

    :cond_e
    int-to-byte p1, p1

    return p1
.end method

# Original getSmali() lines 1136-1191
.method public dealWithPitchValue(B)B
    .registers 4

    .line 480
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_Byte2Int(B)I

    move-result p1

    .line 481
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->rightOVal:I

    iget v1, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->lastRightOVal:I

    if-le v0, v1, :cond_12

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    const/16 v0, 0xff

    if-lt p1, v0, :cond_1b

    const/4 p1, -0x1

    goto :goto_1c

    :cond_12
    sub-int/2addr v1, v0

    sub-int v0, p1, v1

    if-gtz v0, :cond_19

    const/4 p1, 0x0

    goto :goto_1c

    :cond_19
    int-to-byte v0, v1

    sub-int/2addr p1, v0

    :cond_1b
    int-to-byte p1, p1

    :goto_1c
    int-to-byte p1, p1

    .line 496
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->IBaseCmd_RightData(B)B

    move-result p1

    return p1
.end method

# Original getSmali() lines 2204-2269
.method public takOneKeyLand()V
    .registers 7

    .line 165
    iget v0, p0, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->sendType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1a

    if-ne v0, v3, :cond_a

    goto :goto_1a

    :cond_a
    if-ne v0, v2, :cond_19

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

    :cond_19
    return-void

    .line 166
    :cond_1a
    :goto_1a
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
