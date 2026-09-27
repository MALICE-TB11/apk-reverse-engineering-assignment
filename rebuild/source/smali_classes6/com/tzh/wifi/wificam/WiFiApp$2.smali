.class Lcom/tzh/wifi/wificam/WiFiApp$2;
.super Ljava/lang/Object;
.source "WiFiApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/WiFiApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/WiFiApp;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/WiFiApp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lcom/tzh/wifi/wificam/WiFiApp$2;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 212
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/WiFiApp$2;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/WiFiApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 213
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    .line 215
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->discCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 216
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->enableLogging()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 220
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp$2;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    .line 221
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp$2;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/tzh/wifi/wificam/WiFiApp$2;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getLan(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/StringUtils;->changeLan(I)V

    .line 222
    iget-object v0, p0, Lcom/tzh/wifi/wificam/WiFiApp$2;->this$0:Lcom/tzh/wifi/wificam/WiFiApp;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/WiFiApp;->access$100(Lcom/tzh/wifi/wificam/WiFiApp;)V

    return-void
.end method
