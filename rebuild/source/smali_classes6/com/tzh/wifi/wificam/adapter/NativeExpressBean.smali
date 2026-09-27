.class public Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;
.super Ljava/lang/Object;
.source "NativeExpressBean.java"


# instance fields
.field private ad:Landroid/view/View;

.field private desc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;->ad:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;->desc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAd()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;->ad:Landroid/view/View;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public setAd(Landroid/view/View;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;->ad:Landroid/view/View;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tzh/wifi/wificam/adapter/NativeExpressBean;->desc:Ljava/lang/String;

    return-void
.end method
