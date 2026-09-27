.class Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterList;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterList"
.end annotation


# instance fields
.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    .line 354
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object p1, p0, Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
