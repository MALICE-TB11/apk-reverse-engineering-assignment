.class public Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MusicSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public final confirm:Landroid/widget/Button;

.field public final duration:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final play:Landroid/widget/ImageView;

.field public final position:Landroid/widget/TextView;

.field public final song:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;Landroid/view/View;)V
    .locals 2
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

    .line 51
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    .line 52
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 53
    iget p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->type:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const p1, 0x7f0a03a2

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->position:Landroid/widget/TextView;

    const p1, 0x7f0a03a4

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->song:Landroid/widget/TextView;

    const p1, 0x7f0a03a1

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const p1, 0x7f0a03a5

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->play:Landroid/widget/ImageView;

    const p1, 0x7f0a03a0

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->confirm:Landroid/widget/Button;

    .line 59
    iput-object v1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 62
    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p2

    iget-object p2, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConfirm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const p1, 0x7f0a03a9

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->position:Landroid/widget/TextView;

    const p1, 0x7f0a03aa

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->song:Landroid/widget/TextView;

    const p1, 0x7f0a03a7

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    const p1, 0x7f0a03ab

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->play:Landroid/widget/ImageView;

    const p1, 0x7f0a03a8

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0a03a6

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;->confirm:Landroid/widget/Button;

    .line 73
    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p2

    iget-object p2, p2, Lcom/tzh/wifi/wificam/utils/StringUtils;->strConfirm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
