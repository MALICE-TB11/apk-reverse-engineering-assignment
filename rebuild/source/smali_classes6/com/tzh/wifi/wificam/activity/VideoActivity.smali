.class public Lcom/tzh/wifi/wificam/activity/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/activity/VideoActivity$SeekBarChangeListener;
    }
.end annotation


# static fields
.field protected static final HideTime:I = 0x2

.field private static final MSG_VIDEO_GET_FRAME:I = 0x3

.field private static final MSG_VIDEO_PLAY_NEXT:I = 0x1

.field private static final MSG_VIDEO_PLAY_PAUSE:I = 0x0

.field private static final MSG_VIDEO_PLAY_PRE:I = 0x2

.field private static final MSG_VIDEO_UPDATE_TIME:I = 0x4

.field protected static final Pause_Video:I = 0xb

.field protected static final ShowTime:I = 0x3

.field protected static final ShowVideo:I = 0x5

.field protected static final UpdateTime:I = 0x1

.field protected static final Update_Video:I = 0x9

.field private static bitmap:Landroid/graphics/Bitmap;

.field private static getFrameResult:I

.field static inputStream:Ljava/io/ByteArrayInputStream;

.field private static isPlay:Z

.field private static isSplite:Z

.field static isUsable:Z

.field private static iv_pause:Landroid/widget/ImageView;

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

.field private static mSurface:Lcom/tzh/wifi/wificam/view/SurfaceViews;

.field private static mTimeUtils:Lcom/tzh/wifi/wificam/utils/TimerUtils;

.field private static sb_time:Landroid/widget/SeekBar;

.field private static tv_cur_time:Landroid/widget/TextView;

.field private static tv_left_time:Landroid/widget/TextView;

.field private static vIndex:I

.field private static videodur:I


# instance fields
.field private CM215_Top_Timer:Ljava/util/Timer;

.field private CM215_Top_TimerTask:Ljava/util/TimerTask;

.field private CurVideoPath:Ljava/lang/String;

.field protected LastMicroSecond:J

.field protected Race_Current_Time:J

.field protected TAG:Ljava/lang/String;

.field protected ThreadTimeHide:Ljava/lang/Thread;

.field protected ThreadTimeShow:Ljava/lang/Thread;

.field protected TimeOffset:J

.field private bRoate:I

.field private btnReturn:Landroid/widget/ImageView;

.field private btnRoate180:Landroid/widget/ImageView;

.field private curHideTime:I

.field private cur_frame:I

.field private curtime:D

.field protected curtime1:J

.field handler:Landroid/os/Handler;

.field private isHide:Z

.field protected isOver:Z

.field protected isPause:Z

.field private isRunning:Z

.field private isStop:Z

.field protected is_first:Z

.field private iv_bg:Landroid/widget/ImageView;

.field private iv_next:Landroid/widget/ImageView;

.field private iv_prev:Landroid/widget/ImageView;

.field private iv_stop:Landroid/widget/ImageView;

.field private ly_status:Landroid/widget/RelativeLayout;

.field private ly_time:Landroid/widget/RelativeLayout;

.field private mBitmap:Landroid/graphics/Bitmap;

.field mRunnable:Ljava/lang/Runnable;

.field private mThread:Ljava/lang/Thread;

.field private mVolume:Lcom/tzh/wifi/wificam/presenter/Volume;

.field private matrix:Landroid/graphics/Matrix;

.field protected offsettime:D

.field protected oldtime:J

.field private pausetime:D

.field protected recount_time:Z

.field private sb_voice:Landroid/widget/SeekBar;

.field private screenHeight:I

.field private screenWidth:I

.field private subName:Ljava/lang/String;

.field private surfaceLayout:Landroid/widget/LinearLayout;

.field private surfaceViews:Lcom/tzh/wifi/wificam/view/SurfaceViews;

.field private timeString:Ljava/lang/String;

.field private totalframe:I

.field private totaltime:I

