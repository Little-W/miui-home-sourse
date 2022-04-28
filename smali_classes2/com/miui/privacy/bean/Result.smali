.class public Lcom/miui/privacy/bean/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private head:Lcom/miui/privacy/bean/Head;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/miui/privacy/bean/Result;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getHead()Lcom/miui/privacy/bean/Head;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/privacy/bean/Result;->head:Lcom/miui/privacy/bean/Head;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/privacy/bean/Result;->data:Ljava/lang/String;

    return-void
.end method

.method public setHead(Lcom/miui/privacy/bean/Head;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/miui/privacy/bean/Result;->head:Lcom/miui/privacy/bean/Head;

    return-void
.end method
