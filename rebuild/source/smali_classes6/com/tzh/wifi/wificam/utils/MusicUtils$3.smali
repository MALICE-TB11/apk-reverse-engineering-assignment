.class Lcom/tzh/wifi/wificam/utils/MusicUtils$3;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/utils/MusicUtils;->play(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/utils/MusicUtils;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/utils/MusicUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/MusicUtils$3;->this$0:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 113
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/MusicUtils$3;->this$0:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/MusicUtils;->onMusicPlayListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/MusicUtils$3;->this$0:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/MusicUtils;->onMusicPlayListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/MusicUtils$3;->this$0:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/MusicUtils;->onMusicPlayListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/interfaces/OnMusicPlayListener;

    .line 115
    invoke-interface {v0}, Lcom/tzh/wifi/wificam/interfaces/OnMusicPlayListener;->onCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method
