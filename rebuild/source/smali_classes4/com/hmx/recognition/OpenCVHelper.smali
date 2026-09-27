.class public Lcom/hmx/recognition/OpenCVHelper;
.super Ljava/lang/Object;
.source "OpenCVHelper.java"


# static fields
.field public static MSG_FISHRECT:I = 0xff

.field public static MSG_PALMRECT:I = 0xfe

.field public static MSG_WAITFALSE:I

.field private static handler:Landroid/os/Handler;

.field private static nStartFistTime:J

.field private static nStartPalmTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-string v0, "main"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sput-object p1, Lcom/hmx/recognition/OpenCVHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static native close()I
.end method

.method public static fistRect([I)V
    .locals 7

    .line 65
    const-string p0, "OpenCVHelper"

    const-string v0, "\u624b\u52bf\uff1afistRect"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 68
    sget-wide v2, Lcom/hmx/recognition/OpenCVHelper;->nStartFistTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hmx/recognition/OpenCVHelper;->nStartFistTime:J

    .line 71
    sget v0, Lcom/hmx/recognition/OpenCVHelper;->MSG_WAITFALSE:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 72
    sget-object v0, Lcom/hmx/recognition/OpenCVHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 76
    sget v2, Lcom/hmx/recognition/OpenCVHelper;->MSG_FISHRECT:I

    iput v2, p0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 78
    :cond_1
    sget v2, Lcom/hmx/recognition/OpenCVHelper;->MSG_WAITFALSE:I

    iput v2, p0, Landroid/os/Message;->what:I

    .line 80
    :goto_0
    sget-object v2, Lcom/hmx/recognition/OpenCVHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    sput-wide v0, Lcom/hmx/recognition/OpenCVHelper;->nStartFistTime:J

    return-void
.end method

.method public static native gray([III)[I
.end method

.method public static native initGesture(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static palmRect([I)V
    .locals 7

    .line 91
    const-string p0, "OpenCVHelper"

    const-string v0, "\u624b\u52bf\uff1apalmRect"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 94
    sget-wide v2, Lcom/hmx/recognition/OpenCVHelper;->nStartPalmTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/hmx/recognition/OpenCVHelper;->nStartPalmTime:J

    .line 97
    sget v0, Lcom/hmx/recognition/OpenCVHelper;->MSG_WAITFALSE:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 98
    sget-object v0, Lcom/hmx/recognition/OpenCVHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 102
    sget v2, Lcom/hmx/recognition/OpenCVHelper;->MSG_PALMRECT:I

    iput v2, p0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 104
    :cond_1
    sget v2, Lcom/hmx/recognition/OpenCVHelper;->MSG_WAITFALSE:I

    iput v2, p0, Landroid/os/Message;->what:I

    .line 106
    :goto_0
    sget-object v2, Lcom/hmx/recognition/OpenCVHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    sput-wide v0, Lcom/hmx/recognition/OpenCVHelper;->nStartPalmTime:J

    return-void
.end method

.method public static native runGesture([BIIFIFI)I
.end method

.method private setHandler(Landroid/os/Handler;)V
    .locals 0

    .line 21
    sput-object p1, Lcom/hmx/recognition/OpenCVHelper;->handler:Landroid/os/Handler;

    return-void
.end method
