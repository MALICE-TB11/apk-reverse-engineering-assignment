.class Lcom/tzh/wifi/wificam/media/Media$1;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/media/Media;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/media/Media;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/media/Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/tzh/wifi/wificam/media/Media$1;->this$0:Lcom/tzh/wifi/wificam/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/media/Media$1;->this$0:Lcom/tzh/wifi/wificam/media/Media;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/media/Media;->access$000(Lcom/tzh/wifi/wificam/media/Media;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 34
    iget-object v0, p0, Lcom/tzh/wifi/wificam/media/Media$1;->this$0:Lcom/tzh/wifi/wificam/media/Media;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/media/Media;->access$000(Lcom/tzh/wifi/wificam/media/Media;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 36
    const-string v1, ""

    const-string v2, "music error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
