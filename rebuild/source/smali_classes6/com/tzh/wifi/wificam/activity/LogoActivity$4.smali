.class Lcom/tzh/wifi/wificam/activity/LogoActivity$4;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/LogoActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;


# direct methods
.method constructor <init>(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivacyAccepted()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    const-class v1, Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v0, v1}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$200(Lcom/tzh/wifi/wificam/activity/LogoActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public onPrivacyRejected()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$4;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->finish()V

    return-void
.end method
