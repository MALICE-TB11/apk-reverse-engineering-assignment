.class public Lcom/tzh/wifi/wificam/activity/VideoViewPlay;
.super Landroid/app/Activity;
.source "VideoViewPlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private static mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static vIndex:I


# instance fields
.field private CurVideoPath:Ljava/lang/String;

.field private btnReturn:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field private player:Lcom/google/android/exoplayer2/ExoPlayer;

.field private playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field private screenHeight:I

.field private screenWidth:I

.field private totaltime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mPathList:Ljava/util/List;

    const/4 v0, 0x0

    .line 58
    sput v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->vIndex:I

    .line 60
    const-class v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->CurVideoPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->totaltime:I

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->btnReturn:Landroid/widget/ImageView;

    .line 62
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    .line 63
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenHeight:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$2;-><init>(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method static synthetic access$100()Lcom/tzh/wifi/wificam/utils/LogUtils;
    .locals 1

    .line 52
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->totaltime:I

    return p0
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initializePlayer()V
    .locals 2

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    const v0, 0x7f0a0953

    .line 104
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 105
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 106
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->playerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setResizeMode(I)V

    .line 108
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$1;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay$1;-><init>(Lcom/tzh/wifi/wificam/activity/VideoViewPlay;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method private widget_init()V
    .locals 4

    const v0, 0x7f0a03c7

    .line 120
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->btnReturn:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 126
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    mul-int/lit8 v2, v2, 0x78

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 127
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    mul-int/lit8 v2, v2, 0x78

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 128
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    mul-int/lit8 v2, v2, 0xa

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 129
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenHeight:I

    mul-int/lit8 v2, v2, 0xa

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultHeight:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 130
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    mul-int/lit8 v1, v1, 0x78

    sget v2, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 135
    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    mul-int/lit8 v1, v1, 0x78

    sget v2, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xe

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 180
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    .line 183
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03c7

    if-eq p1, v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 73
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 76
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenWidth:I

    .line 77
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->screenHeight:I

    .line 79
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 80
    const-string v0, "m_filelist_cur"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->vIndex:I

    .line 81
    const-string v0, "m_filelist_videolist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mPathList:Ljava/util/List;

    .line 82
    sget v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->vIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->CurVideoPath:Ljava/lang/String;

    .line 83
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->CurVideoPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->widget_init()V

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->initializePlayer()V

    .line 93
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "####video:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V

    .line 96
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 97
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->play()V

    .line 99
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 167
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;->player:Lcom/google/android/exoplayer2/ExoPlayer;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