.field private vpScreenLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mPathList:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    sput v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->vIndex:I

    const/4 v1, 0x0

    .line 86
    sput-object v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mSurface:Lcom/tzh/wifi/wificam/view/SurfaceViews;

    const/4 v2, 0x1

    .line 87
    sput-boolean v2, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isUsable:Z

    .line 88
    const-class v2, Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v2

    sput-object v2, Lcom/tzh/wifi/wificam/activity/VideoActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 89
    sput-boolean v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPlay:Z

    .line 90
    sput v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->getFrameResult:I

    .line 92
    sput v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->videodur:I

    .line 100
    sput-object v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mTimeUtils:Lcom/tzh/wifi/wificam/utils/TimerUtils;

    .line 101
    sput-object v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 108
    sput-boolean v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isSplite:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->surfaceViews:Lcom/tzh/wifi/wificam/view/SurfaceViews;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->CurVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 48
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    .line 49
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    .line 50
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totalframe:I

    .line 51
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->cur_frame:I

    const-wide/16 v3, 0x0

    .line 52
    iput-wide v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->pausetime:D

    .line 53
    iput-wide v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime:D

    .line 54
    iput-wide v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->offsettime:D

    .line 55
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isOver:Z

    const-wide/16 v3, 0x0

    .line 56
    iput-wide v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->oldtime:J

    .line 57
    iput-wide v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime1:J

    const/4 v5, 0x1

    .line 58
    iput-boolean v5, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->is_first:Z

    .line 65
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->ThreadTimeHide:Ljava/lang/Thread;

    .line 66
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->ThreadTimeShow:Ljava/lang/Thread;

    .line 67
    iput-boolean v5, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->recount_time:Z

    .line 70
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_prev:Landroid/widget/ImageView;

    .line 72
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_stop:Landroid/widget/ImageView;

    .line 73
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_next:Landroid/widget/ImageView;

    .line 74
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_voice:Landroid/widget/SeekBar;

    .line 76
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->ly_status:Landroid/widget/RelativeLayout;

    .line 77
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->ly_time:Landroid/widget/RelativeLayout;

    .line 78
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnReturn:Landroid/widget/ImageView;

    .line 79
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_bg:Landroid/widget/ImageView;

    .line 102
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    .line 103
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenHeight:I

    .line 104
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isHide:Z

    .line 105
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->vpScreenLayout:Landroid/widget/RelativeLayout;

    .line 107
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curHideTime:I

    .line 109
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->surfaceLayout:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->timeString:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->subName:Ljava/lang/String;

    .line 113
    iput-wide v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->TimeOffset:J

    .line 116
    iput-boolean v5, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPause:Z

    .line 117
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->CM215_Top_Timer:Ljava/util/Timer;

    .line 118
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->CM215_Top_TimerTask:Ljava/util/TimerTask;

    .line 119
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isRunning:Z

    .line 120
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mThread:Ljava/lang/Thread;

    .line 121
    const-string v1, "VideoPlayer"

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->TAG:Ljava/lang/String;

    .line 122
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->bRoate:I

    .line 123
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    .line 208
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/VideoActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mRunnable:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/VideoActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/VideoActivity;)D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/tzh/wifi/wificam/activity/VideoActivity;D)D
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime:D

    return-wide p1
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPlay:Z

    return p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/VideoActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    return p0
.end method

.method static synthetic access$202(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/VideoActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    return p0
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/activity/VideoActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tzh/wifi/wificam/activity/VideoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/activity/VideoActivity;)Landroid/graphics/Matrix;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$600()Lcom/tzh/wifi/wificam/view/SurfaceViews;
    .locals 1

    .line 44
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mSurface:Lcom/tzh/wifi/wificam/view/SurfaceViews;

    return-object v0
.end method

.method static synthetic access$700()Landroid/widget/SeekBar;
    .locals 1

    .line 44
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_time:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/TextView;
    .locals 1

    .line 44
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->tv_cur_time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/tzh/wifi/wificam/activity/VideoActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isHide:Z

    return p1
.end method

