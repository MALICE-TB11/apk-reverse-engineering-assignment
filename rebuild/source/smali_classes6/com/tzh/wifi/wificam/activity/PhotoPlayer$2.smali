.class Lcom/tzh/wifi/wificam/activity/PhotoPlayer$2;
.super Ljava/lang/Object;
.source "PhotoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$2;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$2;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {p1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$100(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)V

    return-void
.end method
