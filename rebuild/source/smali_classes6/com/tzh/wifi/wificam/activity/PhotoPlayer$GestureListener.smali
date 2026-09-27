.class Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/activity/PhotoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


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

    .line 317
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;-><init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p4, v0

    .line 324
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 325
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 326
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 327
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    .line 330
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$600(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$GestureListener;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$700(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
