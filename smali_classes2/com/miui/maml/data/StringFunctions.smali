.class public Lcom/miui/maml/data/StringFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/StringFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/StringFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 53
    iput-object p1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    return-void
.end method

.method public static load()V
    .locals 5

    const-string v0, "strToLowerCase"

    .line 35
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lcom/miui/maml/data/StringFunctions$Fun;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strToUpperCase"

    .line 36
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strTrim"

    .line 37
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_TRIM:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strReplace"

    .line 38
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lcom/miui/maml/data/StringFunctions$Fun;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strReplaceAll"

    .line 39
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strReplaceFirst"

    .line 40
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strContains"

    .line 42
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lcom/miui/maml/data/StringFunctions$Fun;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strStartsWith"

    .line 43
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strEndsWith"

    .line 44
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strIsEmpty"

    .line 45
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strMatches"

    .line 46
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strIndexOf"

    .line 47
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    const-string v0, "strLastIndexOf"

    .line 48
    new-instance v1, Lcom/miui/maml/data/StringFunctions;

    sget-object v2, Lcom/miui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lcom/miui/maml/data/StringFunctions;-><init>(Lcom/miui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 8

    .line 59
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    .line 68
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p2

    .line 69
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    iget-object v3, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v3}, Lcom/miui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eq v0, v3, :cond_6

    const/4 v0, 0x1

    .line 73
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    iget-object v3, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v3}, Lcom/miui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    packed-switch v0, :pswitch_data_1

    const-string p1, "Expression"

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v0}, Lcom/miui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 66
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/StringFunctions;->evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2}, Lcom/miui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1

    :pswitch_1
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    int-to-double v6, p1

    :cond_0
    return-wide v6

    :pswitch_2
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    int-to-double v6, p1

    :cond_1
    return-wide v6

    :pswitch_3
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    move-wide v1, v4

    goto :goto_0

    :catch_0
    const-string p2, "Expression"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invaid pattern of matches: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_2
    :goto_0
    return-wide v1

    :pswitch_4
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-wide v1, v4

    :cond_3
    return-wide v1

    :pswitch_5
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 78
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-wide v1, v4

    :cond_4
    return-wide v1

    :pswitch_6
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-wide v1, v4

    :cond_5
    return-wide v1

    :cond_6
    if-eqz p2, :cond_7

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move-wide v1, v4

    :cond_8
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 4

    .line 104
    sget-object v0, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x0

    .line 114
    aget-object p2, p1, p2

    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 112
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/StringFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    sget-object v1, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    iget-object v2, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v2}, Lcom/miui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    const/4 v1, 0x1

    .line 126
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 127
    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 122
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 131
    :cond_1
    sget-object v2, Lcom/miui/maml/data/StringFunctions$1;->$SwitchMap$com$miui$maml$data$StringFunctions$Fun:[I

    iget-object v3, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v3}, Lcom/miui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    const-string p1, "Expression"

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to evaluteStr FunctionExpression, invalid function: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/maml/data/StringFunctions;->mFun:Lcom/miui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 143
    :pswitch_4
    :try_start_0
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Expression"

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invaid pattern of replaceFirst:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 136
    :pswitch_5
    :try_start_1
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const-string p1, "Expression"

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invaid pattern of replaceAll: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 133
    :pswitch_6
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    return-void
.end method
