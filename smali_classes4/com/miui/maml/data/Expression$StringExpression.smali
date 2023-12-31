.class Lcom/miui/maml/data/Expression$StringExpression;
.super Lcom/miui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringExpression"
.end annotation


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 574
    iput-object p1, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

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
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    return-object p0
.end method
