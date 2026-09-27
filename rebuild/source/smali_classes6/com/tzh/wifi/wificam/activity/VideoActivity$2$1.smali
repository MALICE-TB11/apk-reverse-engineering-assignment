.class Lcom/tzh/wifi/wificam/activity/VideoActivity$2$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/VideoActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tzh/wifi/wificam/activity/VideoActivity$2;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/VideoActivity$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2$1;->this$1:Lcom/tzh/wifi/wificam/activity/VideoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 266
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2$1;->this$1:Lcom/tzh/wifi/wificam/activity/VideoActivity$2;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/activity/VideoActivity$2;->this$0:Lcom/tzh/wifi/wificam/activity/VideoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$000(Lcom/tzh/wifi/wificam/activity/VideoActivity;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 269
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$700()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 270
    div-int/lit16 v1, v0, 0xe10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    div-int/lit8 v2, v0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "%02d:%02d:%02d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {}, Lcom/tzh/wifi/wificam/activity/VideoActivity;->access$800()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
