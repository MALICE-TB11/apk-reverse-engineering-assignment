.class Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;
.super Ljava/lang/Object;
.source "WiFiPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
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

    .line 565
    iput-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$402(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;Z)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 588
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$402(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;Z)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 565
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;->onNext(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onNext(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 583
    iget-object p1, p0, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter$2;->this$0:Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->access$402(Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;Z)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
