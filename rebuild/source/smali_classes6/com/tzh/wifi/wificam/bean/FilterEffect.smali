.class public Lcom/tzh/wifi/wificam/bean/FilterEffect;
.super Ljava/lang/Object;
.source "FilterEffect.java"


# instance fields
.field private degree:I

.field private title:Ljava/lang/String;

.field private type:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/tzh/wifi/wificam/bean/FilterEffect;->type:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    .line 13
    iput p3, p0, Lcom/tzh/wifi/wificam/bean/FilterEffect;->degree:I

    .line 14
    iput-object p1, p0, Lcom/tzh/wifi/wificam/bean/FilterEffect;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDegree()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/tzh/wifi/wificam/bean/FilterEffect;->degree:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/tzh/wifi/wificam/bean/FilterEffect;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tzh/wifi/wificam/bean/FilterEffect;->type:Lcom/tzh/wifi/wificam/utils/GPUImageFilterTools$FilterType;

    return-object v0
.end method
