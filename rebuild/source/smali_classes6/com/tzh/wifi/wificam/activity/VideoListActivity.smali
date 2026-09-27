.class public Lcom/tzh/wifi/wificam/activity/VideoListActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "VideoListActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;
.implements Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;,
        Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;
    }
.end annotation


# static fields
.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_NORMAL:I


# instance fields
.field private btnReturn:Landroid/widget/ImageView;

.field private currentState:I

.field private isCancelUpload:Ljava/lang/Boolean;

.field logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

.field private mAlart:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

.field private mAlartUpload:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

.field mEncodingRunnable:Ljava/lang/Runnable;

.field private mGridView:Landroid/widget/GridView;

.field mHandler:Landroid/os/Handler;

.field private mLoadingView:Landroid/view/View;

.field private mPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUploadRunnable:Ljava/lang/Runnable;

.field private noFileTxt:Landroid/widget/TextView;

.field private pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

.field private screenHeight:I

.field private screenWidth:I

.field private startTime:J

.field private videoPath:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->btnReturn:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    .line 44
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 45
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenWidth:I

    .line 47
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenHeight:I

    .line 48
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->noFileTxt:Landroid/widget/TextView;

    .line 49
    const-class v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 50
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAlart:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    .line 51
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAlartUpload:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    .line 56
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->isCancelUpload:Ljava/lang/Boolean;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->startTime:J

    .line 431
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mHandler:Landroid/os/Handler;

    .line 433
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$5;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mEncodingRunnable:Ljava/lang/Runnable;

    .line 461
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$6;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mUploadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private DeleteFile(Ljava/io/File;)V
    .locals 3

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 127
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 128
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->DeleteFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method private FilterFile(Ljava/io/File;)V
    .locals 4

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 142
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 143
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".dat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p1, v0

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".3gp"

    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p1, v0

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".mp4"

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 149
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_2
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v1, p1, v0

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 156
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->FilterFile(Ljava/io/File;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private PlayMedia(Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 414
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 415
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    const-string v1, "m_filelist_videolist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 417
    const-string p1, "m_filelist_cur"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const p2, 0x10a0001

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Ljava/io/File;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->DeleteFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mLoadingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->noFileTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tzh/wifi/wificam/activity/VideoListActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    return p1
.end method

.method static synthetic access$600(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showPages()V

    return-void
.end method

.method static synthetic access$700(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/Boolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->isCancelUpload:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->startTime:J

    return-wide v0
.end method

.method private showPages()V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mLoadingView:Landroid/view/View;

    iget v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private widget_init()V
    .locals 7

    .line 86
    new-instance v0, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    const v0, 0x7f0a01fc

    .line 87
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->btnReturn:Landroid/widget/ImageView;

    const v0, 0x7f0a000a

    .line 88
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->noFileTxt:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0309

    .line 90
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mGridView:Landroid/widget/GridView;

    .line 91
    new-instance v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    const/4 v6, 0x1

    move-object v4, p0

    move-object v5, p0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;I)V

    iput-object v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    .line 93
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mGridView:Landroid/widget/GridView;

    iget v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenHeight:I

    mul-int/lit8 v1, v1, 0x32

    div-int/lit16 v1, v1, 0x280

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 95
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 99
    iget v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenWidth:I

    mul-int/lit8 v1, v1, 0x50

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 100
    iget v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenWidth:I

    mul-int/lit8 v1, v1, 0x50

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 101
    iget v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenWidth:I

    mul-int/lit8 v1, v1, 0xa

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultWidth:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 102
    iget v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenHeight:I

    mul-int/lit8 v1, v1, 0xa

    sget v3, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->defaultHeight:I

    div-int/2addr v1, v3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    iget-object v1, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d01e3

    .line 106
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->initView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mLoadingView:Landroid/view/View;

    .line 107
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showPages()V

    return-void
.end method


# virtual methods
.method public clearEncodingState()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user cancel upload:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 505
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->isCancelUpload:Ljava/lang/Boolean;

    .line 506
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mEncodingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 507
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    .line 508
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showPages()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAlart:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public initView(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 111
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 189
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showAlartUploadDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V

    return-void

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    .line 194
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->finish()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 377
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onClick(Landroid/view/View;)V

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01fc

    if-eq p1, v0, :cond_0

    return-void

    .line 381
    :cond_0
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 382
    new-instance p1, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartUploadClick;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showAlartUploadDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V

    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->finish()V

    const p1, 0x10a0002

    const v0, 0x10a0003

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0d001f

    .line 70
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->setContentView(I)V

    .line 72
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/DisplayUtils;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 73
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenWidth:I

    .line 74
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->screenHeight:I

    .line 75
    new-instance p1, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {p1, p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 76
    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/utils/PathUtils;->getVideoFile()Ljava/io/File;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->FilterFile(Ljava/io/File;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->widget_init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 183
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onFileDelete(I)V
    .locals 2

    .line 204
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance v0, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;

    invoke-direct {v0, p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$mAlartClick;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showAlartDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V

    return-void
.end method

.method public onFileUpload(I)V
    .locals 3

    .line 212
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    .line 223
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mUploadRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 399
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "###onItemClick:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 406
    const-class p1, Lcom/tzh/wifi/wificam/activity/VideoViewPlay;

    invoke-direct {p0, p1, p3}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->PlayMedia(Ljava/lang/Class;I)V

    return-void

    .line 408
    :cond_1
    const-class p1, Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-direct {p0, p1, p3}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->PlayMedia(Ljava/lang/Class;I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->noFileTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->noFileTxt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStop()V

    return-void
.end method

.method public showAlartDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V
    .locals 3

    .line 231
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p2

    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    new-instance v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p2, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/VideoListActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V

    .line 244
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 253
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showAlartUploadDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V
    .locals 3

    .line 324
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p2

    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadTitle:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strUploadContent:Ljava/lang/String;

    .line 327
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    new-instance v2, Lcom/tzh/wifi/wificam/activity/VideoListActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$4;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p2, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/VideoListActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/activity/VideoListActivity$3;-><init>(Lcom/tzh/wifi/wificam/activity/VideoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V

    .line 337
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 346
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public starUpload(I)V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "setEncodingState"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 479
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->isCancelUpload:Ljava/lang/Boolean;

    const/4 v1, 0x1

    .line 481
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->currentState:I

    .line 482
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->showPages()V

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->startTime:J

    .line 485
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    .line 487
    const-string v3, "video"

    const-string v4, "mp4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    .line 488
    const-string v3, "dat"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    .line 489
    const-string v3, "R.mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v2, "camera encode start rotate true"

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tzh/wifi/utils/Camera;->iCameraEncodeStart(Ljava/lang/String;I)I

    goto :goto_0

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v2, "camera encode start rotate false"

    invoke-virtual {v1, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mPathList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tzh/wifi/utils/Camera;->iCameraEncodeStart(Ljava/lang/String;I)I

    .line 496
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->logEx:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload path: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoListActivity;->mEncodingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
