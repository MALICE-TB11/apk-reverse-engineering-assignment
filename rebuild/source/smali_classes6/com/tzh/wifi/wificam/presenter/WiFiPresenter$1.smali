.class Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;
.super Ljava/lang/Object;
.source "WiFiPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->startYuanRecord(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

.field final synthetic val$iretain:I


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;I)V
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

    .line 527
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    iput p2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->val$iretain:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$002(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;J)J

    const/4 v0, 0x0

    .line 532
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$100(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 533
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$000(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$200(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v1, 0x5

    .line 536
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$002(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;J)J

    .line 543
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$300(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 544
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$300(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 546
    array-length v1, v0

    iget v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->val$iretain:I

    invoke-static {v0, v1, v2}, Lcom/tzh/wifi/utils/Camera;->iYuanProc([BII)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    .line 551
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v2, "### lose frame insert!\n"

    invoke-virtual {v1, v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 552
    array-length v1, v0

    iget v2, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$1;->val$iretain:I

    invoke-static {v0, v1, v2}, Lcom/tzh/wifi/utils/Camera;->iYuanProc([BII)I

    goto :goto_0

    :cond_3
    return-void
.end method
