.class public Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;
.super Ljava/lang/Object;
.source "WiFiPresenter.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/presenter/listener/IPresenter;
.implements Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;
.implements Lcom/yuan/IData;


# static fields
.field private static final VIDEO_REC_FRAME_RATE:I = 0x19

.field private static mInstance:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

.field private static pfd:Landroid/graphics/PaintFlagsDrawFilter;


# instance fields
.field protected captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

.field private cnt:J

.field private gSensor:Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

.field private iretain:I

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mDetectProc:Z

.field private mList:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private mObsv:Lio/reactivex/Observable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

.field private mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

.field private mRun:Z

.field private mThread:Ljava/lang/Thread;

.field private mdat:[B

.field private media:Lcom/tzh/wifi/wificam/media/Media;

.field private mobserver:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mode:Ljava/lang/String;

.field private modehand:I

.field private mthread:Ljava/lang/Thread;

.field private oggPlayer:Lcom/tzh/wifi/wificam/media/OggPlayer;

.field private resolution:I

.field private srcHeight:I

.field private srcWidth:I

.field private tFrame:I

.field private tStart:J

.field private val:F

.field private videoPath:Ljava/lang/String;

.field private wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 648
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    sput-object v0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    .line 59
    const-class v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 61
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->media:Lcom/tzh/wifi/wificam/media/Media;

    .line 63
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->oggPlayer:Lcom/tzh/wifi/wificam/media/OggPlayer;

    .line 64
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->gSensor:Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    .line 65
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mThread:Ljava/lang/Thread;

    .line 66
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

    .line 67
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    .line 72
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    .line 73
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 76
    iput-wide v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tStart:J

    .line 77
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tFrame:I

    .line 495
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v4, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mList:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v4, -0x1

    .line 511
    iput v4, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->modehand:I

    const/4 v4, 0x0

    .line 512
    iput v4, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->val:F

    .line 513
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mRun:Z

    .line 564
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mode:Ljava/lang/String;

    .line 565
    new-instance v0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;-><init>(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mobserver:Lio/reactivex/Observer;

    .line 598
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mDetectProc:Z

    .line 601
    iput-wide v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->cnt:J

    .line 649
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    .line 650
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    invoke-direct {v0, p1, p0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;-><init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/model/listener/IModelCallBack;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    .line 81
    new-instance v0, Lcom/tzh/wifi/wificam/media/Media;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/media/Media;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->media:Lcom/tzh/wifi/wificam/media/Media;

    .line 82
    new-instance v0, Lcom/tzh/wifi/wificam/media/OggPlayer;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/media/OggPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->oggPlayer:Lcom/tzh/wifi/wificam/media/OggPlayer;

    .line 83
    new-instance v0, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->gSensor:Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    .line 84
    new-instance v0, Lcom/tzh/wifi/wificam/presenter/Snap;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/presenter/Snap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

    .line 86
    new-instance v0, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    const/16 v0, 0x26

    .line 87
    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tFrame:I

    .line 88
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tStart:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;J)J
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tStart:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mRun:Z

    return p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;J)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->isFrameCome(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mList:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic access$402(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mDetectProc:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)[B
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mdat:[B

    return-object p0
.end method

.method static synthetic access$608(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)J
    .locals 4

    .line 56
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->cnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->cnt:J

    return-wide v0
.end method

.method private detect([BI)V
    .locals 0

    .line 604
    sget-object p2, Lcom/tzh/wifi/wificam/activity/PlayActivity;->classifier:Lcom/yuan/ImageClassifier;

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mDetectProc:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 606
    iput-boolean p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mDetectProc:Z

    .line 607
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mdat:[B

    .line 608
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mObsv:Lio/reactivex/Observable;

    if-nez p1, :cond_1

    .line 609
    new-instance p1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;-><init>(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 642
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mObsv:Lio/reactivex/Observable;

    .line 645
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mObsv:Lio/reactivex/Observable;

    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mobserver:Lio/reactivex/Observer;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getDateStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    :cond_0
    const-string p0, "yyyy-MM-dd-HH-mm-ss"

    .line 700
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 701
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;
    .locals 2

    .line 96
    const-class v0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mInstance:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mInstance:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    .line 100
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    sget-object p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mInstance:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    return-object p0

    :catchall_0
    move-exception p0

    .line 100
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getLocalVideoDuration(Ljava/lang/String;)I
    .locals 1

    .line 263
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 264
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 266
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private initSensorIfAllowed()V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->gSensor:Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->initSensor()V

    return-void

    .line 299
    :cond_0
    const-class v0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    const-string v1, "Privacy policy not accepted, cannot initialize sensor"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method private isFrameCome(J)Z
    .locals 3

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 517
    iget p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tFrame:I

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->tStart:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private saveToLocal(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/sdcard/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 680
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 684
    :cond_0
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 685
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 686
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 687
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 692
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 690
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private scaleImageCavans(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 658
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 659
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, p2

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float p3, p3

    int-to-float v1, v2

    div-float/2addr p3, v1

    .line 662
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 664
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 665
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 666
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 667
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 668
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 670
    iget-object p3, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->pfd:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 671
    iget-object p3, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 672
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-object p2
.end method

.method private startYuanRecord(I)V
    .locals 2

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mRun:Z

    .line 526
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mthread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 527
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;-><init>(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mthread:Ljava/lang/Thread;

    .line 558
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public ICmd_AccNotify(BB)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 484
    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_AccNotify(BB)V

    :cond_0
    return-void
.end method

.method public ICmd_CheckOutFlg()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_CheckOutFlg()V

    :cond_0
    return-void
.end method

.method public ICmd_DirNotify(BB)V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_DirNotify(BB)V

    :cond_0
    return-void
.end method

.method public ICmd_NoHeadModle(Z)V
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_NoHeadModle(Z)V

    :cond_0
    return-void
.end method

.method public ICmd_OneKeyFly()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_OneKeyFly()V

    :cond_0
    return-void
.end method

.method public ICmd_OneKeyLand()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_OneKeyLand()V

    :cond_0
    return-void
.end method

.method public ICmd_OneKeyMergency()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_OneKeyMergency()V

    :cond_0
    return-void
.end method

.method public ICmd_Resume()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_Resume()V

    :cond_0
    return-void
.end method

.method public ICmd_SetRotate(Z)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_SetRotate(Z)V

    :cond_0
    return-void
.end method

.method public ICmd_SetTune(BBB)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p1, p2, p3}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_SetTune(BBB)V

    :cond_0
    return-void
.end method

.method public ICmd_Start()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_Start()V

    :cond_0
    return-void
.end method

.method public ICmd_StayHighModle(Z)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_StayHighModle(Z)V

    :cond_0
    return-void
.end method

.method public ICmd_Stop()V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->ICmd_Stop()V

    :cond_0
    return-void
.end method

.method public attachView(Lcom/tzh/wifi/wificam/view/base/ICaptureView;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    .line 319
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz p1, :cond_0

    .line 320
    invoke-virtual {p1, p0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->setOnDataListener(Lcom/yuan/IData;)V

    .line 321
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->iCameraStart()I

    :cond_0
    return-void
.end method

.method public cameraType(I)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/view/base/ICaptureView;->cameraType(I)V

    :cond_0
    return-void
.end method

.method public connected()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/view/base/ICaptureView;->connected()V

    :cond_0
    return-void
.end method

.method public disattachView()V
    .locals 2

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    .line 330
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->setOnDataListener(Lcom/yuan/IData;)V

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mRun:Z

    .line 333
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->iCameraStop()V

    :cond_0
    return-void
.end method

.method public disconnected()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/view/base/ICaptureView;->disconnected()V

    :cond_0
    return-void
.end method

.method public getVideoContentValues(Landroid/content/Context;Ljava/io/File;J)Landroid/content/ContentValues;
    .locals 2

    .line 230
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/PathUtils;->vrFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "mime_type"

    const-string v1, "video/mp4"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v0, "date_modified"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v0, "date_added"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    const-string p3, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "_size"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 239
    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    invoke-static {p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getLocalVideoDuration(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "duration"

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method public getView()Lcom/tzh/wifi/wificam/view/base/ICaptureView;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    return-object v0
.end method

.method public iFaceDector()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    if-eqz v0, :cond_0

    .line 348
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/view/base/ICaptureView;->onFaceDector()V

    :cond_0
    return-void
.end method

.method public invalidate(Ljava/io/File;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 249
    invoke-static {v0, p1, v1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public onAutoPhotoClick(ZI)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->wiFiModel:Lcom/tzh/wifi/wificam/model/WiFiModelImpl;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/wificam/model/WiFiModelImpl;->onAutoPhotoClick(ZI)V

    :cond_0
    return-void
.end method

.method public onData([BI)V
    .locals 2

    .line 499
    array-length v0, p1

    if-eq p2, v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "---------------------------->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "---->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MJPEG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mDetectProc:Z

    if-nez v0, :cond_1

    .line 503
    invoke-direct {p0, p1, p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->detect([BI)V

    .line 505
    :cond_1
    iget-boolean p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mRun:Z

    if-eqz p2, :cond_2

    .line 506
    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public onRegisterSensor(Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-class p1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object p1

    const-string v0, "Privacy policy not accepted, cannot register sensor"

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->initSensorIfAllowed()V

    .line 285
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->gSensor:Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->register(Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;)Z

    return-void
.end method

.method public onUnregisterSensor()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->gSensor:Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/sensor/GSensor;->unregister()V

    return-void
.end method

.method public playSound(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->oggPlayer:Lcom/tzh/wifi/wificam/media/OggPlayer;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/media/OggPlayer;->play()V

    return-void

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->media:Lcom/tzh/wifi/wificam/media/Media;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/media/Media;->play()V

    return-void
.end method

.method public prepareRecord(Z)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "###prepareRecord nativeInit:"

    const-string v2, "w:"

    .line 135
    iget-object v3, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 140
    :try_start_0
    iget-object v3, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Lcom/tzh/wifi/wificam/utils/PathUtils;->createVideoFile(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    .line 141
    const-string v4, ".mp4"

    const-string v5, ".jpg"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/video/"

    const-string v5, "/.videoPic/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 142
    iget-object v4, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

    iget v5, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->resolution:I

    iget v6, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->iretain:I

    invoke-virtual {v4, v5, v6, v3}, Lcom/tzh/wifi/wificam/presenter/Snap;->videoPrepareSnap(IILjava/lang/String;)V

    .line 144
    iget v3, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->iretain:I

    const/4 v4, 0x1

    const/high16 v5, 0x3fc00000    # 1.5f

    const/16 v6, 0x2d0

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v8, 0x500

    if-ne v3, v4, :cond_1

    .line 145
    iget v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    if-ne v2, v8, :cond_0

    iget v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_0

    .line 172
    :cond_1
    const-string v3, "yyy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    if-ne v2, v8, :cond_0

    iget v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    if-ne v2, v6, :cond_0

    .line 200
    :goto_0
    iget-object v2, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 202
    iget v6, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    iget v7, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    int-to-float v0, v6

    mul-float v0, v0, v5

    float-to-int v8, v0

    int-to-float v0, v7

    mul-float v0, v0, v5

    float-to-int v9, v0

    iget-object v13, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    sget-object v14, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    iget v0, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->iretain:I

    const/4 v10, 0x0

    const/16 v11, 0x19

    const/high16 v12, 0x400000

    const/4 v15, -0x1

    move/from16 v16, v0

    invoke-static/range {v6 .. v16}, Lcom/tzh/wifi/utils/Camera;->iYuanInit(IIIIIIILjava/lang/String;Ljava/lang/String;II)I

    .line 204
    iget v0, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->iretain:I

    invoke-direct {v1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->startYuanRecord(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public prepareSnap(Z)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

    if-eqz v0, :cond_0

    .line 121
    iget v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->resolution:I

    iget v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->iretain:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/tzh/wifi/wificam/presenter/Snap;->prepareSnap(IIZ)V

    :cond_0
    return-void
.end method

.method public recvFrame(IILandroid/graphics/Bitmap;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    if-eqz v0, :cond_0

    .line 397
    iput p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->resolution:I

    .line 398
    iput p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->iretain:I

    .line 403
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcWidth:I

    .line 404
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->srcHeight:I

    .line 407
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    invoke-interface {v0, p1, p2, p3}, Lcom/tzh/wifi/wificam/view/base/ICaptureView;->reciveBitmap(IILandroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public snapState(I)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->captureView:Lcom/tzh/wifi/wificam/view/base/ICaptureView;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/view/base/ICaptureView;->snapState(I)V

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 3

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mRun:Z

    .line 212
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mthread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 218
    :goto_0
    iput-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mthread:Ljava/lang/Thread;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mList:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 221
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iYuanRelease()I

    .line 223
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->invalidate(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    :catch_1
    iput-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public takeSnap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/presenter/Snap;->takeSnap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public videoTakeSnap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->mPhoto:Lcom/tzh/wifi/wificam/presenter/Snap;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/presenter/Snap;->videoTakeSnap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
