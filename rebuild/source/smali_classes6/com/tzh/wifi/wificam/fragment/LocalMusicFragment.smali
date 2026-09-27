.class public Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;
.super Landroidx/fragment/app/Fragment;
.source "LocalMusicFragment.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;
.implements Lcom/tzh/wifi/wificam/interfaces/OnMusicPlayListener;


# instance fields
.field private am:Landroid/content/res/AssetManager;

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
.method public constructor <init>(Lcom/tzh/wifi/wificam/utils/MusicUtils;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x3

    .line 40
    iput v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->type:I

    .line 43
    iput-object p1, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->imLastPlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0801a3

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onConfirm(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tzh/wifi/wificam/bean/Music;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/bean/Music;->getPath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "audio_str:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2222"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "music_on"

    invoke-static {v0}, Lcom/tzh/wifi/wificam/bean/MessageWrap;->getInstance(Ljava/lang/String;)Lcom/tzh/wifi/wificam/bean/MessageWrap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0d00cb

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0911

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 53
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {p2, p0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->setOnMusicPlayListener(Lcom/tzh/wifi/wificam/interfaces/OnMusicPlayListener;)V

    .line 55
    iget-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->getMusic()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicList:Ljava/util/List;

    .line 56
    new-instance p2, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p3, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicList:Ljava/util/List;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget v1, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->type:I

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Landroid/content/res/AssetManager;

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;-><init>(Ljava/util/List;Lcom/tzh/wifi/wificam/utils/MusicUtils;ILandroid/content/res/AssetManager;)V

    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mAdapter:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    .line 57
    iget-object p3, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    iget-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mAdapter:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    invoke-virtual {p2, p0}, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->setOnItemClickListener(Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPausePlay()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->imLastPlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0801a3

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onPlay(ILandroid/widget/ImageView;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->mMusicList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tzh/wifi/wificam/bean/Music;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/bean/Music;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->play(Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;->imLastPlay:Landroid/widget/ImageView;

    return-void
.end method
