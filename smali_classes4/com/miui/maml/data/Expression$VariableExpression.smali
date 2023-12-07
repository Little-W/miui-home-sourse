.class abstract Lcom/miui/maml/data/Expression$VariableExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "VariableExpression"
.end annotation


# instance fields
.field protected mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V
    .locals 1

    .line 325
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 326
    iput-object p2, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    .line 327
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    invoke-direct {p2, v0, p1, p3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getIndex()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/miui/maml/data/Expression$VariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getVersion()I

    move-result p0

    return p0
.end method
