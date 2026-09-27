.class public Lcom/tzh/wifi/wificam/view/pathdraw/PathEvaluator;
.super Ljava/lang/Object;
.source "PathEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/tzh/wifi/wificam/view/pathdraw/PathPoint;Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 3

    .line 17
    iget v0, p3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    iget v0, p2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    int-to-float v0, v0

    iget v1, p3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    iget v2, p2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 20
    iget v1, p2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    int-to-float v1, v1

    iget p3, p3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    iget p2, p2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    goto :goto_0

    .line 22
    :cond_0
    iget p1, p3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    int-to-float v0, p1

    .line 23
    iget p1, p3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    int-to-float v1, p1

    :goto_0
    float-to-int p1, v0

    float-to-int p2, v1

    .line 25
    invoke-static {p1, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->moveTo(II)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 9
    check-cast p2, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    check-cast p3, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/view/pathdraw/PathEvaluator;->evaluate(FLcom/tzh/wifi/wificam/view/pathdraw/PathPoint;Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object p1

    return-object p1
.end method
