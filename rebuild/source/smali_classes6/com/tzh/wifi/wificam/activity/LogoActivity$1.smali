.class Lcom/tzh/wifi/wificam/activity/LogoActivity$1;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog$PrivacyAcceptedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/activity/LogoActivity;->checkPrivacyAndInitAd()V
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

    .line 89
    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivacyAccepted()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/LogoActivity$1;->this$0:Lcom/tzh/wifi/wificam/activity/LogoActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/activity/LogoActivity;->access$000(Lcom/tzh/wifi/wificam/activity/LogoActivity;)V

    return-void
.end method

.method public onPrivacyRejected()V
    .locals 2

    .line 99
    const-string v0, "LogoActivityAD"

    const-string v1, "\u7528\u6237\u62d2\u7edd\u9690\u79c1\u653f\u7b56\uff0c\u8df3\u8fc7\u5e7f\u544a\u521d\u59cb\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
