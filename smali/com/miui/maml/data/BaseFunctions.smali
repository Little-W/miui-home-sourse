.class public Lcom/miui/maml/data/BaseFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/BaseFunctions$NullObjFunction;,
        Lcom/miui/maml/data/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lcom/miui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lcom/miui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V
    .locals 0

    .line 163
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 164
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    return-void
.end method

.method private digit(II)I
    .locals 4

    const/4 v0, -0x1

    if-gtz p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-ne p2, v2, :cond_1

    return v1

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    add-int/lit8 v3, p2, -0x1

    if-ge v1, v3, :cond_2

    .line 382
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 384
    rem-int/lit8 v0, p1, 0xa

    :cond_3
    return v0
.end method

.method public static load()V
    .locals 6

    const-string v0, "rand"

    .line 74
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "sin"

    .line 75
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "cos"

    .line 76
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "tan"

    .line 77
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "asin"

    .line 78
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "acos"

    .line 79
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "atan"

    .line 80
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "sinh"

    .line 81
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "cosh"

    .line 82
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "sqrt"

    .line 83
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "abs"

    .line 84
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "len"

    .line 85
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "eval"

    .line 86
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "preciseeval"

    .line 87
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "round"

    .line 88
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "int"

    .line 89
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "num"

    .line 90
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "isnull"

    .line 92
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "not"

    .line 93
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "min"

    .line 95
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "max"

    .line 96
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "pow"

    .line 97
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "log"

    .line 98
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "log10"

    .line 99
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "digit"

    .line 100
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "eq"

    .line 102
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "ne"

    .line 103
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "ge"

    .line 104
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "gt"

    .line 105
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "le"

    .line 106
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "lt"

    .line 107
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "ifelse"

    .line 108
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "and"

    .line 110
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "or"

    .line 111
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "eqs"

    .line 113
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "substr"

    .line 114
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "hash"

    .line 116
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "nullobj"

    .line 118
    new-instance v1, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;

    invoke-direct {v1}, Lcom/miui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "floor"

    .line 120
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "ceil"

    .line 121
    new-instance v1, Lcom/miui/maml/data/BaseFunctions;

    sget-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions;-><init>(Lcom/miui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 9

    .line 170
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v0, 0x0

    .line 175
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    .line 176
    sget-object v4, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v5, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v5}, Lcom/miui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    packed-switch v4, :pswitch_data_0

    const-string p1, "Expression"

    .line 307
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, Lcom/miui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v7

    .line 304
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    return-wide p1

    .line 302
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    return-wide p1

    .line 299
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v8}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1

    .line 297
    :pswitch_3
    aget-object p2, p1, v0

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v5, v7

    :goto_0
    return-wide v5

    .line 289
    :pswitch_4
    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_2

    .line 291
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_1

    return-wide v5

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-wide v7

    .line 281
    :pswitch_5
    array-length p2, p1

    :goto_2
    if-ge v0, p2, :cond_4

    .line 283
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_3

    return-wide v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-wide v5

    .line 269
    :pswitch_6
    array-length p2, p1

    .line 270
    rem-int/lit8 v2, p2, 0x2

    if-eq v2, v1, :cond_5

    const-string p1, "Expression"

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "function parameter number should be 2*n+1: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, Lcom/miui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v7

    :cond_5
    :goto_3
    add-int/lit8 v2, p2, -0x1

    .line 274
    div-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_7

    mul-int/lit8 v2, v0, 0x2

    .line 275
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    cmpl-double v3, v3, v7

    if-lez v3, :cond_6

    add-int/2addr v2, v1

    .line 276
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    return-wide p1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 278
    :cond_7
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    return-wide p1

    .line 267
    :pswitch_7
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    cmpg-double p1, v2, p1

    if-gez p1, :cond_8

    goto :goto_4

    :cond_8
    move-wide v5, v7

    :goto_4
    return-wide v5

    .line 265
    :pswitch_8
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    cmpg-double p1, v2, p1

    if-gtz p1, :cond_9

    goto :goto_5

    :cond_9
    move-wide v5, v7

    :goto_5
    return-wide v5

    .line 263
    :pswitch_9
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    cmpl-double p1, v2, p1

    if-lez p1, :cond_a

    goto :goto_6

    :cond_a
    move-wide v5, v7

    :goto_6
    return-wide v5

    .line 261
    :pswitch_a
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    cmpl-double p1, v2, p1

    if-ltz p1, :cond_b

    goto :goto_7

    :cond_b
    move-wide v5, v7

    :goto_7
    return-wide v5

    .line 259
    :pswitch_b
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    cmpl-double p1, v2, p1

    if-eqz p1, :cond_c

    goto :goto_8

    :cond_c
    move-wide v5, v7

    :goto_8
    return-wide v5

    .line 257
    :pswitch_c
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    cmpl-double p1, v2, p1

    if-nez p1, :cond_d

    goto :goto_9

    :cond_d
    move-wide v5, v7

    :goto_9
    return-wide v5

    :pswitch_d
    double-to-int p2, v2

    .line 255
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int p1, v0

    invoke-direct {p0, p2, p1}, Lcom/miui/maml/data/BaseFunctions;->digit(II)I

    move-result p1

    int-to-double p1, p1

    return-wide p1

    .line 253
    :pswitch_e
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide p1

    return-wide p1

    .line 251
    :pswitch_f
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    return-wide p1

    .line 249
    :pswitch_10
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    return-wide p1

    .line 247
    :pswitch_11
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    return-wide p1

    .line 245
    :pswitch_12
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    return-wide p1

    :pswitch_13
    cmpl-double p1, v2, v7

    if-lez p1, :cond_e

    move-wide v5, v7

    :cond_e
    return-wide v5

    .line 241
    :pswitch_14
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->isNull()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_a

    :cond_f
    move-wide v5, v7

    :goto_a
    return-wide v5

    :pswitch_15
    return-wide v2

    :pswitch_16
    double-to-long p1, v2

    long-to-int p1, p1

    int-to-double p1, p1

    return-wide p1

    .line 235
    :pswitch_17
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1

    .line 214
    :pswitch_18
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    return-wide v7

    .line 218
    :cond_10
    iget-object v2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 219
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 222
    :cond_11
    iget-object p2, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object p2

    goto :goto_b

    :cond_12
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_14

    .line 224
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 225
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int p1, v1

    if-lez p1, :cond_13

    if-le v0, p1, :cond_13

    const/4 v0, 0x4

    .line 229
    invoke-virtual {p2, p1, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    .line 231
    :cond_13
    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_14
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1

    .line 204
    :pswitch_19
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_15

    return-wide v7

    .line 208
    :cond_15
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 209
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 210
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 212
    :cond_16
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_17

    goto :goto_c

    :cond_17
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v7

    :goto_c
    return-wide v7

    .line 198
    :pswitch_1a
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_18

    return-wide v7

    .line 202
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    return-wide p1

    .line 196
    :pswitch_1b
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    return-wide p1

    .line 194
    :pswitch_1c
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1

    .line 192
    :pswitch_1d
    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p1

    return-wide p1

    .line 190
    :pswitch_1e
    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p1

    return-wide p1

    .line 188
    :pswitch_1f
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    return-wide p1

    .line 186
    :pswitch_20
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    return-wide p1

    .line 184
    :pswitch_21
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    return-wide p1

    .line 182
    :pswitch_22
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide p1

    return-wide p1

    .line 180
    :pswitch_23
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1

    .line 178
    :pswitch_24
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1

    .line 172
    :cond_19
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 9

    .line 313
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$1;->$SwitchMap$com$miui$maml$data$BaseFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    const/16 v1, 0x20

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x24

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/BaseFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :cond_0
    aget-object p2, p1, v2

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p2

    .line 359
    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {p2, p1}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v3

    .line 327
    :cond_3
    aget-object p2, p1, v2

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    return-object v3

    .line 330
    :cond_4
    array-length v0, p1

    .line 331
    aget-object v1, p1, v4

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_6

    const/4 v0, 0x2

    .line 334
    :try_start_0
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-int p1, v4

    .line 335
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_5

    move p1, v0

    :cond_5
    add-int/2addr p1, v1

    .line 339
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 341
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v3

    .line 315
    :cond_7
    array-length p2, p1

    .line 316
    rem-int/lit8 v0, p2, 0x2

    if-eq v0, v4, :cond_8

    const-string p1, "Expression"

    .line 317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "function parameter number should be 2*n+1: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->fun:Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, Lcom/miui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_8
    :goto_1
    add-int/lit8 v0, p2, -0x1

    .line 320
    div-int/lit8 v1, v0, 0x2

    if-ge v2, v1, :cond_a

    mul-int/lit8 v0, v2, 0x2

    .line 321
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_9

    add-int/2addr v0, v4

    .line 322
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 324
    :cond_a
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 347
    :cond_b
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    return-object v3

    .line 351
    :cond_c
    iget-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 352
    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 353
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    .line 355
    :cond_d
    iget-object p1, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    if-nez p1, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    .line 372
    iput-object v0, p0, Lcom/miui/maml/data/BaseFunctions;->mEvalExp:Lcom/miui/maml/data/Expression;

    return-void
.end method
