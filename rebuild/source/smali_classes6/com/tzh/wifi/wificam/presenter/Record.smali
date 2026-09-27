.class public Lcom/tzh/wifi/wificam/presenter/Record;
.super Ljava/lang/Object;
.source "Record.java"


# instance fields
.field private bPhotoSnap:Z

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mContext:Landroid/content/Context;

.field private mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

.field private photoFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->mContext:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 17
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->photoFile:Ljava/io/File;

    .line 18
    const-class v0, Lcom/tzh/wifi/wificam/presenter/Record;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->bPhotoSnap:Z

    .line 22
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Record;->mContext:Landroid/content/Context;

    .line 23
    new-instance p1, Lcom/tzh/wifi/wificam/utils/PathUtils;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/Record;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/presenter/Record;)Ljava/io/File;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->photoFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/presenter/Record;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->bPhotoSnap:Z

    return p0
.end method

.method static synthetic access$102(Lcom/tzh/wifi/wificam/presenter/Record;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/presenter/Record;->bPhotoSnap:Z

    return p1
.end method


# virtual methods
.method public prepareRecord(Z)V
    .locals 3

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->mPathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/PathUtils;->createVideoFile(Z)Ljava/lang/String;

    move-result-object p1

    .line 29
    const-string v0, ".dat"

    const-string v1, ".jpg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/video/"

    const-string v2, "/.videoPic/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/presenter/Record;->photoFile:Ljava/io/File;

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/Record;->photoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    const/16 v0, 0x1e0

    const/16 v1, 0x19

    const/16 v2, 0x280

    .line 34
    invoke-static {v2, v0, v1}, Lcom/tzh/wifi/utils/Camera;->iCameraRecSetParams(III)I

    .line 35
    invoke-static {p1}, Lcom/tzh/wifi/utils/Camera;->iCameraRecStart(Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/presenter/Record;->bPhotoSnap:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public takeSnap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tzh/wifi/wificam/presenter/Record$1;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/presenter/Record$1;-><init>(Lcom/tzh/wifi/wificam/presenter/Record;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
