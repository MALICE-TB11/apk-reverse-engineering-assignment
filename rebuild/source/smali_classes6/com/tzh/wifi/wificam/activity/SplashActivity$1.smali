.class Lcom/tzh/wifi/wificam/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/SplashActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/SplashActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/SplashActivity;->access$000(Lcom/tzh/wifi/wificam/activity/SplashActivity;)V

    return-void
.end method
