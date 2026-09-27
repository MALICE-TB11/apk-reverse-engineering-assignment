.class Lcom/tzh/wifi/wificam/utils/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tzh/wifi/wificam/utils/AppUtils;->getAllLocalFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tzh/wifi/wificam/utils/FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tzh/wifi/wificam/utils/FileInfo;Lcom/tzh/wifi/wificam/utils/FileInfo;)I
    .locals 0

    .line 341
    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/utils/FileInfo;->getFilename()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/utils/FileInfo;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 339
    check-cast p1, Lcom/tzh/wifi/wificam/utils/FileInfo;

    check-cast p2, Lcom/tzh/wifi/wificam/utils/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/utils/AppUtils$1;->compare(Lcom/tzh/wifi/wificam/utils/FileInfo;Lcom/tzh/wifi/wificam/utils/FileInfo;)I

    move-result p1

    return p1
.end method
