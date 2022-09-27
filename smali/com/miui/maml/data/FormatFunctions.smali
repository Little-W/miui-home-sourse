.class public Lcom/miui/maml/data/FormatFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "FormatFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/FormatFunctions$Fun;
    }
.end annotation


# instance fields
.field private final mFun:Lcom/miui/maml/data/FormatFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 29
    iput-object p1, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    return-void
.end method

.method public static load()V
    .locals 4

    const-string v0, "formatDate"

    .line 22
    new-instance v1, Lcom/miui/maml/data/FormatFunctions;

    sget-object v2, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lcom/miui/maml/data/FormatFunctions$Fun;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "formatFloat"

    .line 23
    new-instance v1, Lcom/miui/maml/data/FormatFunctions;

    sget-object v2, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "formatInt"

    .line 24
    new-instance v1, Lcom/miui/maml/data/FormatFunctions;

    sget-object v2, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 5

    const/4 p2, 0x0

    .line 39
    aget-object v0, p1, p2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 43
    :cond_0
    sget-object v2, Lcom/miui/maml/data/FormatFunctions$1;->$SwitchMap$com$miui$maml$data$FormatFunctions$Fun:[I

    iget-object v3, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    invoke-virtual {v3}, Lcom/miui/maml/data/FormatFunctions$Fun;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_1
    new-array v2, v3, [Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 45
    :pswitch_2
    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide p1

    double-to-long p1, p1

    invoke-static {v0, p1, p2}, Lcom/miui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    return-void
.end method
