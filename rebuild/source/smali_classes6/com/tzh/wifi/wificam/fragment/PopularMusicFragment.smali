.class public Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;
.super Landroidx/fragment/app/Fragment;
.source "PopularMusicFragment.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;
.implements Lcom/tzh/wifi/wificam/interfaces/OnMusicPlayListener;


# instance fields
.field private am:Landroid/content/res/AssetManager;

.field private fragmentTag:Ljava/lang/String;

.field private imLastPlay:Landroid/widget/ImageView;

.field private mAdapter:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

.field private mMusicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/bean/Music;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/utils/MusicUtils;Ljava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->type:I

    .line 47
    iput-object p1, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    .line 48
    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->fragmentTag:Ljava/lang/String;

    return-void
.end method

.method private getMusic()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/bean/Music;",
            ">;"
        }
    .end annotation

    .line 70
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->am:Landroid/content/res/AssetManager;

    .line 73
    :try_start_0
    const-string v3, "musics"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 78
    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    .line 80
    iget-object v6, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->am:Landroid/content/res/AssetManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "musics/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 v6, 0x3

    .line 82
    invoke-virtual {v7, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 83
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    .line 84
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    .line 85
    new-instance v7, Lcom/tzh/wifi/wificam/bean/Music;

    invoke-direct {v7}, Lcom/tzh/wifi/wificam/bean/Music;-><init>()V

    .line 86
    invoke-virtual {v7, v6}, Lcom/tzh/wifi/wificam/bean/Music;->setDuration(I)V

    .line 87
    invoke-virtual {v7, v0}, Lcom/tzh/wifi/wificam/bean/Music;->setPath(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v7, v0}, Lcom/tzh/wifi/wificam/bean/Music;->setSinger(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    .line 89
    invoke-virtual {v7, v8, v9}, Lcom/tzh/wifi/wificam/bean/Music;->setSize(J)V

    .line 90
    invoke-virtual {v7, v5}, Lcom/tzh/wifi/wificam/bean/Music;->setSong(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->imLastPlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0801a3

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onConfirm(I)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tzh/wifi/wificam/bean/Music;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/bean/Music;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "audio_str:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2222"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "music_on"

    invoke-static {v0}, Lcom/tzh/wifi/wificam/bean/MessageWrap;->getInstance(Ljava/lang/String;)Lcom/tzh/wifi/wificam/bean/MessageWrap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0d00cc

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0914

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 60
    iget-object p3, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    iget-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {p2, p0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->setOnMusicPlayListener(Lcom/tzh/wifi/wificam/interfaces/OnMusicPlayListener;)V

    .line 62
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->getMusic()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicList:Ljava/util/List;

    .line 63
    new-instance p2, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p3, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicList:Ljava/util/List;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget v1, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->type:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->am:Landroid/content/res/AssetManager;

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;-><init>(Ljava/util/List;Lcom/tzh/wifi/wificam/utils/MusicUtils;ILandroid/content/res/AssetManager;)V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mAdapter:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    .line 64
    iget-object p3, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mAdapter:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    invoke-virtual {p2, p0}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->setOnItemClickListener(Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPausePlay()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->imLastPlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0801a3

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onPlay(ILandroid/widget/ImageView;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->am:Landroid/content/res/AssetManager;

    iget v2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->type:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->mMusicList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tzh/wifi/wificam/bean/Music;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/bean/Music;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->play(Landroid/content/res/AssetManager;ILjava/lang/String;)V

    .line 107
    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;->imLastPlay:Landroid/widget/ImageView;

    return-void
.end method
