.class public abstract Lcom/miui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/Expression$FunctionExpression;,
        Lcom/miui/maml/data/Expression$FunctionImpl;,
        Lcom/miui/maml/data/Expression$BinaryExpression;,
        Lcom/miui/maml/data/Expression$UnaryExpression;,
        Lcom/miui/maml/data/Expression$StringExpression;,
        Lcom/miui/maml/data/Expression$NumberExpression;,
        Lcom/miui/maml/data/Expression$StringArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$ArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;,
        Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;,
        Lcom/miui/maml/data/Expression$StringVariableExpression;,
        Lcom/miui/maml/data/Expression$NumberVariableExpression;,
        Lcom/miui/maml/data/Expression$VariableExpression;,
        Lcom/miui/maml/data/Expression$Tokenizer;,
        Lcom/miui/maml/data/Expression$Ope;,
        Lcom/miui/maml/data/Expression$OpeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(C)Z
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isVariableChar(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(C)Z
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isDigitCharStart(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(C)Z
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isDigitCharRest(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(C)Z
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(C)Z
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isFunctionCharRest(C)Z

    move-result p0

    return p0
.end method

.method public static build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .locals 1

    .line 951
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 952
    :cond_0
    new-instance v0, Lcom/miui/maml/data/RootExpression;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/RootExpression;-><init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static buildBracket(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lcom/miui/maml/data/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/maml/data/Variables;",
            "Lcom/miui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack<",
            "Lcom/miui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lcom/miui/maml/data/Expression;"
        }
    .end annotation

    .line 1085
    iget-object v0, p1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/maml/data/Expression;->buildMultipleInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Lcom/miui/maml/data/Expression;->checkParams([Lcom/miui/maml/data/Expression;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "Expression"

    .line 1087
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid expressions: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 1092
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v1, v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v3, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v1, v3, :cond_1

    .line 1093
    new-instance v1, Lcom/miui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object p2, p2, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/maml/data/Expression$FunctionExpression;-><init>(Lcom/miui/maml/data/Variables;[Lcom/miui/maml/data/Expression;Ljava/lang/String;)V

    return-object v1

    .line 1094
    :cond_1
    array-length p0, v0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_2

    const/4 p0, 0x0

    .line 1095
    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p2, "Expression"

    const-string v0, "build FunctionExpression fail."

    .line 1098
    invoke-static {p2, v0, p0}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-string p0, "Expression"

    .line 1101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .locals 9

    .line 956
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 963
    :cond_0
    new-instance v0, Lcom/miui/maml/data/Expression$Tokenizer;

    invoke-direct {v0, p1}, Lcom/miui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 966
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 967
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    move-object v4, v1

    .line 968
    :goto_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression$Tokenizer;->getToken()Lcom/miui/maml/data/Expression$Tokenizer$Token;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_e

    .line 972
    sget-object v7, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v8, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v8}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_6

    .line 1065
    :pswitch_0
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1045
    :pswitch_1
    iget-object v7, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    iget v7, v7, Lcom/miui/maml/data/Expression$OpeInfo;->participants:I

    if-ne v7, v6, :cond_2

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v7, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v4, v7, :cond_2

    .line 1047
    :cond_1
    iget-object v4, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    iput-boolean v6, v4, Lcom/miui/maml/data/Expression$OpeInfo;->unary:Z

    .line 1048
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 1050
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1051
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v6, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v4, v6, :cond_4

    .line 1052
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    iget v4, v4, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    iget v6, v6, Lcom/miui/maml/data/Expression$OpeInfo;->priority:I

    sub-int/2addr v4, v6

    if-gtz v4, :cond_4

    .line 1053
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    const/4 v6, 0x2

    if-ge v4, v6, :cond_3

    const-string p0, "Expression"

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to buid: invalid operator position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1057
    :cond_3
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/data/Expression;

    .line 1058
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/data/Expression;

    .line 1059
    new-instance v7, Lcom/miui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v8, v8, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    invoke-direct {v7, v6, v4, v8}, Lcom/miui/maml/data/Expression$BinaryExpression;-><init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V

    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1061
    :cond_4
    invoke-virtual {v2, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 982
    :pswitch_2
    sget-object v4, Lcom/miui/maml/data/Expression$1;->$SwitchMap$com$miui$maml$data$Expression$Tokenizer$TokenType:[I

    iget-object v7, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->type:Lcom/miui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v7}, Lcom/miui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1

    move-object v4, v1

    goto/16 :goto_5

    .line 1013
    :pswitch_3
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    if-ge v4, v6, :cond_5

    const-string p0, "Expression"

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to buid: no array name before []:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1017
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/data/Expression;

    .line 1018
    instance-of v6, v4, Lcom/miui/maml/data/Expression$VariableExpression;

    if-eqz v6, :cond_9

    .line 1019
    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    if-nez v6, :cond_6

    const-string p0, "Expression"

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to buid: no index expression in []:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1024
    :cond_6
    move-object v7, v4

    check-cast v7, Lcom/miui/maml/data/Expression$VariableExpression;

    invoke-virtual {v7}, Lcom/miui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1025
    instance-of v8, v4, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    if-eqz v8, :cond_7

    .line 1026
    new-instance v4, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;

    invoke-direct {v4, p0, v7, v6}, Lcom/miui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    goto :goto_2

    .line 1027
    :cond_7
    instance-of v4, v4, Lcom/miui/maml/data/Expression$StringVariableExpression;

    if-eqz v4, :cond_8

    .line 1028
    new-instance v4, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;

    invoke-direct {v4, p0, v7, v6}, Lcom/miui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    goto :goto_2

    :cond_8
    move-object v4, v1

    goto :goto_2

    :cond_9
    const-string v4, "Expression"

    .line 1031
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to buid: the expression before [] is not a variable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    :goto_2
    if-nez v4, :cond_c

    return-object v1

    .line 1008
    :pswitch_4
    invoke-static {p0, v5, v2}, Lcom/miui/maml/data/Expression;->buildBracket(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lcom/miui/maml/data/Expression;

    move-result-object v4

    if-nez v4, :cond_c

    return-object v1

    .line 1005
    :pswitch_5
    new-instance v4, Lcom/miui/maml/data/Expression$StringExpression;

    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, v6}, Lcom/miui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 996
    :pswitch_6
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    sget-object v7, Lcom/miui/maml/data/Expression$Ope;->MIN:Lcom/miui/maml/data/Expression$Ope;

    if-ne v4, v7, :cond_a

    .line 997
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v4, v4, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    iget-boolean v4, v4, Lcom/miui/maml/data/Expression$OpeInfo;->unary:Z

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    .line 998
    :goto_3
    new-instance v4, Lcom/miui/maml/data/Expression$NumberExpression;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_b

    const-string v8, "-"

    goto :goto_4

    :cond_b
    const-string v8, ""

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/miui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_c

    .line 1000
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_5

    .line 993
    :pswitch_7
    new-instance v4, Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;

    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/miui/maml/data/Expression$JsonArrayVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_5

    .line 990
    :pswitch_8
    new-instance v4, Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;

    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/miui/maml/data/Expression$JsonObjectVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_5

    .line 987
    :pswitch_9
    new-instance v4, Lcom/miui/maml/data/Expression$StringVariableExpression;

    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/miui/maml/data/Expression$StringVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_5

    .line 984
    :pswitch_a
    new-instance v4, Lcom/miui/maml/data/Expression$NumberVariableExpression;

    iget-object v6, v5, Lcom/miui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v4, p0, v6}, Lcom/miui/maml/data/Expression$NumberVariableExpression;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 1039
    :cond_c
    :goto_5
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v6, v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    if-eqz v6, :cond_d

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v6, v6, Lcom/miui/maml/data/Expression$Tokenizer$Token;->info:Lcom/miui/maml/data/Expression$OpeInfo;

    iget-boolean v6, v6, Lcom/miui/maml/data/Expression$OpeInfo;->unary:Z

    if-eqz v6, :cond_d

    .line 1040
    new-instance v6, Lcom/miui/maml/data/Expression$UnaryExpression;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v7, v7, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    invoke-direct {v6, v4, v7}, Lcom/miui/maml/data/Expression$UnaryExpression;-><init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V

    move-object v4, v6

    goto :goto_5

    .line 1042
    :cond_d
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    move-object v4, v5

    goto/16 :goto_0

    .line 1071
    :cond_e
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result p0

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/2addr v0, v6

    if-eq p0, v0, :cond_f

    const-string p0, "Expression"

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to buid: invalid expression:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1076
    :cond_f
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/Expression;

    .line 1077
    :goto_7
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 1078
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/data/Expression;

    .line 1079
    new-instance v0, Lcom/miui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;

    iget-object v1, v1, Lcom/miui/maml/data/Expression$Tokenizer$Token;->op:Lcom/miui/maml/data/Expression$Ope;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/maml/data/Expression$BinaryExpression;-><init>(Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression$Ope;)V

    move-object p0, v0

    goto :goto_7

    :cond_10
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;
    .locals 4

    .line 906
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 909
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildMultipleInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    .line 910
    array-length v0, p1

    new-array v0, v0, [Lcom/miui/maml/data/Expression;

    const/4 v1, 0x0

    .line 911
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 912
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 913
    instance-of v3, v2, Lcom/miui/maml/data/Expression$NumberExpression;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/miui/maml/data/Expression$StringExpression;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 916
    :cond_1
    new-instance v3, Lcom/miui/maml/data/RootExpression;

    invoke-direct {v3, p0, v2}, Lcom/miui/maml/data/RootExpression;-><init>(Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;)V

    aput-object v3, v0, v1

    goto :goto_2

    .line 914
    :cond_2
    :goto_1
    aput-object v2, v0, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static buildMultipleInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;
    .locals 7

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 927
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 928
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v3, :cond_2

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    if-nez v4, :cond_0

    .line 931
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    :goto_1
    const/16 v6, 0x27

    if-ne v5, v6, :cond_3

    xor-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 943
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 944
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->buildInner(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/miui/maml/data/Expression;

    .line 947
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/miui/maml/data/Expression;

    return-object p0
.end method

.method private static checkParams([Lcom/miui/maml/data/Expression;)Z
    .locals 4

    .line 1106
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isDigitCharRest(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x46

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isDigitCharStart(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFunctionCharRest(C)Z
    .locals 1

    .line 901
    invoke-static {p0}, Lcom/miui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isFunctionCharStart(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVariableChar(C)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public accept(Lcom/miui/maml/data/ExpressionVisitor;)V
    .locals 0

    .line 1141
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/ExpressionVisitor;->visit(Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateJsonArray()Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public evaluateJsonObject()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .locals 2

    .line 1116
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    .line 1118
    :try_start_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
