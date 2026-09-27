.class Lcom/tzh/wifi/wificam/utils/UICrashHandler$2;
.super Ljava/lang/Thread;
.source "UICrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/utils/UICrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/utils/UICrashHandler;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/utils/UICrashHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/UICrashHandler$2;->this$0:Lcom/tzh/wifi/wificam/utils/UICrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 147
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/UICrashHandler$2;->this$0:Lcom/tzh/wifi/wificam/utils/UICrashHandler;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/UICrashHandler;->access$000(Lcom/tzh/wifi/wificam/utils/UICrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "App error!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
