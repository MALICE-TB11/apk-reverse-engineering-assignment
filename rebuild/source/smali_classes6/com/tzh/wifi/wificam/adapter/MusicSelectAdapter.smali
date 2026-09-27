.class public Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MusicSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field public imPlay:Landroid/widget/ImageView;

.field public lastPosition:I

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/bean/Music;",
            ">;"
        }
    .end annotation
.end field

.field public mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

.field public onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

.field public type:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/tzh/wifi/wificam/utils/MusicUtils;ILandroid/content/res/AssetManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/bean/Music;",
            ">;",
            "Lcom/tzh/wifi/wificam/utils/MusicUtils;",
            "I",
            "Landroid/content/res/AssetManager;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->mDatas:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    .line 84
    iput p3, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->type:I

    .line 85
    iput-object p4, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 29
    check-cast p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onBindViewHolder(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;I)V
    .locals 7

    const-string v0, "musics/"

    .line 99
    iget-object v1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tzh/wifi/wificam/bean/Music;

    .line 100
    iget-object v2, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->position:Landroid/widget/TextView;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->song:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/bean/Music;->getSong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/bean/Music;->getSinger()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->song:Landroid/widget/TextView;

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tzh/wifi/wificam/bean/Music;

    invoke-virtual {v4}, Lcom/tzh/wifi/wificam/bean/Music;->getSinger()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 106
    :cond_0
    iget v2, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 107
    :cond_1
    iget-object v2, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 109
    :try_start_0
    iget-object v2, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->assetManager:Landroid/content/res/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/bean/Music;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/bean/Music;->getSong()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/bean/Music;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->showDurationFormat(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->play:Landroid/widget/ImageView;

    new-instance v1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;-><init>(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->confirm:Landroid/widget/Button;

    new-instance v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;-><init>(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;
    .locals 2

    .line 90
    iget p2, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->type:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0101

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0103

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    :goto_0
    new-instance p2, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;-><init>(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    return-void
.end method
