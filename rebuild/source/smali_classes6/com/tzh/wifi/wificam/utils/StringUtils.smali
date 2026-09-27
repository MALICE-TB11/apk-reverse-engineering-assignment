.class public Lcom/tzh/wifi/wificam/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static mInstance:Lcom/tzh/wifi/wificam/utils/StringUtils;


# instance fields
.field private context:Landroid/content/Context;

.field public strCloseMusic:Ljava/lang/String;

.field public strConfirm:Ljava/lang/String;

.field public strConnected:Ljava/lang/String;

.field public strDeleteCancel:Ljava/lang/String;

.field public strDeleteConfirm:Ljava/lang/String;

.field public strDeleteContent:Ljava/lang/String;

.field public strDeleteTitle:Ljava/lang/String;

.field public strEncoding:Ljava/lang/String;

.field public strGsensorEnable:Ljava/lang/String;

.field public strGsnsorNo:Ljava/lang/String;

.field public strLocalMusic:Ljava/lang/String;

.field public strLockDown:Ljava/lang/String;

.field public strNoConnect:Ljava/lang/String;

.field public strNoSpace:Ljava/lang/String;

.field public strNoSupport:Ljava/lang/String;

.field public strPopularMusic:Ljava/lang/String;

.field public strPullDown:Ljava/lang/String;

.field public strPullUp:Ljava/lang/String;

.field public strRecordEnd:Ljava/lang/String;

.field public strRecordStart:Ljava/lang/String;

.field public strRecording:Ljava/lang/String;

.field public strRelFinger:Ljava/lang/String;

.field public strSelect:Ljava/lang/String;

.field public strSnap:Ljava/lang/String;

.field public strUploadContent:Ljava/lang/String;

.field public strUploadTitle:Ljava/lang/String;

.field public strVRState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSpace:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSupport:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConnected:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecording:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strVRState:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullUp:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullDown:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsnsorNo:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLockDown:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRelFinger:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strEncoding:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSelect:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strCloseMusic:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConfirm:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPopularMusic:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLocalMusic:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSnap:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordStart:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordEnd:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;
    .locals 1

    .line 45
    sget-object v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->mInstance:Lcom/tzh/wifi/wificam/utils/StringUtils;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/tzh/wifi/wificam/utils/StringUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->mInstance:Lcom/tzh/wifi/wificam/utils/StringUtils;

    .line 48
    :cond_0
    sget-object p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->mInstance:Lcom/tzh/wifi/wificam/utils/StringUtils;

    return-object p0
.end method


# virtual methods
.method public change2Cn()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120164

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSpace:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12031c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f1202ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSupport:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12037e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConnected:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 87
    const-string v0, "\u662f\u5426\u5220\u9664\u6587\u4ef6\uff1f"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120311

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecording:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12030c

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strVRState:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120326

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullUp:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120321

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullDown:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12017b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsnsorNo:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120316

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRelFinger:Ljava/lang/String;

    .line 98
    const-string v0, "\u6b63\u5728\u4e0a\u4f20\u89c6\u9891..."

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strEncoding:Ljava/lang/String;

    .line 99
    const-string v0, "\u4e0a\u4f20\u6587\u4ef6"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 100
    const-string v0, "\u662f\u5426\u653e\u5f03\u4e0a\u4f20\u6587\u4ef6\uff1f"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12034b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSelect:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f1200e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strCloseMusic:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f1200e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConfirm:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120330

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPopularMusic:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120270

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLocalMusic:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120375

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSnap:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120373

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordStart:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12015e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordEnd:Ljava/lang/String;

    return-void
.end method

.method public change2Eng()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSpace:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12031e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f1202cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSupport:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120380

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConnected:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12002c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120313

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecording:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12030e

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strVRState:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120328

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullUp:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120323

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullDown:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12017d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsnsorNo:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120274

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLockDown:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRelFinger:Ljava/lang/String;

    .line 129
    const-string v0, "uploading..."

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strEncoding:Ljava/lang/String;

    .line 130
    const-string v0, "upload file"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 131
    const-string v0, "Do you give up uploading files?"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12034c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSelect:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f1200e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strCloseMusic:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f1200ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConfirm:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120331

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPopularMusic:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120271

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLocalMusic:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120376

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSnap:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120374

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordStart:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12015f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordEnd:Ljava/lang/String;

    return-void
.end method

.method public change2Fra()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSpace:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12031f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120381

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConnected:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120314

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecording:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12030f

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12030a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strVRState:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120329

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullUp:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120324

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullDown:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12017e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsnsorNo:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120319

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRelFinger:Ljava/lang/String;

    .line 159
    const-string v0, "uploading..."

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strEncoding:Ljava/lang/String;

    .line 160
    const-string v0, "upload file"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 161
    const-string v0, "Do you give up uploading files?"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    return-void
.end method

.method public change2Helan()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120165

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSpace:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12031d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12037f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConnected:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120312

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecording:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12030d

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120308

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strVRState:Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullUp:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120322

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullDown:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsnsorNo:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120317

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRelFinger:Ljava/lang/String;

    .line 203
    const-string v0, "uploading..."

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strEncoding:Ljava/lang/String;

    .line 204
    const-string v0, "upload file"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 205
    const-string v0, "Do you give up uploading files?"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    return-void
.end method

.method public change2Span()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSpace:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120320

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120382

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConnected:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12003f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120038

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120315

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecording:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120310

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12030b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strVRState:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12032a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullUp:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f120325

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPullDown:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12017f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsnsorNo:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->context:Landroid/content/Context;

    const v1, 0x7f12031a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRelFinger:Ljava/lang/String;

    .line 181
    const-string v0, "uploading..."

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strEncoding:Ljava/lang/String;

    .line 182
    const-string v0, "upload file"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 183
    const-string v0, "Do you give up uploading files?"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    return-void
.end method

.method public changeLan(I)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Helan()V

    return-void

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Span()V

    return-void

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Fra()V

    return-void

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Eng()V

    return-void

    .line 54
    :cond_4
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Cn()V

    return-void
.end method
