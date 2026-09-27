.class Lcom/tzh/wifi/wificam/activity/FilterActivity$1;
.super Lcom/tzh/wifi/wificam/utils/ImageCreator;
.source "FilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/FilterActivity;->loadSmallImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/FilterActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-direct {p0, p2}, Lcom/tzh/wifi/wificam/utils/ImageCreator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSmallImage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/FilterActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/activity/FilterActivity;->access$000(Lcom/tzh/wifi/wificam/activity/FilterActivity;Ljava/util/List;)V

    return-void
.end method
