.class Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2$1;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->onAvailable(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2$1;->this$1:Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2$1;->this$1:Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->refreshBanner()V

    return-void
.end method
