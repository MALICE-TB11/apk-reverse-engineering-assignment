.class Lcom/tzh/wifi/utils/Camera$1;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/utils/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/model/listener/INativeListener;->ICameraType(I)V

    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 75
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/model/listener/INativeListener;->IWiFiSnapState(I)V

    return-void

    .line 68
    :cond_2
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 69
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/model/listener/INativeListener;->IWiFiConState(I)V

    return-void

    .line 62
    :cond_3
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 63
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    move-result-object v0

    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$100()I

    move-result v1

    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->access$200()I

    move-result v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, p1}, Lcom/tzh/wifi/wificam/model/listener/INativeListener;->IWiFiRecvBmp(IILandroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method
