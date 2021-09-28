.class public Lcom/miui/maml/data/Expression$NumberExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberExpression"
.end annotation


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 532
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 533
    iput-wide p1, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 536
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Expression"

    const-string v0, "invalid NumberExpression: null"

    .line 538
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    goto :goto_0

    .line 545
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Expression"

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid NumberExpression:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .line 558
    iget-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    return-wide v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 564
    iget-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(D)V
    .locals 0

    .line 553
    iput-wide p1, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    return-void
.end method
