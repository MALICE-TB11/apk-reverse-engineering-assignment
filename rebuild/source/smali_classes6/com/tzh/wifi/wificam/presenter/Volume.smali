.class public Lcom/tzh/wifi/wificam/presenter/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# instance fields
.field private MaxVoice:I

.field private context:Landroid/content/Context;

.field private curVoice:I

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->curVoice:I

    .line 9
    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->MaxVoice:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->mAudioManager:Landroid/media/AudioManager;

    .line 14
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->context:Landroid/content/Context;

    .line 15
    const-string v0, "audio"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 17
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->MaxVoice:I

    .line 18
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->curVoice:I

    return-void
.end method


# virtual methods
.method public getCurVol()I
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getMaxVol()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->MaxVoice:I

    return v0
.end method

.method public setCurVol(I)V
    .locals 3

    .line 30
    iput p1, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->curVoice:I

    .line 31
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Volume;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
