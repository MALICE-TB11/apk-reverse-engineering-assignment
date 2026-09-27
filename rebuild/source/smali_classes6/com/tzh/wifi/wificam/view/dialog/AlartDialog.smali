.class public Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;
.super Landroid/app/Dialog;
.source "AlartDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;,
        Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;
    }
.end annotation


# instance fields
.field private alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

.field private btnCancel:Landroid/widget/Button;

.field private btnClose:Landroid/widget/ImageView;

.field private btnConfirm:Landroid/widget/Button;

.field private content:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private frgCancel:Landroid/widget/RelativeLayout;

.field private frgConfirm:Landroid/widget/RelativeLayout;

.field private isSingle:Z

.field private languageIndex:I

.field private screenHeight:I

.field private screenWidth:I

.field private title:Ljava/lang/String;

.field private tvContent:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->title:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->content:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnConfirm:Landroid/widget/Button;

    .line 28
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnCancel:Landroid/widget/Button;

    .line 29
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvTitle:Landroid/widget/TextView;

    .line 30
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvContent:Landroid/widget/TextView;

    .line 31
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnClose:Landroid/widget/ImageView;

    .line 32
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->frgConfirm:Landroid/widget/RelativeLayout;

    .line 33
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->frgCancel:Landroid/widget/RelativeLayout;

    .line 34
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->isSingle:Z

    .line 36
    iput v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    .line 37
    iput v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    .line 43
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->context:Landroid/content/Context;

    .line 44
    iput v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->languageIndex:I

    const v0, 0x7f0d0029

    .line 45
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->setContentView(I)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 47
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    .line 48
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 50
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x400

    .line 52
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 55
    iget v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    mul-int/lit16 v0, v0, 0x320

    div-int/lit16 v0, v0, 0x780

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iget v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    mul-int/lit16 v0, v0, 0x1e0

    div-int/lit16 v0, v0, 0x438

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 57
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 60
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->widget_init()V

    return-void
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;)Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    return-object p0
.end method

.method private widget_init()V
    .locals 6

    const v0, 0x7f0a0068

    .line 72
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnConfirm:Landroid/widget/Button;

    const v0, 0x7f0a0067

    .line 73
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnCancel:Landroid/widget/Button;

    const v0, 0x7f0a006f

    .line 74
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a006d

    .line 75
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvContent:Landroid/widget/TextView;

    const v0, 0x7f0a006b

    .line 76
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnClose:Landroid/widget/ImageView;

    const v0, 0x7f0a006c

    .line 77
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->frgConfirm:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a006a

    .line 78
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->frgCancel:Landroid/widget/RelativeLayout;

    .line 79
    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->isSingle:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;-><init>(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;-><init>(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$ClickListener;-><init>(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->title:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->content:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteCancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strDeleteConfirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, -0x1

    .line 97
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 98
    iget v3, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    mul-int/lit16 v3, v3, 0xdc

    div-int/lit16 v3, v3, 0x438

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 99
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    iget v4, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    mul-int/lit8 v4, v4, 0x4c

    div-int/lit16 v4, v4, 0x780

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 105
    iget v4, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    mul-int/lit8 v4, v4, 0x4c

    div-int/lit16 v4, v4, 0x780

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v4, 0xf

    .line 106
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    iget v5, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    mul-int/lit8 v5, v5, 0xa

    div-int/lit16 v5, v5, 0x780

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 108
    iget-object v5, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 113
    iget v2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    mul-int/lit8 v2, v2, 0x64

    div-int/lit16 v2, v2, 0x438

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 114
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 115
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    iget-object v2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    iget v2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    mul-int/lit16 v2, v2, 0xf0

    div-int/lit16 v2, v2, 0x780

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 121
    iget v2, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    mul-int/lit8 v2, v2, 0x6e

    div-int/lit16 v2, v2, 0x438

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v2, 0xd

    .line 122
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 123
    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 124
    iget-object v4, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 128
    iget v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenWidth:I

    mul-int/lit16 v1, v1, 0xf0

    div-int/lit16 v1, v1, 0x780

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 129
    iget v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->screenHeight:I

    mul-int/lit8 v1, v1, 0x6e

    div-int/lit16 v1, v1, 0x438

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setGravity(I)V

    .line 132
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setAlartClickListener(Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->alartDialogClick:Lcom/tzh/wifi/wificam/view/dialog/AlartDialog$AlartDialogClick;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSingleButton()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->frgCancel:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/dialog/AlartDialog;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
