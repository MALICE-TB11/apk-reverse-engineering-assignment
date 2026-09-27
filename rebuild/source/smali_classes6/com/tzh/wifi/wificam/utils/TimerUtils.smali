.class public Lcom/tzh/wifi/wificam/utils/TimerUtils;
.super Ljava/lang/Object;
.source "TimerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;
    }
.end annotation


# instance fields
.field private action:I

.field private duration:J

.field private isTimerStart:Z

.field logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mHandler:Landroid/os/Handler;

.field private mTask:Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/os/Handler;JI)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    .line 13
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTask:Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->isTimerStart:Z

    .line 15
    const-class v0, Lcom/tzh/wifi/wificam/utils/TimerUtils;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 18
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mHandler:Landroid/os/Handler;

    .line 19
    iput p4, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->action:I

    .line 20
    iput-wide p2, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->duration:J

    return-void
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/utils/TimerUtils;)Landroid/os/Handler;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/utils/TimerUtils;)I
    .locals 0

    .line 8
    iget p0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->action:I

    return p0
.end method

.method static synthetic access$302(Lcom/tzh/wifi/wificam/utils/TimerUtils;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->isTimerStart:Z

    return p1
.end method

.method private initTimer()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    .line 27
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;-><init>(Lcom/tzh/wifi/wificam/utils/TimerUtils;Lcom/tzh/wifi/wificam/utils/TimerUtils$1;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTask:Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "TimerUtils cancel"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/utils/TimerUtils;->initTimer()V

    .line 48
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "TimerUtils start"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->mTask:Lcom/tzh/wifi/wificam/utils/TimerUtils$Task;

    const-wide/16 v4, 0x32

    iget-wide v6, p0, Lcom/tzh/wifi/wificam/utils/TimerUtils;->duration:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method
