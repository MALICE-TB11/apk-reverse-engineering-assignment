.class public Lcom/tzh/wifi/wificam/activity/MusicActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "MusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

.field tvCloseMusic:Landroid/widget/TextView;

.field tvLocalMusic:Landroid/widget/TextView;

.field tvPopularMusicChinese:Landroid/widget/TextView;

.field tvSelectMusic:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0a09d8

    .line 64
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvSelectMusic:Landroid/widget/TextView;

    const v0, 0x7f0a0918

    .line 65
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvCloseMusic:Landroid/widget/TextView;

    const v1, 0x7f0a0910

    .line 66
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvLocalMusic:Landroid/widget/TextView;

    const v1, 0x7f0a0913

    .line 67
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvPopularMusicChinese:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvSelectMusic:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSelect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvCloseMusic:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strCloseMusic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvPopularMusicChinese:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strPopularMusic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvLocalMusic:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLocalMusic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a090d

    .line 74
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvPopularMusicChinese:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvLocalMusic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    .line 79
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->setLanguage()V

    .line 80
    const-string v0, "music_select_popular_chinese"

    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->replaceFragment(Ljava/lang/String;)V

    return-void
.end method

.method private replaceFragment(Ljava/lang/String;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_5

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x75914c62

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x28562a42

    if-ne v0, v1, :cond_2

    .line 92
    const-string v0, "music_select_local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "music_select_popular_chinese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v0, 0xffff

    :goto_0
    if-nez v0, :cond_3

    .line 99
    new-instance v0, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-direct {v0, v1, p1}, Lcom/tzh/wifi/wificam/fragment/PopularMusicFragment;-><init>(Lcom/tzh/wifi/wificam/utils/MusicUtils;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    .line 101
    new-instance v0, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-direct {v0, v1}, Lcom/tzh/wifi/wificam/fragment/LocalMusicFragment;-><init>(Lcom/tzh/wifi/wificam/utils/MusicUtils;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 103
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a090f

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    .line 106
    :cond_5
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 147
    invoke-static {p1}, Lcom/tzh/wifi/wificam/utils/AppUtils;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, -0x100

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    return-void

    .line 127
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 128
    const-string v0, "choose"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v2, p1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "music_off"

    invoke-static {v0}, Lcom/tzh/wifi/wificam/bean/MessageWrap;->getInstance(Ljava/lang/String;)Lcom/tzh/wifi/wificam/bean/MessageWrap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->finish()V

    return-void

    .line 122
    :sswitch_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvPopularMusicChinese:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvLocalMusic:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    const-string p1, "music_select_popular_chinese"

    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->replaceFragment(Ljava/lang/String;)V

    return-void

    .line 117
    :sswitch_2
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->tvPopularMusicChinese:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    const-string p1, "music_select_local"

    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->replaceFragment(Ljava/lang/String;)V

    return-void

    .line 112
    :sswitch_3
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->finish()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a090d -> :sswitch_3
        0x7f0a0910 -> :sswitch_2
        0x7f0a0913 -> :sswitch_1
        0x7f0a0918 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 43
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 141
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/MusicActivity;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->stop()V

    return-void
.end method

.method public setLanguage()V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/PreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/LocalUtil;->isZh(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "key_language_flag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/AppUtils;->getLanguage(I)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/MusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tzh/wifi/wificam/utils/AppUtils;->setLanguage(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_0
    return-void
.end method
