.class Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FilesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public imgDel:Landroid/widget/ImageView;

.field public imgPic:Landroid/widget/ImageView;

.field public imgUpload:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

.field public tvName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->this$0:Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgPic:Landroid/widget/ImageView;

    .line 241
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgDel:Landroid/widget/ImageView;

    .line 242
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->imgUpload:Landroid/widget/ImageView;

    .line 243
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$1;)V
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter$ViewHolder;-><init>(Lcom/tzh/wifi/wificam/presenter/adapter/FilesAdapter;)V

    return-void
.end method
