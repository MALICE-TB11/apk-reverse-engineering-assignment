.class public Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;
.super Ljava/lang/Object;
.source "AnimationPath.java"


# instance fields
.field private lineLen:F

.field private mPonters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineLen:F

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineLen:F

    .line 34
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getEndPoint()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    return-object v0
.end method

.method public getPathLen()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineLen:F

    return v0
.end method

.method public getPoints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    return-object v0
.end method

.method public getStart()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    return-object v0
.end method

.method public lineTo(II)V
    .locals 8

    .line 28
    iget v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineLen:F

    float-to-double v0, v0

    int-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    int-to-double v6, p2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->lineLen:F

    .line 29
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->lineTo(II)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveTo(II)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/pathdraw/AnimationPath;->mPonters:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->moveTo(II)Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
