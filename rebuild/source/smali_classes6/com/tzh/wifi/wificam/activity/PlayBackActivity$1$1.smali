.class Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$1;
.super Ljava/lang/Object;
.source "PlayBackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->onADReceive(Lcom/unad/sdk/UNADFeedAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$1;->this$1:Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1$1;->this$1:Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayBackActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;->access$100(Lcom/tzh/wifi/wificam/activity/PlayBackActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
