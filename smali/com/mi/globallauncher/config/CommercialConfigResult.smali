.class public Lcom/mi/globallauncher/config/CommercialConfigResult;
.super Ljava/lang/Object;
.source "CommercialConfigResult.java"


# instance fields
.field private data:Lcom/mi/globallauncher/config/CommercialConfigData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field

.field private head:Lcom/mi/globallauncher/config/CommercialHead;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/mi/globallauncher/config/CommercialConfigData;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigResult;->data:Lcom/mi/globallauncher/config/CommercialConfigData;

    return-object p0
.end method

.method public getHead()Lcom/mi/globallauncher/config/CommercialHead;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mi/globallauncher/config/CommercialConfigResult;->head:Lcom/mi/globallauncher/config/CommercialHead;

    return-object p0
.end method

.method public setData(Lcom/mi/globallauncher/config/CommercialConfigData;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigResult;->data:Lcom/mi/globallauncher/config/CommercialConfigData;

    return-void
.end method

.method public setHead(Lcom/mi/globallauncher/config/CommercialHead;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/mi/globallauncher/config/CommercialConfigResult;->head:Lcom/mi/globallauncher/config/CommercialHead;

    return-void
.end method
