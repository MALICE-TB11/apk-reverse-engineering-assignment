.class Lcom/tzh/wifi/wificam/activity/PlayActivity$2;
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

    .line 826
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 829
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$008(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    .line 830
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 831
    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v2

    rem-int/2addr v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 832
    div-int/lit8 v2, v0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 v0, v0, 0x3c

    .line 833
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 832
    const-string v0, "%02d:%02d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 834
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$100(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$200(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$200(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/PlayActivity;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRecRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
