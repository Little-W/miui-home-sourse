.class public Lcom/miui/maml/data/JsonFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "JsonFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/data/JsonFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lcom/miui/maml/data/JsonFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 75
    iput-object p1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    return-void
.end method

.method public static load()V
    .locals 4

    .line 42
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_STRING:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonGetString"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 44
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_BOOLEAN:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonGetBoolean"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 46
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_INT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonGetInt"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 47
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonGetObject"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 49
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_GET_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonGetArray"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 51
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_GET_INDEX:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonArrayGetIndex"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 54
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "newJsonObject"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 56
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_NEW_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "newJsonArray"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 59
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_ARRAY_LENGTH:Lcom/miui/maml/data/JsonFunctions$Fun;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "getJsonArrayLength"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 61
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->JSON_OBJECT_EQUALS:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonObjectEquals"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 64
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "strToJson"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 65
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->TO_STR_FROM_JSON:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "jsonToStr"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 68
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_OBJECT:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "isJsonObject"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 70
    new-instance v0, Lcom/miui/maml/data/JsonFunctions;

    sget-object v1, Lcom/miui/maml/data/JsonFunctions$Fun;->IS_JSON_ARRAY:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lcom/miui/maml/data/JsonFunctions;-><init>(Lcom/miui/maml/data/JsonFunctions$Fun;I)V

    const-string v1, "isJsonArray"

    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 5

    .line 84
    sget-object p2, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object p0, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {p0}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    .line 113
    :pswitch_0
    aget-object p0, p1, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 115
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0

    .line 107
    :pswitch_1
    aget-object p0, p1, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 109
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    :goto_1
    int-to-double p0, p0

    return-wide p0

    .line 103
    :pswitch_2
    aget-object p0, p1, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    move-wide v0, v2

    :goto_2
    return-wide v0

    .line 100
    :pswitch_3
    aget-object p0, p1, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move-wide v0, v2

    :goto_3
    return-wide v0

    .line 92
    :pswitch_4
    aget-object p0, p1, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    .line 93
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-ne p0, p1, :cond_3

    goto :goto_4

    :cond_3
    move-wide v0, v2

    :goto_4
    return-wide v0

    .line 86
    :pswitch_5
    aget-object p0, p1, v4

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 88
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    goto :goto_1

    :cond_4
    :goto_5
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;
    .locals 2

    .line 191
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 193
    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    .line 195
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 203
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonArray([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;
    .locals 3

    .line 154
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 173
    :pswitch_0
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 174
    aget-object v1, p1, v1

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v1

    double-to-int v1, v1

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 177
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    .line 164
    :pswitch_1
    aget-object p0, p1, v2

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 167
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 162
    :pswitch_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 156
    :pswitch_3
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    .line 185
    :catch_1
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;->evaluateJsonObject([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 3

    .line 128
    sget-object v0, Lcom/miui/maml/data/JsonFunctions$1;->$SwitchMap$com$miui$maml$data$JsonFunctions$Fun:[I

    iget-object v1, p0, Lcom/miui/maml/data/JsonFunctions;->mFun:Lcom/miui/maml/data/JsonFunctions$Fun;

    invoke-virtual {v1}, Lcom/miui/maml/data/JsonFunctions$Fun;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 130
    :pswitch_1
    aget-object p0, p1, v1

    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateJsonObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    .line 132
    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/JsonFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    return-void
.end method
