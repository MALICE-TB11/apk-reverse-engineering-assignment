.class public Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;
.super Ljava/lang/Object;
.source "DownloadConfirmHelper.java"


# static fields
.field public static final DOWNLOAD_CONFIRM_LISTENER:Lcom/unad/sdk/listener/UNADDownloadConfirmListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper$1;

    invoke-direct {v0}, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper$1;-><init>()V

    sput-object v0, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;->DOWNLOAD_CONFIRM_LISTENER:Lcom/unad/sdk/listener/UNADDownloadConfirmListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
