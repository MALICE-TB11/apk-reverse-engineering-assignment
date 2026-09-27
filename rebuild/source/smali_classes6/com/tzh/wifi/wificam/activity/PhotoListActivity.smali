.class public Lcom/tzh/wifi/wificam/activity/PhotoListActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "PhotoListActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;
.implements Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;
    }
.end annotation


# static fields
.field public static defaultHeight:I = 0x384

.field public static defaultWidth:I = 0x640


# instance fields
.field private btnReturn:Landroid/widget/ImageView;

.field private mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

.field private mAlart:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

.field private mGridView:Landroid/widget/GridView;

.field private mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private noFileTxt:Landroid/widget/TextView;

.field private pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->btnReturn:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mPathList:Ljava/util/ArrayList;

    .line 40
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 41
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->screenWidth:I

    .line 43
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->screenHeight:I

    .line 44
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->noFileTxt:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mAlart:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    return-void
.end method

.method private DeleteFile(Ljava/io/File;)V
    .locals 3

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 248
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 251
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->DeleteFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method private FilterFile(Ljava/io/File;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jpg"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private PhotoFilter(Ljava/io/File;)V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)V

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    array-length v0, p1

    if-lez v0, :cond_1

    .line 100
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 101
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 102
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Ljava/io/File;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->FilterFile(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Ljava/io/File;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->DeleteFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mPathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->noFileTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method private widget_init()V
    .locals 7

    .line 61
    new-instance v0, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    .line 62
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/PathUtils;->getPhotoFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->pathUtils:Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/PathUtils;->getPhotoFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->PhotoFilter(Ljava/io/File;)V

    :cond_0
    const v0, 0x7f0a01fc

    .line 65
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->btnReturn:Landroid/widget/ImageView;

    const v0, 0x7f0a000a

    .line 66
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->noFileTxt:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0309

    .line 68
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mGridView:Landroid/widget/GridView;

    .line 69
    new-instance v1, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileDelete;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$OnFileUpload;I)V

    iput-object v1, v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mAdapter:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    .line 71
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mGridView:Landroid/widget/GridView;

    iget v1, v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->screenHeight:I

    mul-int/lit8 v1, v1, 0x32

    div-int/lit16 v1, v1, 0x280

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 73
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    iget-object v0, v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->btnReturn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mAlart:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    .line 138
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->finish()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onClick(Landroid/view/View;)V

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01fc

    if-eq p1, v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->finish()V

    const p1, 0x10a0002

    const v0, 0x10a0003

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001f

    .line 53
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 55
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->screenWidth:I

    .line 56
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->screenHeight:I

    .line 57
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->widget_init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onFileDelete(I)V
    .locals 1

    .line 165
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;

    invoke-direct {v0, p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$mAlartClick;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->showAlartDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V

    return-void
.end method

.method public onFileUpload(I)V
    .locals 0

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

    .line 261
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p4, "showjpg"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string p2, "selectedPhotoIndex"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string p2, "photoList"

    iget-object p3, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->noFileTxt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->noFileTxt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStop()V

    return-void
.end method

.method public showAlartDialog(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;Z)V
    .locals 3

    .line 176
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p2

    .line 177
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    new-instance v2, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$3;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object p2, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V

    .line 189
    invoke-virtual {v0, p2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 198
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
