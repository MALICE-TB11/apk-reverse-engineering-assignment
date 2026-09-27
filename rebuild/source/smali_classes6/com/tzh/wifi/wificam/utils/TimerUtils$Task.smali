.class Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;
.super Ljava/util/TimerTask;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/TimerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/utils/TimerUtils;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/utils/TimerUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;->this$0:Lcom/tzh/wifi/wificam/utils/TimerUtils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/TimerUtils;Lcom/tzh/wifi/wificam/utils/TimerUtils$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;-><init>(Lcom/tzh/wifi/wificam/utils/TimerUtils;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;->this$0:Lcom/tzh/wifi/wificam/utils/TimerUtils;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimerUtils;->access$100(Lcom/tzh/wifi/wificam/utils/TimerUtils;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;->this$0:Lcom/tzh/wifi/wificam/utils/TimerUtils;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimerUtils;->access$100(Lcom/tzh/wifi/wificam/utils/TimerUtils;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;->this$0:Lcom/tzh/wifi/wificam/utils/TimerUtils;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/TimerUtils;->access$200(Lcom/tzh/wifi/wificam/utils/TimerUtils;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;->this$0:Lcom/tzh/wifi/wificam/utils/TimerUtils;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/utils/TimerUtils;->access$302(Lcom/tzh/wifi/wificam/utils/TimerUtils;Z)Z

    :cond_0
    return-void
.end method
