.class Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;
.super Ljava/lang/Object;
.source "WiFiPresenter.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->detect([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 609
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$500(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$500(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 614
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {p1, v2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$402(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;Z)Z

    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$3;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$608(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;)J

    .line 620
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v3, 0xe0

    .line 621
    invoke-static {v0, v3, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 622
    sget-object v4, Lcom/tzh/wifi/wificam/activity/PlayActivity;->classifier:Lcom/yuan/ImageClassifier;

    invoke-virtual {v4, v3, v1}, Lcom/yuan/ImageClassifier;->classifyFrame(Landroid/graphics/Bitmap;Landroid/text/SpannableStringBuilder;)V

    .line 627
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 628
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 630
    const-string v0, "amlan"

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 633
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 634
    const-string v2, "token"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
