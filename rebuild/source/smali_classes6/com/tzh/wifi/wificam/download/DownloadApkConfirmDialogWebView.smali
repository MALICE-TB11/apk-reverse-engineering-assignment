.class public Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;
.super Landroid/app/Dialog;
.source "DownloadApkConfirmDialogWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;
    }
.end annotation


# static fields
.field private static final LOAD_ERROR_TEXT:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u5e94\u7528\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

.field private static final RELOAD_TEXT:Ljava/lang/String; = "\u91cd\u65b0\u52a0\u8f7d"

.field private static final TAG:Ljava/lang/String; = "ConfirmDialogWebView"


# instance fields
.field private callBack:Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;

.field private close:Landroid/widget/ImageView;

.field private confirm:Landroid/widget/Button;

.field private contentHolder:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private loadingBar:Landroid/widget/ProgressBar;

.field private orientation:I

.field private reloadButton:Landroid/widget/Button;

.field private url:Ljava/lang/String;

.field private urlLoadError:Z

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;)V
    .locals 1

    const v0, 0x7f1300db

    .line 49
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->urlLoadError:Z

    .line 50
    iput-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->context:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->callBack:Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;

    .line 52
    iput-object p2, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->url:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->orientation:I

    const/4 p1, 0x1

    .line 54
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->setCanceledOnTouchOutside(Z)V

    .line 56
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->urlLoadError:Z

    return p0
.end method

.method static synthetic access$002(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->urlLoadError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->loadingBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->reloadButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)Landroid/view/ViewGroup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->contentHolder:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private createTextView()V
    .locals 3

    const v0, 0x7f0a027a

    .line 79
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 80
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->webView:Landroid/webkit/WebView;

    .line 81
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;

    invoke-direct {v2, p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$Client;-><init>(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0d00bd

    .line 60
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->setContentView(I)V

    const v0, 0x7f0a027d

    .line 61
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    iget v1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0805db

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x7f0805da

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    const v0, 0x7f0a0277

    .line 67
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->close:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027c

    .line 69
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->reloadButton:Landroid/widget/Button;

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0278

    .line 71
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->confirm:Landroid/widget/Button;

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a027b

    .line 73
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->loadingBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0279

    .line 74
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->contentHolder:Landroid/view/ViewGroup;

    .line 75
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->createTextView()V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->loadingBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->contentHolder:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->reloadButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->reloadButton:Landroid/widget/Button;

    const-string v0, "\u62b1\u6b49\uff0c\u5e94\u7528\u4fe1\u606f\u83b7\u53d6\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->reloadButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 104
    :cond_0
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->urlLoadError:Z

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download confirm load url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmDialogWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 165
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->callBack:Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v0}, Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;->onCancel()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->close:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 147
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->callBack:Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;

    if-eqz p1, :cond_0

    .line 148
    invoke-interface {p1}, Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;->onCancel()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->dismiss()V

    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->confirm:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 152
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->callBack:Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;

    if-eqz p1, :cond_2

    .line 153
    invoke-interface {p1}, Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;->onConfirm()V

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->dismiss()V

    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->reloadButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 157
    iget-object p1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->loadUrl(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected onStart()V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/PxUtils;->getDeviceHeightInPixel(Landroid/content/Context;)I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tzh/wifi/wificam/utils/PxUtils;->getDeviceWidthInPixel(Landroid/content/Context;)I

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 116
    iget v4, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->orientation:I

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v4, v5, :cond_0

    .line 117
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-double v0, v0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double v0, v0, v4

    double-to-int v0, v0

    .line 118
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 119
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x7f1300da

    .line 120
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v4, v0, :cond_1

    int-to-double v0, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v4

    double-to-int v0, v0

    .line 122
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 123
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x5

    .line 124
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x7f1300d9

    .line 125
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :cond_1
    :goto_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 128
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    new-instance v0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView$1;-><init>(Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;)V

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
