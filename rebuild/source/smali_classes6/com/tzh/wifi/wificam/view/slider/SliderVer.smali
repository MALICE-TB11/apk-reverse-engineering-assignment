.class public Lcom/tzh/wifi/wificam/view/slider/SliderVer;
.super Landroid/widget/LinearLayout;
.source "SliderVer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private currentTune:I

.field private defaultTune:I

.field private ivBar:Landroid/widget/ImageView;

.field private ivDown:Landroid/widget/ImageView;

.field private ivThumb:Landroid/widget/ImageView;

.field private ivUp:Landroid/widget/ImageView;

.field private listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private mInflater:Landroid/view/LayoutInflater;

.field private maxTune:I

.field private nBarHeight:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->view:Landroid/view/View;

    .line 18
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->mInflater:Landroid/view/LayoutInflater;

    .line 19
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivUp:Landroid/widget/ImageView;

    .line 20
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivDown:Landroid/widget/ImageView;

    .line 21
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    .line 22
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivBar:Landroid/widget/ImageView;

    const/16 v0, 0x10

    .line 23
    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    const/16 v1, 0x1f

    .line 24
    iput v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->maxTune:I

    .line 25
    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->nBarHeight:I

    .line 27
    const-class v0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 28
    iput-object p2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01f0

    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->view:Landroid/view/View;

    .line 34
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->addView(Landroid/view/View;)V

    .line 35
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->widget_init()V

    return-void
.end method

.method private ISliderNotifyDown()V
    .locals 3

    .line 94
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 97
    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    .line 98
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->nBarHeight:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->maxTune:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 99
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 101
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

    if-eqz v0, :cond_1

    .line 103
    iget v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    invoke-interface {v0, p0, v1}, Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;->onSliderNotify(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private ISliderNotifyUp()V
    .locals 4

    .line 75
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 78
    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    .line 79
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->nBarHeight:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->maxTune:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 80
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 82
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

    if-eqz v0, :cond_1

    .line 84
    iget v2, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    invoke-interface {v0, p0, v2}, Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;->onSliderNotify(Landroid/view/View;I)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ISliderNotifyUp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method private widget_init()V
    .locals 2

    const v0, 0x7f0a03be

    .line 39
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivUp:Landroid/widget/ImageView;

    const v0, 0x7f0a03b9

    .line 40
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivDown:Landroid/widget/ImageView;

    const v0, 0x7f0a03c0

    .line 41
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    const v0, 0x7f0a03bf

    .line 42
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivBar:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070938

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->nBarHeight:I

    return-void
.end method


# virtual methods
.method public ISliderCheckOut()V
    .locals 5

    .line 123
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->nBarHeight:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->maxTune:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 127
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    iget v4, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    iput v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    .line 131
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v1, p0, v0}, Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;->onSliderNotify(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ISliderCheckOut(I)V
    .locals 4

    .line 109
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->nBarHeight:I

    iget v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->maxTune:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 113
    iget-object v1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 115
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ivThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iput p1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->currentTune:I

    .line 117
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

    if-eqz p1, :cond_1

    .line 118
    iget v0, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->defaultTune:I

    invoke-interface {p1, p0, v0}, Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;->onSliderNotify(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addSliderListener(Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;I)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->listener:Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;

    .line 53
    invoke-virtual {p0, p2}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ISliderCheckOut(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03b9

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a03be

    if-eq p1, v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ISliderNotifyUp()V

    return-void

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ISliderNotifyDown()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
