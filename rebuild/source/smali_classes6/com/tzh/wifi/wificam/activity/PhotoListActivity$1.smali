.class Lcom/tzh/wifi/wificam/activity/PhotoListActivity$1;
.super Ljava/lang/Object;
.source "PhotoListActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->PhotoFilter(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PhotoListActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/PhotoListActivity;

    invoke-static {v0, p1}, Lcom/tzh/wifi/wificam/activity/PhotoListActivity;->access$000(Lcom/tzh/wifi/wificam/activity/PhotoListActivity;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
