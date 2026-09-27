.class public Lcom/tzh/wifi/wificam/utils/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static INSTANCE:Lcom/tzh/wifi/wificam/utils/PathUtils; = null

.field private static debug:Z = true


# instance fields
.field private context:Landroid/content/Context;

.field private mainDirName:Ljava/lang/String;

.field private photoDir:Ljava/io/File;

.field private videoDir:Ljava/io/File;

.field private videoPicDir:Ljava/io/File;

.field public vrFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->photoDir:Ljava/io/File;

    .line 25
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoDir:Ljava/io/File;

    .line 27
    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoPicDir:Ljava/io/File;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->mainDirName:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DCIM/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1200da

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->mainDirName:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;->initFile()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/PathUtils;
    .locals 2

    .line 40
    const-class v0, Lcom/tzh/wifi/wificam/utils/PathUtils;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/tzh/wifi/wificam/utils/PathUtils;->INSTANCE:Lcom/tzh/wifi/wificam/utils/PathUtils;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tzh/wifi/wificam/utils/PathUtils;->INSTANCE:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 44
    :cond_0
    sget-object p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->INSTANCE:Lcom/tzh/wifi/wificam/utils/PathUtils;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initFile()V
    .locals 3

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->mainDirName:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->vrFile:Ljava/io/File;

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->vrFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->vrFile:Ljava/io/File;

    const-string v2, "photo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->photoDir:Ljava/io/File;

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->photoDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->vrFile:Ljava/io/File;

    const-string v2, "video"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoDir:Ljava/io/File;

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 66
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->vrFile:Ljava/io/File;

    const-string v2, ".videoPic"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoPicDir:Ljava/io/File;

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoPicDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-void
.end method


# virtual methods
.method public copyFilesFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 114
    const-string v0, ""

    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 121
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 122
    :goto_0
    array-length v5, v2

    const/4 v6, -0x1

    if-ge v4, v5, :cond_1

    .line 124
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-gez v4, :cond_6

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 133
    :goto_2
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 135
    aget-object v5, v2, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    aget-object v0, v2, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 141
    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->context:Landroid/content/Context;

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    const/16 v4, 0x400

    .line 142
    new-array v4, v4, [B

    .line 144
    :goto_4
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v5, v6, :cond_4

    .line 145
    invoke-virtual {v2, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 147
    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 148
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    sget-boolean v0, Lcom/tzh/wifi/wificam/utils/PathUtils;->debug:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PathUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_6
    aget-object p1, v2, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createPhotoFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MMddHHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->photoDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-object v1
.end method

.method public createVideoFile(Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPhotoFile()Ljava/io/File;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->photoDir:Ljava/io/File;

    return-object v0
.end method

.method public getVideoFile()Ljava/io/File;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/PathUtils;->videoDir:Ljava/io/File;

    return-object v0
.end method
