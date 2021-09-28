.class Lcom/miui/maml/data/Expression$StringArrayVariableExpression;
.super Lcom/miui/maml/data/Expression$ArrayVariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringArrayVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/data/Expression$ArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    iget-object v1, p0, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;->mIndexExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->isNull(I)Z

    move-result v0

    return v0
.end method
