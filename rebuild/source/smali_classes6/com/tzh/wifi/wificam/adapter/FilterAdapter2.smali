.class public Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;
.super Landroid/widget/BaseAdapter;
.source "FilterAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;
    }
.end annotation


# instance fields
.field private filterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private selectFilter:I

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->selectFilter:I

    .line 41
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->filterList:Ljava/util/List;

    return-void
.end method

.method private bindData(Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;I)V
    .locals 3

    .line 74
    sget-object v0, Lcom/tzh/wifi/wificam/utils/DataHandler;->filters:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    .line 75
    iget-object v1, p1, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->smallFilter:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->filterList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    iget-object v1, p1, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->filterName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/bean/FilterEffect;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget v0, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->selectedPosition:I

    if-ne p2, v0, :cond_0

    .line 78
    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->frameLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600c5

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void

    .line 80
    :cond_0
    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->frameLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600bf

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->filterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->filterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->filterList:Ljava/util/List;

    return-object v0
.end method

.method public getSelectFilter()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->selectFilter:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d00fd

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance p3, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;

    invoke-direct {p3, p0, p2}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;-><init>(Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;Landroid/view/View;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;

    .line 69
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->bindData(Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;I)V

    return-object p2
.end method

.method public setSelectFilter(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->selectFilter:I

    return-void
.end method

.method public setSelected(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->selectedPosition:I

    .line 100
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->notifyDataSetChanged()V

    return-void
.end method
