.class Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;
.super Landroid/os/AsyncTask;
.source "ImageCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/ImageCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmallPicTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/utils/ImageCreator;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/utils/ImageCreator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;->this$0:Lcom/tzh/wifi/wificam/utils/ImageCreator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/utils/ImageCreator;Lcom/tzh/wifi/wificam/utils/ImageCreator$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;-><init>(Lcom/tzh/wifi/wificam/utils/ImageCreator;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;->this$0:Lcom/tzh/wifi/wificam/utils/ImageCreator;

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/ImageCreator;->context:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/utils/DataHandler;->getSmallPic(Landroid/content/Context;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/ImageCreator$SmallPicTask;->this$0:Lcom/tzh/wifi/wificam/utils/ImageCreator;

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/ImageCreator;->getSmallImage(Ljava/util/List;)V

    return-void
.end method
