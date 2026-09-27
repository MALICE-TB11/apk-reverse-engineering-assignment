.class Lcom/tzh/wifi/wificam/activity/FilterActivity$2;
.super Ljava/lang/Object;
.source "FilterActivity.java"

# interfaces
.implements Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/FilterActivity;->ButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/FilterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 2

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-static {v1, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->access$100(Lcom/tzh/wifi/wificam/activity/FilterActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "filter_image"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->finish()V

    return-void
.end method
