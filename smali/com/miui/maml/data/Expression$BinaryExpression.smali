.class Lcom/miui/maml/data/Expression$BinaryExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation


# instance fields
.field private mExp1:Lcom/miui/maml/data/Expression;

.field private mExp2:Lcom/miui/maml/data/Expression;

.field private mOpe:Lcom/miui/maml/data/Expression$Ope;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 567
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 570
    iput-object p1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 571
    iput-object p2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 572
    iput-object p3, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 573
    iget-object p1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    sget-object p2, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    if-ne p1, p2, :cond_0

    const-string p1, "Expression"

    .line 574
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BinaryExpression: invalid operator:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 1

    .line 699
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 700
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 701
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate()D
    .locals 9

    .line 580
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Expression"

    const-string v1, "fail to evalute BinaryExpression, invalid operator"

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v3

    .line 618
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    return-wide v1

    .line 616
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    return-wide v1

    .line 614
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    return-wide v1

    .line 612
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v1, v3

    :goto_3
    return-wide v1

    .line 610
    :pswitch_4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    move-wide v1, v3

    :cond_5
    :goto_4
    return-wide v1

    .line 608
    :pswitch_5
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    move-wide v1, v3

    :goto_5
    return-wide v1

    .line 606
    :pswitch_6
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move-wide v1, v3

    :goto_6
    return-wide v1

    .line 604
    :pswitch_7
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double v0, v5, v7

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    move-wide v1, v3

    :goto_7
    return-wide v1

    .line 601
    :pswitch_8
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 599
    :pswitch_9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 597
    :pswitch_a
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 595
    :pswitch_b
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    or-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 593
    :pswitch_c
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 590
    :pswitch_d
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    rem-double/2addr v0, v2

    return-wide v0

    .line 588
    :pswitch_e
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0

    .line 586
    :pswitch_f
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 582
    :pswitch_10
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0

    .line 584
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 5

    .line 679
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 681
    sget-object v2, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object v3, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    const-string v0, "Expression"

    const-string v1, "fail to evalute string BinaryExpression, invalid operator"

    .line 693
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    .line 690
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .locals 3

    .line 660
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return v2

    .line 671
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 663
    :cond_2
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 5

    .line 627
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 628
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 631
    sget-object v3, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object v4, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 646
    :pswitch_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    .line 640
    :pswitch_1
    :try_start_1
    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v2

    .line 637
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 633
    :pswitch_3
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 635
    :cond_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Expression"

    const-string v1, "fail to PRECISE evalute BinaryExpression, invalid operator"

    .line 654
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
