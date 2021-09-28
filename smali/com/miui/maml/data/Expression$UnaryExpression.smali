.class Lcom/miui/maml/data/Expression$UnaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation


# instance fields
.field private mExp:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 2

    .line 599
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 597
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 600
    iput-object p1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    .line 601
    iput-object p2, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 602
    iget-object p1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    if-ne p1, v0, :cond_0

    const-string p1, "Expression"

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnaryExpression: invalid operator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 1

    .line 634
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 635
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate()D
    .locals 5

    .line 609
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object v1, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Expression"

    const-string v1, "fail to evalute UnaryExpression, invalid operator"

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    .line 615
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    not-int v0, v0

    int-to-double v0, v0

    return-wide v0

    .line 613
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_0
    return-wide v1

    .line 611
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    sub-double/2addr v1, v3

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 629
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$UnaryExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/miui/maml/data/Expression$UnaryExpression;->mExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
