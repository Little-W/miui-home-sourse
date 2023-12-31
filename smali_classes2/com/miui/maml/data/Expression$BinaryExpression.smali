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

    .line 647
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 645
    sget-object v0, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    iput-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 648
    iput-object p1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    .line 649
    iput-object p2, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    .line 650
    iput-object p3, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    .line 651
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    sget-object p1, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    if-ne p0, p1, :cond_0

    .line 652
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BinaryExpression: invalid operator:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expression"

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 1

    .line 777
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    .line 778
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    .line 779
    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, p1}, Lcom/miui/maml/data/Expression;->accept(Lcom/miui/maml/data/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate()D
    .locals 9

    .line 658
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

    const-string p0, "Expression"

    const-string v0, "fail to evalute BinaryExpression, invalid operator"

    .line 699
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3

    .line 696
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpg-double p0, v5, v7

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    return-wide v1

    .line 694
    :pswitch_1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpg-double p0, v5, v7

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    return-wide v1

    .line 692
    :pswitch_2
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double p0, v5, v7

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v1, v3

    :goto_2
    return-wide v1

    .line 690
    :pswitch_3
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double p0, v5, v7

    if-lez p0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v1, v3

    :goto_3
    return-wide v1

    .line 688
    :pswitch_4
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-gtz v0, :cond_5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double p0, v5, v3

    if-lez p0, :cond_4

    goto :goto_4

    :cond_4
    move-wide v1, v3

    :cond_5
    :goto_4
    return-wide v1

    .line 686
    :pswitch_5
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double v0, v5, v3

    if-lez v0, :cond_6

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    cmpl-double p0, v5, v3

    if-lez p0, :cond_6

    goto :goto_5

    :cond_6
    move-wide v1, v3

    :goto_5
    return-wide v1

    .line 684
    :pswitch_6
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double p0, v5, v7

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move-wide v1, v3

    :goto_6
    return-wide v1

    .line 682
    :pswitch_7
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    cmpl-double p0, v5, v7

    if-nez p0, :cond_8

    goto :goto_7

    :cond_8
    move-wide v1, v3

    :goto_7
    return-wide v1

    .line 679
    :pswitch_8
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int p0, v2

    shr-long/2addr v0, p0

    long-to-double v0, v0

    return-wide v0

    .line 677
    :pswitch_9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int p0, v2

    shl-long/2addr v0, p0

    long-to-double v0, v0

    return-wide v0

    .line 675
    :pswitch_a
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 673
    :pswitch_b
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    or-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 671
    :pswitch_c
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    .line 668
    :pswitch_d
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    rem-double/2addr v0, v2

    return-wide v0

    .line 666
    :pswitch_e
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0

    .line 664
    :pswitch_f
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 660
    :pswitch_10
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0

    .line 662
    :cond_9
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

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
    .locals 4

    .line 757
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    .line 759
    sget-object v2, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    const-string p0, "Expression"

    const-string v0, "fail to evalute string BinaryExpression, invalid operator"

    .line 771
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    .line 768
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNull()Z
    .locals 4

    .line 738
    sget-object v0, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    return v2

    .line 749
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 741
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result p0

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 4

    .line 705
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    sget-object v1, Lcom/miui/maml/data/Expression$Ope;->INVALID:Lcom/miui/maml/data/Expression$Ope;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    .line 706
    iget-object v0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp1:Lcom/miui/maml/data/Expression;

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mExp2:Lcom/miui/maml/data/Expression;

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 709
    sget-object v3, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Ope:[I

    iget-object p0, p0, Lcom/miui/maml/data/Expression$BinaryExpression;->mOpe:Lcom/miui/maml/data/Expression$Ope;

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression$Ope;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    const/4 v3, 0x5

    if-eq p0, v3, :cond_2

    const/4 v3, 0x6

    if-eq p0, v3, :cond_1

    const/4 v3, 0x7

    if-eq p0, v3, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2

    .line 718
    :cond_1
    :try_start_1
    sget-object p0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, v1, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v2

    .line 715
    :cond_2
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 711
    :cond_3
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 713
    :cond_4
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const-string p0, "Expression"

    const-string v0, "fail to PRECISE evalute BinaryExpression, invalid operator"

    .line 732
    invoke-static {p0, v0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
