.class public Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
.super Ljava/lang/Object;
.source "PathPoint.java"


# static fields
.field public static final LINE:I = 0x1

.field public static final POINT:I = 0x0

.field public static final SECOND_CURVE:I = 0x2

.field public static final THIRD_CURVE:I = 0x3


# instance fields
.field public ctrlX:I

.field public ctrlY:I

.field public mAction:I

.field public pointX:I

.field public pointY:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->mAction:I

    .line 19
    iput p2, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    .line 20
    iput p3, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    return-void
.end method

.method public static lineTo(II)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 2

    .line 30
    new-instance v0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;-><init>(III)V

    return-object v0
.end method

.method public static moveTo(II)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 2

    .line 25
    new-instance v0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;-><init>(III)V

    return-object v0
.end method
