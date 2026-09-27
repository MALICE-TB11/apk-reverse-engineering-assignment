.class public final enum Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;
.super Ljava/lang/Enum;
.source "TimeFormater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tzh/wifi/wificam/utils/TimeFormater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum DAY:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum HOUR:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum MIN:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum MONTH:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum SEC:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum TIME:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

.field public static final enum YEAR:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;


# direct methods
.method private static synthetic $values()[Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;
    .locals 3

    const/4 v0, 0x7

    .line 19
    new-array v0, v0, [Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->YEAR:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->MONTH:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->DAY:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->HOUR:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->MIN:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->SEC:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->TIME:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "YEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->YEAR:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 21
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "MONTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->MONTH:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 22
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "DAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->DAY:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 23
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "HOUR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->HOUR:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 24
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "MIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->MIN:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 25
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "SEC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->SEC:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 26
    new-instance v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    const-string v1, "TIME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->TIME:Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    .line 19
    invoke-static {}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->$values()[Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    move-result-object v0

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->$VALUES:[Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 19
    const-class v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    return-object p0
.end method

.method public static values()[Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;
    .locals 1

    .line 19
    sget-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->$VALUES:[Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    invoke-virtual {v0}, [Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;

    return-object v0
.end method
