.class public Lcom/tzh/wifi/wificam/activity/FilterActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "FilterActivity.java"


# instance fields
.field private adapter:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

.field private bitmap:Landroid/graphics/Bitmap;

.field private fileUrl:Ljava/lang/String;

.field private gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

.field private listFilter:Lit/sephiroth/android/library/widget/HListView;

.field private pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

.field private photoFile:Ljava/io/File;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 42
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->photoFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/FilterActivity;Ljava/util/List;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->initFilter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/FilterActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->findImagePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/FilterActivity;)Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->adapter:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/FilterActivity;)Ljp/co/cyberagent/android/gpuimage/GPUImageView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    return-object p0
.end method

.method private findImagePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 76
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 82
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 84
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    if-nez v1, :cond_2

    .line 87
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method private initFilter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    .line 142
    new-instance v1, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->adapter:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    const/4 p1, 0x0

    .line 143
    invoke-virtual {v1, p1}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->setSelected(I)V

    .line 144
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->adapter:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    invoke-virtual {v1, p1}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->setSelectFilter(I)V

    .line 145
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->listFilter:Lit/sephiroth/android/library/widget/HListView;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->adapter:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->listFilter:Lit/sephiroth/android/library/widget/HListView;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;-><init>(Lcom/tzh/wifi/wificam/activity/FilterActivity;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lit/sephiroth/android/library/widget/HListView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private loadSmallImage()V
    .locals 2

    .line 93
    new-instance v0, Lcom/tzh/wifi/wificam/activity/FilterActivity$1;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tzh/wifi/wificam/activity/FilterActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/FilterActivity;Landroid/content/Context;)V

    .line 99
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/ImageCreator;->loadImage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ButtonClick(Landroid/view/View;)V
    .locals 3

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 108
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/FilterActivity$2;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/FilterActivity;)V

    const-string v2, "GpuImageFilter"

    invoke-virtual {v0, v2, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    return-void

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a02e4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initData()V
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "newImage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->url:Ljava/lang/String;

    .line 58
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->fileUrl:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->fileUrl:Ljava/lang/String;

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 66
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->setRatio(F)V

    .line 70
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->setImage(Landroid/graphics/Bitmap;)V

    .line 71
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->loadSmallImage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0026

    .line 47
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->setContentView(I)V

    .line 48
    new-instance p1, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    const p1, 0x7f0a0306

    .line 49
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    const p1, 0x7f0a070d

    .line 50
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->listFilter:Lit/sephiroth/android/library/widget/HListView;

    .line 52
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->gpuimage:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->recycleSurface()V

    .line 134
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
