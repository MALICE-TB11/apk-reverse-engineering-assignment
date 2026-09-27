.class Lcom/tzh/wifi/wificam/activity/PlayActivity$5;
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

    .line 1199
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1202
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1204
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handSnapDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f0048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1207
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handSnapDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1212
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$600(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 1213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$702(J)J

    .line 1214
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$802(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z

    .line 1216
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$310(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    return-void
.end method
