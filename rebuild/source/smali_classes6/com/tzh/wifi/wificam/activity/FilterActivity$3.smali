.class Lcom/tzh/wifi/wificam/activity/FilterActivity$3;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/FilterActivity;->initFilter(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

.field final synthetic val$filters:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/FilterActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    iput-object p2, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->val$filters:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->access$200(Lcom/tzh/wifi/wificam/activity/FilterActivity;)Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->getSelectFilter()I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 151
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->access$200(Lcom/tzh/wifi/wificam/activity/FilterActivity;)Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->setSelectFilter(I)V

    .line 152
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->access$200(Lcom/tzh/wifi/wificam/activity/FilterActivity;)Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tzh/wifi/wificam/adapter/FilterAdapter2;->setSelected(I)V

    .line 153
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->val$filters:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tzh/wifi/wificam/bean/FilterEffect;

    .line 154
    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/bean/FilterEffect;->getType()Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;->createFilterForType(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;)Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$3;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-static {p2}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->access$300(Lcom/tzh/wifi/wificam/activity/FilterActivity;)Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    :cond_0
    return-void
.end method
