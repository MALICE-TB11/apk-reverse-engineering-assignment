.class public Lcom/tzh/wifi/utils/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# static fields
.field private static final CAMERA_TYPE:I = 0x3

.field private static final WIFI_NOTIFY_PIC:I = 0x0

.field private static final WIFI_NOTIFY_STATE:I = 0x1

.field private static final WIFI_SNAP_STATE:I = 0x2

.field public static final Y_TYPE_H264:I = 0x1

.field public static final Y_TYPE_H2654:I = 0x2

.field public static final Y_TYPE_MJPEG:I = 0x0

.field private static bAutoClick:Z = false

.field private static bRecord:Z = false

.field private static faceDector:Lcom/tzh/wifi/wificam/model/face/FaceDector;

.field private static iretain:I

.field static logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private static mContext:Landroid/content/Context;

.field static mHandler:Landroid/os/Handler;

.field private static mListener:Lcom/yuan/IData;

.field private static mlock:[B

.field private static nStartFrameTime:J

.field private static nativeListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

.field private static options:Landroid/graphics/BitmapFactory$Options;

.field private static resolution:I

.field private static rotateAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/tzh/wifi/utils/Camera;->options:Landroid/graphics/BitmapFactory$Options;

    .line 30
    const-class v0, Lcom/tzh/wifi/utils/Camera;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    sput-object v0, Lcom/tzh/wifi/utils/Camera;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-wide/16 v0, 0x0

    .line 31
    sput-wide v0, Lcom/tzh/wifi/utils/Camera;->nStartFrameTime:J

    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/tzh/wifi/utils/Camera;->faceDector:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    const/4 v0, 0x0

    .line 33
    sput v0, Lcom/tzh/wifi/utils/Camera;->rotateAngle:I

    .line 34
    sput v0, Lcom/tzh/wifi/utils/Camera;->resolution:I

    .line 35
    sput v0, Lcom/tzh/wifi/utils/Camera;->iretain:I

    .line 40
    const-string v1, "Camera"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    const-string v1, "yuv"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 42
    const-string v1, "jpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    const-string v1, "turbojpeg"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    const-string v1, "avcodec"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    const-string v1, "avfilter"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    const-string v1, "avformat"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    const-string v1, "avutil"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const-string v1, "swresample"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    const-string v1, "swscale"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const-string v1, "avdevice"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    const-string v1, "c++_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/tzh/wifi/utils/Camera$1;

    invoke-direct {v1}, Lcom/tzh/wifi/utils/Camera$1;-><init>()V

    sput-object v1, Lcom/tzh/wifi/utils/Camera;->mHandler:Landroid/os/Handler;

    .line 255
    new-array v0, v0, [B

    sput-object v0, Lcom/tzh/wifi/utils/Camera;->mlock:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/model/listener/INativeListener;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sput-object p1, Lcom/tzh/wifi/utils/Camera;->mContext:Landroid/content/Context;

    .line 116
    sput-object p2, Lcom/tzh/wifi/utils/Camera;->nativeListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    .line 117
    new-instance p1, Lcom/tzh/wifi/wificam/model/face/FaceDector;

    invoke-direct {p1, p2}, Lcom/tzh/wifi/wificam/model/face/FaceDector;-><init>(Lcom/tzh/wifi/wificam/model/listener/INativeListener;)V

    sput-object p1, Lcom/tzh/wifi/utils/Camera;->faceDector:Lcom/tzh/wifi/wificam/model/face/FaceDector;

    return-void
.end method

.method public static OnCameraType(I)V
    .locals 1

    const/4 v0, 0x3

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tzh/wifi/utils/Camera;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public static OnImageRecv(I[BII)V
    .locals 9

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    sput p0, Lcom/tzh/wifi/utils/Camera;->resolution:I

    .line 140
    sput p3, Lcom/tzh/wifi/utils/Camera;->iretain:I

    .line 141
    sget-object p0, Lcom/tzh/wifi/utils/Camera;->mlock:[B

    monitor-enter p0

    .line 142
    :try_start_0
    sget-object v0, Lcom/tzh/wifi/utils/Camera;->mListener:Lcom/yuan/IData;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1, p2}, Lcom/yuan/IData;->onData([BI)V

    .line 144
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-ne p3, p0, :cond_1

    .line 147
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 148
    iput-boolean p0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    invoke-static {p1, v0, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 150
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 151
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 153
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p0, 0x43870000    # 270.0f

    .line 154
    invoke-virtual {v7, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 156
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 162
    :cond_1
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 166
    sget-object p1, Lcom/tzh/wifi/utils/Camera;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "recive bitmap: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tzh/wifi/utils/Camera;->resolution:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 167
    invoke-static {v0, p0}, Lcom/tzh/wifi/utils/Camera;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static OnWiFiStateChange(I)V
    .locals 1

    const/4 v0, 0x1

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tzh/wifi/utils/Camera;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000()Lcom/tzh/wifi/wificam/model/listener/INativeListener;
    .locals 1

    .line 20
    sget-object v0, Lcom/tzh/wifi/utils/Camera;->nativeListener:Lcom/tzh/wifi/wificam/model/listener/INativeListener;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 20
    sget v0, Lcom/tzh/wifi/utils/Camera;->resolution:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 20
    sget v0, Lcom/tzh/wifi/utils/Camera;->iretain:I

    return v0
.end method

.method public static native iCameraCloseFile()V
.end method

.method public static final native iCameraDeinit()V
.end method

.method public static final native iCameraEncodeStart(Ljava/lang/String;I)I
.end method

.method public static final native iCameraEncodeStop()I
.end method

.method public static native iCameraGetOneFrame(I)[B
.end method

.method public static native iCameraGetOneSecond(D)[B
.end method

.method public static native iCameraGetTotalFrame()I
.end method

.method public static native iCameraGetTotalTime()D
.end method

.method public static final native iCameraInit()I
.end method

.method public static native iCameraOpenFile(Ljava/lang/String;)V
.end method

.method public static final native iCameraRecSetParams(III)I
.end method

.method public static final native iCameraRecStart(Ljava/lang/String;)I
.end method

.method public static final native iCameraRecStop()V
.end method

.method public static final native iCameraRecWrite([BI)I
.end method

.method public static final native iCameraRoate()I
.end method

.method public static final native iCameraSetMode(I)I
.end method

.method public static final native iCameraStart()I
.end method

.method public static final native iCameraStop()V
.end method

.method public static final native iCameraSwitch()I
.end method

.method public static final native iCameraWritePic([BI)I
.end method

.method public static final native iCmdResume()V
.end method

.method public static final native iCmdSend([BI)I
.end method

.method public static final native iCmdStart()I
.end method

.method public static final native iCmdStop()V
.end method

.method public static native iYuanInit(IIIIIIILjava/lang/String;Ljava/lang/String;II)I
.end method

.method public static native iYuanProc([BII)I
.end method

.method public static native iYuanRelease()I
.end method

.method public static final native isEncodingVadio()I
.end method

.method public static onSnapRecClick(I)V
    .locals 1

    const/4 v0, 0x2

    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tzh/wifi/utils/Camera;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public static sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 101
    sget-object v0, Lcom/tzh/wifi/utils/Camera;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 103
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 104
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    sget-object p0, Lcom/tzh/wifi/utils/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static native stop_music()V
.end method


# virtual methods
.method public onAutoPhotoClick(ZI)V
    .locals 0

    .line 95
    sput-boolean p1, Lcom/tzh/wifi/utils/Camera;->bAutoClick:Z

    .line 96
    sput p2, Lcom/tzh/wifi/utils/Camera;->rotateAngle:I

    return-void
.end method

.method public setOnDatListener(Lcom/yuan/IData;)V
    .locals 1

    .line 258
    sget-object v0, Lcom/tzh/wifi/utils/Camera;->mlock:[B

    monitor-enter v0

    .line 259
    :try_start_0
    sput-object p1, Lcom/tzh/wifi/utils/Camera;->mListener:Lcom/yuan/IData;

    .line 260
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startRecord()V
    .locals 2

    const/4 v0, 0x1

    .line 121
    sput-boolean v0, Lcom/tzh/wifi/utils/Camera;->bRecord:Z

    .line 122
    sget-object v0, Lcom/tzh/wifi/utils/Camera;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "startRecord"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public stopRecord()V
    .locals 2

    const/4 v0, 0x0

    .line 126
    sput-boolean v0, Lcom/tzh/wifi/utils/Camera;->bRecord:Z

    .line 127
    sget-object v0, Lcom/tzh/wifi/utils/Camera;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "stopRecord"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraRecStop()V

    return-void
.end method
