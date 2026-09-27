.class public Lcom/tzh/wifi/wificam/base/BasePlayer;
.super Landroid/widget/VideoView;
.source "BasePlayer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 15
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/base/BasePlayer;->getDefaultSize(II)I

    move-result p1

    .line 17
    invoke-static {v0, p2}, Lcom/tzh/wifi/wificam/base/BasePlayer;->getDefaultSize(II)I

    move-result p2

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/base/BasePlayer;->setMeasuredDimension(II)V

    return-void
.end method
