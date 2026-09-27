.class Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;
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

    .line 145
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iput p2, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;->this$0:Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;

    iget-object p1, p1, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter;->onMusicItemClickListener:Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;

    iget v0, p0, Lcom/tzh/wifi/wificam/adapter/MusicSelectAdapter$2;->val$i:I

    invoke-interface {p1, v0}, Lcom/tzh/wifi/wificam/interfaces/OnMusicItemClickListener;->onConfirm(I)V

    :cond_0
    return-void
.end method
