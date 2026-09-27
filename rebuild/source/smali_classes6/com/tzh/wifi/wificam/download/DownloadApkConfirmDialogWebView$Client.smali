.class Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;
.super Landroid/webkit/WebViewClient;
.source "DownloadApkConfirmDialogWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Client"
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

    .line 170
    iput-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$000(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$100(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$200(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$300(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 183
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "doConfirmWithInfo onReceivedError:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConfirmDialogWebView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$002(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;Z)Z

    .line 186
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$100(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$300(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$200(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/Button;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$200(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/Button;

    move-result-object p1

    const-string p3, "\u91cd\u65b0\u52a0\u8f7d"

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;->this$0:Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->access$200(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
