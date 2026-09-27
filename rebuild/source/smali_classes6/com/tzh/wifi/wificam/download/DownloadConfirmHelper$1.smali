.class Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper$1;
.super Ljava/lang/Object;
.source "DownloadConfirmHelper.java"

# interfaces
.implements Lcom/unad/sdk/listener/UNADDownloadConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadConfirm(Landroid/app/Activity;ILjava/lang/String;Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;)V
    .locals 0

    .line 15
    new-instance p2, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;

    invoke-direct {p2, p1, p3, p4}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unad/sdk/listener/UNADDownloadConfirmCallBack;)V

    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/download/DownloadApkConfirmDialogWebView;->show()V

    return-void
.end method