.method private transTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 336
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    .line 341
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private widget_init()V
    .locals 4

    const v0, 0x7f0a0b41

    .line 169
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/SurfaceViews;

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mSurface:Lcom/tzh/wifi/wificam/view/SurfaceViews;

    const v0, 0x7f0a0a72

    .line 170
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->surfaceLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0b53

    .line 171
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->vpScreenLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0af8

    .line 172
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->tv_cur_time:Landroid/widget/TextView;

    const v0, 0x7f0a0b03

    .line 173
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->tv_left_time:Landroid/widget/TextView;

    const v0, 0x7f0a03da

    .line 174
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_stop:Landroid/widget/ImageView;

    const v0, 0x7f0a03d6

    .line 175
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_prev:Landroid/widget/ImageView;

    const v0, 0x7f0a03d1

    .line 176
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_next:Landroid/widget/ImageView;

    const v0, 0x7f0a03c7

    .line 177
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnReturn:Landroid/widget/ImageView;

    const v0, 0x7f0a01fe

    .line 178
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    const v0, 0x7f0a03d3

    .line 179
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_pause:Landroid/widget/ImageView;

    const v0, 0x7f0a03c8

    .line 180
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_bg:Landroid/widget/ImageView;

    const v0, 0x7f0a09be

    .line 181
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    sput-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_time:Landroid/widget/SeekBar;

    const v0, 0x7f0a09bf

    .line 182
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_voice:Landroid/widget/SeekBar;

    .line 183
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_stop:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_pause:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_prev:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->iv_next:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_time:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_voice:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_voice:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mVolume:Lcom/tzh/wifi/wificam/presenter/Volume;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/presenter/Volume;->getMaxVol()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 192
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_voice:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mVolume:Lcom/tzh/wifi/wificam/presenter/Volume;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/presenter/Volume;->getCurVol()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 193
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    mul-int/lit8 v2, v2, 0x78

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 196
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    mul-int/lit8 v2, v2, 0x78

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 197
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    mul-int/lit8 v2, v2, 0xa

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 198
    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenHeight:I

    mul-int/lit8 v2, v2, 0xa

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultHeight:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 199
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    mul-int/lit8 v1, v1, 0x78

    sget v2, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 203
    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    mul-int/lit8 v1, v1, 0x78

    sget v2, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xe

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public Pause()V
    .locals 2

    .line 474
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime:D

    iput-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->pausetime:D

    .line 475
    iput-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->offsettime:D

    const/4 v0, 0x1

    .line 476
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    const/4 v1, 0x0

    .line 477
    sput-boolean v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPlay:Z

    .line 478
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 479
    iput v0, v1, Landroid/os/Message;->what:I

    .line 481
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public Play()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 248
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mThread:Ljava/lang/Thread;

    .line 249
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public RePlay()V
    .locals 3

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    .line 486
    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isOver:Z

    if-eqz v1, :cond_0

    .line 487
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isOver:Z

    const-wide/16 v1, 0x0

    .line 488
    iput-wide v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->offsettime:D

    .line 489
    iput-wide v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->curtime:D

    .line 490
    iput-wide v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->pausetime:D

    .line 491
    sget-object v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_time:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 493
    sget-object v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->tv_cur_time:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->Play()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 501
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    .line 503
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraCloseFile()V

    .line 504
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 506
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 508
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 511
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01fe

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a03c7

    if-eq p1, v0, :cond_0

    return-void

    .line 349
    :cond_0
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    .line 350
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraCloseFile()V

    .line 351
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->finish()V

    return-void

    .line 356
    :cond_1
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->bRoate:I

    if-nez p1, :cond_2

    .line 357
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->bRoate:I

    .line 358
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 360
    invoke-static {p0, v1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeVideoPlayRotateCfg(Landroid/content/Context;I)V

    .line 361
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    const v0, 0x7f0f00ce

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 363
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->bRoate:I

    .line 364
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 365
    invoke-static {p0, p1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeVideoPlayRotateCfg(Landroid/content/Context;I)V

    .line 366
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    const v0, 0x7f0f00cd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0325

    .line 131
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 133
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenWidth:I

    .line 134
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->screenHeight:I

    .line 135
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 136
    const-string v0, "m_filelist_cur"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->vIndex:I

    .line 137
    const-string v0, "m_filelist_videolist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mPathList:Ljava/util/List;

    .line 138
    sget v0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->vIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->CurVideoPath:Ljava/lang/String;

    .line 140
    new-instance p1, Lcom/tzh/wifi/wificam/presenter/Volume;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/presenter/Volume;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->mVolume:Lcom/tzh/wifi/wificam/presenter/Volume;

    .line 141
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    .line 142
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->widget_init()V

    .line 143
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->CurVideoPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->CurVideoPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/tzh/wifi/utils/Camera;->iCameraOpenFile(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraGetTotalTime()D

    move-result-wide v2

    double-to-int p1, v2

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    .line 148
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraGetTotalFrame()I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totalframe:I

    .line 149
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getVideoPlayRotateCfg(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->bRoate:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 151
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 152
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    const v2, 0x7f0f00ce

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->matrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 155
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->btnRoate180:Landroid/widget/ImageView;

    const v2, 0x7f0f00cd

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->Play()V

    .line 159
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraGetTotalFrame()I

    .line 160
    sget-object p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_time:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 161
    sget-object p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->sb_time:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 162
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    div-int/lit16 p1, p1, 0xe10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->totaltime:I

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v2, v4, v0

    const/4 p1, 0x2

    aput-object v3, v4, p1

    const-string p1, "/%02d:%02d:%02d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 163
    sget-object v1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->tv_left_time:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    sget-object p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->tv_cur_time:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isRunning:Z

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/16 v3, 0x105

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 461
    :cond_0
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->recount_time:Z

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 433
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isHide:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 434
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->recount_time:Z

    .line 435
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPause:Z

    if-eqz v0, :cond_2

    .line 436
    sput-boolean v2, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPlay:Z

    .line 437
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    .line 439
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->RePlay()V

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->LastMicroSecond:J

    .line 442
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPause:Z

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->Pause()V

    .line 445
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isStop:Z

    .line 446
    sput-boolean p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPlay:Z

    .line 448
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->Race_Current_Time:J

    iput-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->TimeOffset:J

    .line 450
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->isPause:Z

    goto :goto_0

    .line 453
    :cond_3
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x3

    .line 454
    iput v0, p1, Landroid/os/Message;->what:I

    .line 455
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v2
.end method
