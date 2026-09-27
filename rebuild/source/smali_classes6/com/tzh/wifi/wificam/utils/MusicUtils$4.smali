.class Lcom/tzh/wifi/wificam/utils/MusicUtils$4;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 120
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/MusicUtils$4;->this$0:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 122
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
