.class public Lcom/tzh/wifi/wificam/activity/HelpActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;


# instance fields
.field private adapters:Lcom/tzh/wifi/wificam/view/fragment/FragmentAdapters;

.field private btnLeft:Landroid/widget/ImageView;

.field private btnReturn:Landroid/widget/ImageView;

.field private btnRight:Landroid/widget/ImageView;

.field private firstFragment:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

.field private fragmentIdx:I

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private languate:I

.field private screenHeight:I

.field private screenWidth:I

.field private secondFragment:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

.field private viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnLeft:Landroid/widget/ImageView;

    .line 24
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnRight:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->screenWidth:I

    .line 26
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->screenHeight:I

    .line 27
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnReturn:Landroid/widget/ImageView;

    .line 28
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->fragmentIdx:I

    const/4 v1, 0x1

    .line 30
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    .line 31
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;

    .line 32
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->firstFragment:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    .line 33
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->secondFragment:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->fragments:Ljava/util/List;

    .line 35
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->adapters:Lcom/tzh/wifi/wificam/view/fragment/FragmentAdapters;

    return-void
.end method

.method private widget_init()V
    .locals 3

    const v0, 0x7f0a01e6

    .line 45
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnLeft:Landroid/widget/ImageView;

    const v0, 0x7f0a01fd

    .line 46
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnRight:Landroid/widget/ImageView;

    const v0, 0x7f0a01fa

    .line 47
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnReturn:Landroid/widget/ImageView;

    .line 48
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getLan(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    .line 49
    invoke-static {v0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->getInstance(I)Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->firstFragment:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    .line 50
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    invoke-static {v0}, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->getInstance(I)Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->secondFragment:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    const v0, 0x7f0a0b45

    .line 51
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/ViewPagers;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;

    .line 52
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->firstFragment:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->secondFragment:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/tzh/wifi/wificam/view/fragment/FragmentAdapters;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->fragments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/view/fragment/FragmentAdapters;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->adapters:Lcom/tzh/wifi/wificam/view/fragment/FragmentAdapters;

    .line 55
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/view/ViewPagers;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;

    invoke-virtual {v0, p0}, Lcom/tzh/wifi/wificam/view/ViewPagers;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->firstFragment:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    invoke-virtual {v0, p0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->setLanguageSel(Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;)V

    .line 58
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnLeft:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 135
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 136
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->finish()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01e6

    if-eq p1, v0, :cond_3

    const v0, 0x7f0a01fa

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a01fd

    if-eq p1, v0, :cond_0

    return-void

    .line 97
    :cond_0
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 98
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;

    iget v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/view/ViewPagers;->setCurrentItem(I)V

    return-void

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->finish()V

    const p1, 0x10a0002

    const v0, 0x10a0003

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->overridePendingTransition(II)V

    return-void

    .line 90
    :cond_3
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    if-lez p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 91
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    .line 93
    :cond_4
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->viewPagers:Lcom/tzh/wifi/wificam/view/ViewPagers;

    iget v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/view/ViewPagers;->setCurrentItem(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001c

    .line 40
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/HelpActivity;->widget_init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 73
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 76
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnLeft:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->btnRight:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public setClickEng(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->languate:I

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/HelpActivity;->secondFragment:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->changeLanguage(Z)V

    return-void
.end method
