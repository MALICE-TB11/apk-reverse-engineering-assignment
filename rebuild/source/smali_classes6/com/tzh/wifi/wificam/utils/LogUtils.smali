.class public Lcom/tzh/wifi/wificam/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# instance fields
.field private className:Ljava/lang/String;

.field private debug:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->debug:Z

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    return-void
.end method

.method public static setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/tzh/wifi/wificam/utils/LogUtils;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/tzh/wifi/wificam/utils/LogUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/LogUtils;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->debug:Z

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/LogUtils;->className:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
