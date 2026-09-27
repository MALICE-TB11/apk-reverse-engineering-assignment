.class public Lcom/tzh/wifi/wificam/bean/MessageWrap;
.super Ljava/lang/Object;
.source "MessageWrap.java"


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tzh/wifi/wificam/bean/MessageWrap;->message:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/tzh/wifi/wificam/bean/MessageWrap;
    .locals 1

    .line 8
    new-instance v0, Lcom/tzh/wifi/wificam/bean/MessageWrap;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/bean/MessageWrap;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
