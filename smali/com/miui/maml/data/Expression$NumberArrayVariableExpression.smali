.class Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$ArrayVariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberArrayVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/Expression$ArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 410
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->isNull(I)Z

    move-result v0

    return v0
.end method
