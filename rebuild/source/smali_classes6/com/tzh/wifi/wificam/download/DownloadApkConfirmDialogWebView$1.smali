.class Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$1;
.super Ljava/lang/Object;
.source "DownloadApkConfirmDialogWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$1;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$1;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
