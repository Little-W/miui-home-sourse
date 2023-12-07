.class final Lcom/squareup/moshi/StandardJsonAdapters$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/moshi/JsonAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/StandardJsonAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/reflect/Type;Ljava/util/Set;Lcom/squareup/moshi/Moshi;)Lcom/squareup/moshi/JsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/squareup/moshi/Moshi;",
            ")",
            "Lcom/squareup/moshi/JsonAdapter<",
            "*>;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_1

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->BOOLEAN_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->BYTE_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->CHARACTER_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_4

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->DOUBLE_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_5

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->FLOAT_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_5
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_6

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->INTEGER_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_6
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_7

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->LONG_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_7
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_8

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->SHORT_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    return-object p0

    :cond_8
    const-class p0, Ljava/lang/Boolean;

    if-ne p1, p0, :cond_9

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->BOOLEAN_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_9
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_a

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->BYTE_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_a
    const-class p0, Ljava/lang/Character;

    if-ne p1, p0, :cond_b

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->CHARACTER_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_b
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_c

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->DOUBLE_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_c
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_d

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->FLOAT_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_d
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_e

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->INTEGER_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_e
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_f

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->LONG_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_f
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_10

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->SHORT_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_10
    const-class p0, Ljava/lang/String;

    if-ne p1, p0, :cond_11

    sget-object p0, Lcom/squareup/moshi/StandardJsonAdapters;->STRING_JSON_ADAPTER:Lcom/squareup/moshi/JsonAdapter;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_11
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_12

    new-instance p0, Lcom/squareup/moshi/StandardJsonAdapters$ObjectJsonAdapter;

    invoke-direct {p0, p3}, Lcom/squareup/moshi/StandardJsonAdapters$ObjectJsonAdapter;-><init>(Lcom/squareup/moshi/Moshi;)V

    invoke-virtual {p0}, Lcom/squareup/moshi/StandardJsonAdapters$ObjectJsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-static {p1}, Lcom/squareup/moshi/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_13

    new-instance p1, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;

    invoke-direct {p1, p0}, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/squareup/moshi/StandardJsonAdapters$EnumJsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    return-object p0

    :cond_13
    return-object p2
.end method
