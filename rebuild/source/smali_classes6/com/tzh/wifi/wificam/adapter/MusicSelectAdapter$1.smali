.class Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;
.super Ljava/lang/Object;
.source "MusicSelectAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onBindViewHolder(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;I)V
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

    .line 115
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iput p2, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->mMusicUtils:Lcom/tzh/wifi/wificam/utils/MusicUtils;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/utils/MusicUtils;->isPlaying()Z

    move-result v0

    const v1, 0x7f0801a2

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->imPlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->imPlay:Landroid/widget/ImageView;

    const v2, 0x7f0801a3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget v0, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->lastPosition:I

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    const/4 v2, 0x0

    iput v2, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->lastPosition:I

    .line 125
    check-cast p1, Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iput-object p1, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->imPlay:Landroid/widget/ImageView;

    .line 127
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->imPlay:Landroid/widget/ImageView;

    invoke-interface {p1, v2, v0}, Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;->onPlay(ILandroid/widget/ImageView;)V

    return-void

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    if-eqz p1, :cond_3

    .line 132
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    invoke-interface {p1}, Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;->onPausePlay()V

    return-void

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget v2, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->val$i:I

    iput v2, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->lastPosition:I

    .line 136
    check-cast p1, Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iput-object p1, v0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->imPlay:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    if-eqz p1, :cond_3

    .line 140
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    iget v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->val$i:I

    iget-object v1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$1;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object v1, v1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->imPlay:Landroid/widget/ImageView;

    invoke-interface {p1, v0, v1}, Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;->onPlay(ILandroid/widget/ImageView;)V

    :cond_3
    return-void
.end method
