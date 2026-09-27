.class Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PhotoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/PhotoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;


# direct methods
.method private constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;)V
    .locals 0

    .line 304
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$432(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;F)F

    .line 308
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$400(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$402(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;F)F

    .line 309
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$500(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$400(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 310
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$500(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$ScaleListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$400(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    const/4 p1, 0x1

    return p1
.end method
