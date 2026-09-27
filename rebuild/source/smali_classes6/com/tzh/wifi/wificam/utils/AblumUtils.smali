.class public Lcom/tzh/wifi/wificam/utils/AblumUtils;
.super Ljava/lang/Object;
.source "AblumUtils.java"


# static fields
.field private static mInstance:Lcom/tzh/wifi/wificam/utils/AblumUtils;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/AblumUtils;->context:Landroid/content/Context;

    return-void
.end method

.method private checkFile(Ljava/lang/String;)Z
    .locals 1

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/AblumUtils;
    .locals 1

    .line 26
    sget-object v0, Lcom/tzh/wifi/wificam/utils/AblumUtils;->mInstance:Lcom/tzh/wifi/wificam/utils/AblumUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/tzh/wifi/wificam/utils/AblumUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/AblumUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/AblumUtils;->mInstance:Lcom/tzh/wifi/wificam/utils/AblumUtils;

    .line 29
    :cond_0
    sget-object p0, Lcom/tzh/wifi/wificam/utils/AblumUtils;->mInstance:Lcom/tzh/wifi/wificam/utils/AblumUtils;

    return-object p0
.end method

.method private getPhotoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 151
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "image/jpeg"

    if-nez v0, :cond_2

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const-string p1, "image/png"

    return-object p1

    .line 155
    :cond_1
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    const-string p1, "image/gif"

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getTimeWrap(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 164
    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mpeg4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 167
    const-string p1, "video/3gp"

    return-object p1

    .line 169
    :cond_1
    const-string p1, "unknow"

    return-object p1

    .line 165
    :cond_2
    :goto_0
    const-string p1, "video/mp4"

    return-object p1
.end method

.method private initCommonContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;
    .locals 3

    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getTimeWrap(J)J

    move-result-wide p1

    .line 77
    const-string p3, "title"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string p3, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string p3, "date_modified"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string p3, "date_added"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    const-string p1, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "_size"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private isSystemDcim(Ljava/lang/String;)Z
    .locals 2

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dcim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public insertImageToMediaStore(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->insertImageToMediaStore(Landroid/content/Context;Ljava/lang/String;JII)V

    return-void
.end method

.method public insertImageToMediaStore(Landroid/content/Context;Ljava/lang/String;JII)V
    .locals 2

    .line 96
    invoke-direct {p0, p2}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->checkFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getTimeWrap(J)J

    move-result-wide p3

    .line 99
    invoke-direct {p0, p2, p3, p4}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->initCommonContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    .line 100
    const-string v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p3, 0x0

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez p5, :cond_1

    .line 104
    const-string p4, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {v0, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-lez p6, :cond_2

    .line 105
    const-string p4, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    :cond_2
    const-string p3, "mime_type"

    invoke-direct {p0, p2}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getPhotoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public insertVideoToMediaStore(Landroid/content/Context;Ljava/lang/String;JIIJ)V
    .locals 2

    .line 122
    invoke-direct {p0, p2}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->checkFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0, p2}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getVideoMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v1, "unknow"

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->getTimeWrap(J)J

    move-result-wide p3

    .line 130
    invoke-direct {p0, p2, p3, p4}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->initCommonContentValues(Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object p2

    .line 131
    const-string v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 p3, 0x0

    cmp-long v1, p7, p3

    if-lez v1, :cond_2

    .line 133
    const-string p3, "duration"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    if-lez p5, :cond_3

    .line 135
    const-string p3, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    if-lez p6, :cond_4

    .line 136
    const-string p3, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    :cond_4
    const-string p3, "mime_type"

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method public insertVideoToMediaStore(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v7, p5

    .line 34
    invoke-virtual/range {v0 .. v8}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->insertVideoToMediaStore(Landroid/content/Context;Ljava/lang/String;JIIJ)V

    return-void
.end method

.method public scanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0, p2}, Lcom/tzh/wifi/wificam/utils/AblumUtils;->checkFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
