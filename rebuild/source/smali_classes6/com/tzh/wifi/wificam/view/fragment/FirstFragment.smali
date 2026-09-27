.class public Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;
.super Landroidx/fragment/app/Fragment;
.source "FirstFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;


# instance fields
.field private btnCn:Landroid/widget/ImageView;

.field private btnEN:Landroid/widget/ImageView;

.field private ivCenter:Landroid/widget/ImageView;

.field private language:I

.field private mLanguageSel:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;

.field private screenHeight:I

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->ivCenter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 22
    iput v1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->screenWidth:I

    .line 23
    iput v1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->screenHeight:I

    .line 24
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mLanguageSel:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;

    .line 31
    iput p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->language:I

    return-void
.end method

.method public static getInstance(I)Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;
    .locals 1

    .line 35
    sget-object v0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mInstance:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;-><init>(I)V

    sput-object v0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mInstance:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    .line 39
    :cond_0
    sget-object p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mInstance:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;

    return-object p0
.end method

.method private widget_init(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01e4

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    const v0, 0x7f0a01e5

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    const v0, 0x7f0a03ae

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->ivCenter:Landroid/widget/ImageView;

    .line 71
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->language:I

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    const v0, 0x7f0f00c4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    const v0, 0x7f0f00c5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->ivCenter:Landroid/widget/ImageView;

    const v0, 0x7f0f00bf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    const v0, 0x7f0f00c3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    const v0, 0x7f0f00c6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->ivCenter:Landroid/widget/ImageView;

    const v0, 0x7f0f00c0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 109
    iput p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->language:I

    .line 110
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->language:I

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeLan(Landroid/content/Context;I)V

    .line 111
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    const v1, 0x7f0f00c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    const v1, 0x7f0f00c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->ivCenter:Landroid/widget/ImageView;

    const v1, 0x7f0f00c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Eng()V

    .line 115
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mLanguageSel:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;->setClickEng(Z)V

    return-void

    :pswitch_1
    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->language:I

    .line 96
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnCn:Landroid/widget/ImageView;

    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->btnEN:Landroid/widget/ImageView;

    const v1, 0x7f0f00c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->ivCenter:Landroid/widget/ImageView;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->language:I

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeLan(Landroid/content/Context;I)V

    .line 101
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->change2Cn()V

    .line 102
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mLanguageSel:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p1}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;->setClickEng(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a01e4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d01e8

    const/4 p3, 0x0

    .line 53
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 55
    iget p3, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p3, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->screenWidth:I

    .line 56
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->screenHeight:I

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->widget_init(Landroid/view/View;)V

    return-void
.end method

.method public setLanguageSel(Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/FirstFragment;->mLanguageSel:Lcom/tzh/wifi/wificam/view/fragment/FirstFragment$ILanguageSel;

    return-void
.end method
