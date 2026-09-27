.class public Lcom/tzh/wifi/wificam/model/WiFiModelImpl;
.super Lcom/tzh/wifi/wificam/model/base/BaseModel;
.source "WiFiModelImpl.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/model/listener/INativeListener;


# instance fields
.field private baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

.field private mCamera:Lcom/tzh/wifi/utils/Camera;

.field private mContext:Landroid/content/Context;

.field private modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mCamera:Lcom/tzh/wifi/utils/Camera;

    .line 19
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    .line 22
    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;

    .line 24
    new-instance p2, Lcom/tzh/wifi/utils/Camera;

    invoke-direct {p2, p1, p0}, Lcom/tzh/wifi/utils/Camera;-><init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/model/listener/INativeListener;)V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mCamera:Lcom/tzh/wifi/utils/Camera;

    .line 25
    new-instance p2, Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    invoke-direct {p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;-><init>()V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    .line 26
    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getLeftTune(Landroid/content/Context;)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getRightTune(Landroid/content/Context;)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getCenterTune(Landroid/content/Context;)I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setTune(BBB)V

    return-void
.end method


# virtual methods
.method public ICameraType(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setCameraType(I)V

    .line 63
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;->cameraType(I)V

    :cond_0
    return-void
.end method

.method public ICmd_AccNotify(BB)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_AccNotify(BB)V

    .line 91
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->onAccNotify(BB)V

    :cond_0
    return-void
.end method

.method public ICmd_CheckOutFlg()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_CheckOutFlg()V

    .line 98
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setCheckOutFlg()V

    :cond_0
    return-void
.end method

.method public ICmd_DirNotify(BB)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_DirNotify(BB)V

    .line 105
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->onDirNotify(BB)V

    :cond_0
    return-void
.end method

.method public ICmd_NoHeadModle(Z)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_NoHeadModle(Z)V

    .line 112
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setNoHeadModle(Z)V

    :cond_0
    return-void
.end method

.method public ICmd_OneKeyFly()V
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_OneKeyFly()V

    .line 126
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->takeOneKeyFly()V

    :cond_0
    return-void
.end method

.method public ICmd_OneKeyLand()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_OneKeyLand()V

    .line 133
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->takOneKeyLand()V

    :cond_0
    return-void
.end method

.method public ICmd_OneKeyMergency()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_OneKeyMergency()V

    .line 140
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->takeOneKeyMergency()V

    :cond_0
    return-void
.end method

.method public ICmd_Resume()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_Resume()V

    .line 169
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->resume()V

    :cond_0
    return-void
.end method

.method public ICmd_SetRotate(Z)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_SetRotate(Z)V

    .line 147
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setRotate(Z)V

    :cond_0
    return-void
.end method

.method public ICmd_SetTune(BBB)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_SetTune(BBB)V

    .line 154
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p1, p2, p3}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setTune(BBB)V

    :cond_0
    return-void
.end method

.method public ICmd_Start()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_Start()V

    .line 161
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->start()V

    :cond_0
    return-void
.end method

.method public ICmd_StayHighModle(Z)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_StayHighModle(Z)V

    .line 119
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->setStayHigh(Z)V

    :cond_0
    return-void
.end method

.method public ICmd_Stop()V
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/tzh/wifi/wificam/model/base/BaseModel;->ICmd_Stop()V

    .line 176
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->baseCmd:Lcom/tzh/wifi/wificam/model/base/BaseCmd;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/base/BaseCmd;->stop()V

    :cond_0
    return-void
.end method

.method public IWiFiConState(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;->disconnected()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 54
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;->connected()V

    :cond_1
    return-void
.end method

.method public IWiFiRecvBmp(IILandroid/graphics/Bitmap;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p1, p2, p3}, Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;->recvFrame(IILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public IWiFiSnapState(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;->snapState(I)V

    :cond_0
    return-void
.end method

.method public iFaceDector()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->modelCallBack:Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;->iFaceDector()V

    :cond_0
    return-void
.end method

.method public onAutoPhotoClick(ZI)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mCamera:Lcom/tzh/wifi/utils/Camera;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/utils/Camera;->onAutoPhotoClick(ZI)V

    :cond_0
    return-void
.end method

.method public setOnDataListener(Lcom/yuan/IData;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mCamera:Lcom/tzh/wifi/utils/Camera;

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/utils/Camera;->setOnDatListener(Lcom/yuan/IData;)V

    return-void
.end method

.method public startRecord()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mCamera:Lcom/tzh/wifi/utils/Camera;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/tzh/wifi/utils/Camera;->startRecord()V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->mCamera:Lcom/tzh/wifi/utils/Camera;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/tzh/wifi/utils/Camera;->stopRecord()V

    :cond_0
    return-void
.end method
