.class public Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;
.super Ljava/lang/Object;
.source "PathViewer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;


# direct methods
.method public constructor <init>(Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer$MyRenderer;->this$0:Lcom/tzh/wifi/wificam/view/pathdraw/PathViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method
