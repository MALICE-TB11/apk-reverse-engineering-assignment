.class public Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;,
        Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;,
        Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;,
        Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickListener;,
        Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;,
        Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$VideoThumb;
    }
.end annotation


# instance fields
.field private count:I

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field logEX:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mInflater:Landroid/view/LayoutInflater;

.field public mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

.field private mediaType:I

.field private onFileDelete:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;

.field private onFileUpload:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private screenHeight:I

.field private screenWidth:I

.field private videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;",
            "Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;",
            "I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->videos:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->count:I

    .line 37
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->onFileDelete:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;

    .line 38
    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->onFileUpload:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;

    .line 39
    const-class v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->logEX:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 40
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->screenWidth:I

    .line 41
    iput v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->screenHeight:I

    .line 46
    iput-object p3, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->onFileDelete:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;

    .line 47
    iput-object p4, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->onFileUpload:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;

    .line 48
    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->videos:Ljava/util/List;

    .line 49
    iput p5, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mediaType:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 51
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->screenWidth:I

    .line 52
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->screenHeight:I

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    const p2, 0x7f0f0023

    .line 55
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const/16 p3, 0x104

    invoke-virtual {p1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    new-instance p3, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;

    const/16 p4, 0xf

    invoke-direct {p3, p4}, Lcom/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(I)V

    .line 56
    invoke-virtual {p1, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory()Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    const/16 p2, 0xc8

    .line 58
    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->delayBeforeLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-void
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->onFileDelete:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->onFileUpload:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;

    return-object p0
.end method

.method private setImage(Ljava/io/File;)V
    .locals 5

    .line 160
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgPic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".dat"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "/.videoPic/"

    const-string v4, "/video/"

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 165
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgPic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    return-void

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 172
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->logEX:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "photo file exist! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->logEX:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 176
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgPic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 221
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 223
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 228
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_2
    move-exception p1

    .line 226
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 231
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 235
    :goto_3
    throw p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 86
    new-instance p2, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;-><init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$1;)V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    .line 87
    iget-object p2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00ca

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    const v1, 0x7f0a02dd

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgPic:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    const v1, 0x7f0a02dc

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgDel:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    const v1, 0x7f0a02df

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgUpload:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    const v1, 0x7f0a02de

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 96
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->screenWidth:I

    mul-int/lit16 v1, v1, 0xc8

    div-int/lit16 v1, v1, 0x3c0

    iget v2, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->screenHeight:I

    mul-int/lit16 v2, v2, 0xc8

    div-int/lit16 v2, v2, 0x280

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgDel:Landroid/widget/ImageView;

    new-instance v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickListener;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickListener;-><init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgUpload:Landroid/widget/ImageView;

    new-instance v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ClickUploadListener;-><init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mediaType:I

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgUpload:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->mViewHolder:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->count:I

    if-nez v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 114
    iput v0, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->count:I

    .line 115
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->setImage(Ljava/io/File;)V

    return-object p2

    .line 116
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_3

    iget p3, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->count:I

    if-lez p3, :cond_3

    .line 117
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->setImage(Ljava/io/File;)V

    return-object p2

    .line 120
    :cond_3
    iget p3, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->count:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->count:I

    .line 121
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->setImage(Ljava/io/File;)V

    return-object p2
.end method
