.class Lcom/tzh/wifi/wificam/activity/PlayActivity$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_Start()V

    :cond_0
    return-void
.end method
