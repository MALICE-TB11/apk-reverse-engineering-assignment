.class Lcom/tzh/wifi/wificam/WiFiApp$4;
.super Ljava/lang/Object;
.source "WiFiApp.java"

# interfaces
.implements Lcom/unad/sdk/UNAD$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/WiFiApp;->adInit()V
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

    .line 333
    iput-object p1, p0, Lcom/tzh/wifi/wificam/WiFiApp$4;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/unad/sdk/dto/UnadError;)V
    .locals 1

    .line 340
    const-string p1, "unadsdk"

    const-string v0, "UI:onError"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 336
    const-string v0, "unadsdk"

    const-string v1, "UI:onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
