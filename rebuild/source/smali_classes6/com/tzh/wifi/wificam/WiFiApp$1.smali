.class Lcom/tzh/wifi/wificam/WiFiApp$1;
.super Landroid/content/BroadcastReceiver;
.source "WiFiApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/WiFiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/WiFiApp;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/WiFiApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/tzh/wifi/wificam/WiFiApp$1;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string p1, "wifi_state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 140
    iget-object p1, p0, Lcom/tzh/wifi/wificam/WiFiApp$1;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/WiFiApp;->access$000(Lcom/tzh/wifi/wificam/WiFiApp;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object p1

    const-string p2, "WIFI_STATE_DISABLED"

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_0
    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 145
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 146
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    .line 147
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 148
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object p2, p0, Lcom/tzh/wifi/wificam/WiFiApp$1;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {p2}, Lcom/tzh/wifi/wificam/WiFiApp;->access$000(Lcom/tzh/wifi/wificam/WiFiApp;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ssid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
