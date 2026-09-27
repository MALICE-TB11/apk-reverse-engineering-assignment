.class public Lcom/tzh/wifi/wificam/model/base/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ICmd_AccNotify(BB)V
    .locals 0

    return-void
.end method

.method public ICmd_CheckOutFlg()V
    .locals 0

    return-void
.end method

.method public ICmd_DirNotify(BB)V
    .locals 0

    return-void
.end method

.method public ICmd_NoHeadModle(Z)V
    .locals 0

    return-void
.end method

.method public ICmd_OneKeyFly()V
    .locals 0

    return-void
.end method

.method public ICmd_OneKeyLand()V
    .locals 0

    return-void
.end method

.method public ICmd_OneKeyMergency()V
    .locals 0

    return-void
.end method

.method public ICmd_Resume()V
    .locals 0

    return-void
.end method

.method public ICmd_SetRotate(Z)V
    .locals 0

    return-void
.end method

.method public ICmd_SetTune(BBB)V
    .locals 0

    return-void
.end method

.method public ICmd_Start()V
    .locals 0

    return-void
.end method

.method public ICmd_StayHighModle(Z)V
    .locals 0

    return-void
.end method

.method public ICmd_Stop()V
    .locals 0

    return-void
.end method

.method public Recording(Z)V
    .locals 0

    return-void
.end method

.method public iCameraDeinit()V
    .locals 0

    .line 70
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraDeinit()V

    return-void
.end method

.method public iCameraEncodeStart(Ljava/lang/String;I)I
    .locals 0

    .line 123
    invoke-static {p1, p2}, Lcom/tzh/wifi/utils/Camera;->iCameraEncodeStart(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public iCameraEncodeStop()I
    .locals 1

    .line 127
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraEncodeStop()I

    move-result v0

    return v0
.end method

.method public iCameraInit()I
    .locals 1

    .line 66
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraInit()I

    move-result v0

    return v0
.end method

.method public iCameraRecSetParams(III)I
    .locals 0

    .line 103
    invoke-static {p1, p2, p3}, Lcom/tzh/wifi/utils/Camera;->iCameraRecSetParams(III)I

    move-result p1

    return p1
.end method

.method public iCameraRecStart(Ljava/lang/String;)I
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/tzh/wifi/utils/Camera;->iCameraRecStart(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public iCameraRecStop()V
    .locals 0

    .line 91
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraRecStop()V

    return-void
.end method

.method public iCameraRecWrite([BI)I
    .locals 0

    .line 95
    invoke-static {p1, p2}, Lcom/tzh/wifi/utils/Camera;->iCameraRecWrite([BI)I

    move-result p1

    return p1
.end method

.method public iCameraRoate(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public iCameraSetMode(I)I
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/tzh/wifi/utils/Camera;->iCameraSetMode(I)I

    move-result p1

    return p1
.end method

.method public iCameraStart()I
    .locals 1

    .line 75
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraStart()I

    move-result v0

    return v0
.end method

.method public iCameraStop()V
    .locals 0

    .line 83
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraStop()V

    return-void
.end method

.method public iCameraWritePic([BI)I
    .locals 0

    .line 99
    invoke-static {p1, p2}, Lcom/tzh/wifi/utils/Camera;->iCameraWritePic([BI)I

    move-result p1

    return p1
.end method

.method public iCmdSend([BI)I
    .locals 0

    .line 115
    invoke-static {p1, p2}, Lcom/tzh/wifi/utils/Camera;->iCmdSend([BI)I

    move-result p1

    return p1
.end method

.method public iCmdStart()I
    .locals 1

    .line 107
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCmdStart()I

    move-result v0

    return v0
.end method

.method public iCmdStop()V
    .locals 0

    .line 119
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCmdStop()V

    return-void
.end method

.method public isEncodingVadio()I
    .locals 1

    .line 131
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->isEncodingVadio()I

    move-result v0

    return v0
.end method

.method public takeSnap()V
    .locals 0

    return-void
.end method
