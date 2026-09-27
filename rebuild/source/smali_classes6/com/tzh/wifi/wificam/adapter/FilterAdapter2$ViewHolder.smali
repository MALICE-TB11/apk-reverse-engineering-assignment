.class Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;
.super Ljava/lang/Object;
.source "FilterAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field filterName:Landroid/widget/TextView;

.field frameLayout:Landroid/widget/FrameLayout;

.field smallFilter:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->this$0:Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0a36

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->smallFilter:Landroid/widget/ImageView;

    const p1, 0x7f0a0301

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->frameLayout:Landroid/widget/FrameLayout;

    const p1, 0x7f0a02e6

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2$ViewHolder;->filterName:Landroid/widget/TextView;

    .line 94
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
