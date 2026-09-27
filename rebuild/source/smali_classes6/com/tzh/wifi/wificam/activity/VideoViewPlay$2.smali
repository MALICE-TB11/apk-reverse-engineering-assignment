.class Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;
.super Ljava/lang/Object;
.source "VideoViewPlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/VideoViewPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->access$000(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->access$000(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 145
    div-int/lit16 v0, v1, 0xe10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    div-int/lit8 v2, v1, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 v3, v1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->access$100()Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "###current time is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->access$200(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->access$200(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->access$300(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
