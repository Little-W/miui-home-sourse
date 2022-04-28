.class Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;
.super Lcom/miui/maml/data/Expression$VariableExpression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JsonObjectVariableExpression"
.end annotation


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 400
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/maml/data/Expression$VariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v0

    .line 417
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 418
    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    .line 420
    :cond_0
    invoke-super {p0}, Lcom/miui/maml/data/Expression$VariableExpression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;->mIndexedVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->isNull()Z

    move-result v0

    return v0
.end method
