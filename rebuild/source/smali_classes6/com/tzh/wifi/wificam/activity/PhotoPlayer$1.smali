.class Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;
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

    .line 106
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 109
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    const-class v1, Lcom/tzh/wifi/wificam/activity/FilterActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->access$000(Lcom/tzh/wifi/wificam/activity/PhotoPlayer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newImage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoPlayer$1;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoPlayer;

    const/16 v1, 0x19a5

    invoke-virtual {v0, p1, v1}, Lcom/tzh/wifi/wificam/activity/PhotoPlayer;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
