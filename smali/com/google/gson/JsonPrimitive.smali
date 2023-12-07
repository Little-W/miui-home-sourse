.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .locals 2

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object p0, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    :cond_5
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v2, p0

    if-eqz v4, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :cond_7
    :goto_2
    return v0

    :cond_8
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_3
    return v1
.end method

.method public getAsBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAsDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getAsInt()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getAsLong()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    :goto_0
    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Boolean;

    return p0
.end method

.method public isNumber()Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Number;

    return p0
.end method

.method public isString()Z
    .locals 0

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/String;

    return p0
.end method
