.class public Lcom/tzh/wifi/wificam/media/OggPlayer;
.super Ljava/lang/Object;
.source "OggPlayer.java"


# instance fields
.field private mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/tzh/wifi/wificam/media/OggPlayer;->mp:Landroid/media/MediaPlayer;

    const v0, 0x7f11000f

    .line 16
    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/media/OggPlayer;->mp:Landroid/media/MediaPlayer;

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/media/OggPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/tzh/wifi/wificam/media/OggPlayer;->mp:Landroid/media/MediaPlayer;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/tzh/wifi/wificam/media/OggPlayer;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tzh/wifi/wificam/media/OggPlayer$1;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/media/OggPlayer$1;-><init>(Lcom/tzh/wifi/wificam/media/OggPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
