.class public Lcom/tzh/wifi/wificam/bean/Music;
.super Ljava/lang/Object;
.source "Music.java"


# instance fields
.field private duration:I

.field private path:Ljava/lang/String;

.field private singer:Ljava/lang/String;

.field private size:J

.field private song:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/tzh/wifi/wificam/bean/Music;->duration:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/tzh/wifi/wificam/bean/Music;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/tzh/wifi/wificam/bean/Music;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/bean/Music;->size:J

    return-wide v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/tzh/wifi/wificam/bean/Music;->song:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/tzh/wifi/wificam/bean/Music;->duration:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/tzh/wifi/wificam/bean/Music;->path:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/tzh/wifi/wificam/bean/Music;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/tzh/wifi/wificam/bean/Music;->size:J

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/tzh/wifi/wificam/bean/Music;->song:Ljava/lang/String;

    return-void
.end method
