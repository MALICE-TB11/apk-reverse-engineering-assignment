.class public Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;
.super Landroidx/fragment/app/Fragment;
.source "SecondFragment.java"


# static fields
.field private static mInstance:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;


# instance fields
.field private context:Landroid/content/Context;

.field private languageIndex:I

.field private pageTwoIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->context:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->pageTwoIcon:Landroid/widget/ImageView;

    .line 27
    iput p1, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->languageIndex:I

    return-void
.end method

.method public static getInstance(I)Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;
    .locals 1

    .line 31
    sget-object v0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->mInstance:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;-><init>(I)V

    sput-object v0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->mInstance:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    .line 35
    :cond_0
    sget-object p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->mInstance:Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;

    return-object p0
.end method

.method private widget_init(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a09d6

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->pageTwoIcon:Landroid/widget/ImageView;

    .line 63
    iget v0, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->languageIndex:I

    if-nez v0, :cond_0

    const v0, 0x7f0f00c1

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const v0, 0x7f0f00c2

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public changeLanguage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->pageTwoIcon:Landroid/widget/ImageView;

    const v0, 0x7f0f00c2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->pageTwoIcon:Landroid/widget/ImageView;

    const v0, 0x7f0f00c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d01ef

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->widget_init(Landroid/view/View;)V

    return-void
.end method

.method public setLanguageIndex(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/tzh/wifi/wificam/view/fragment/SecondFragment;->languageIndex:I

    return-void
.end method
