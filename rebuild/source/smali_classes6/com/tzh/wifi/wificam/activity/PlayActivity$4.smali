.class Lcom/tzh/wifi/wificam/activity/PlayActivity$4;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1177
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1180
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Constance recive a message!"

    const-wide/16 v3, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1182
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->faceDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1183
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1186
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->faceDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1187
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1191
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    .line 1192
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$600(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 1193
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-boolean v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-virtual {v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v2

    iget v2, v2, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    mul-int/lit16 v2, v2, 0xb4

    invoke-virtual {v0, v1, v2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->onAutoPhotoClick(ZI)V

    .line 1195
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$310(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    return-void
.end method
