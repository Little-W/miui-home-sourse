.class public final Lkotlinx/serialization/json/internal/JsonParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJsonParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonParser.kt\nkotlinx/serialization/json/internal/JsonParser\n+ 2 JsonReader.kt\nkotlinx/serialization/json/internal/JsonReader\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n143#2,2:89\n337#2,2:91\n143#2,2:93\n143#2,2:95\n337#2,2:97\n143#2,2:99\n337#2,2:101\n143#2,2:103\n337#2,2:105\n1#3:107\n*E\n*S KotlinDebug\n*F\n+ 1 JsonParser.kt\nkotlinx/serialization/json/internal/JsonParser\n*L\n16#1,2:89\n19#1,2:91\n25#1,2:93\n31#1,2:95\n37#1,2:97\n43#1,2:99\n46#1,2:101\n55#1,2:103\n62#1,2:105\n*E\n"
.end annotation


# instance fields
.field private final isLenient:Z

.field private final reader:Lkotlinx/serialization/json/internal/JsonReader;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonConf;Lkotlinx/serialization/json/internal/JsonReader;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-boolean p1, p1, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    return-void
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v5, v5, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move v1, v4

    :goto_2
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/16 v5, 0x9

    iget-byte v6, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-byte p0, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v0, "Expected end of the array or comma"

    invoke-virtual {v1, v0, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    xor-int/2addr v1, v3

    iget v3, v2, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_4

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0

    :cond_4
    const-string p0, "Unexpected trailing comma"

    invoke-virtual {v2, p0, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    const-string p0, "Unexpected leading comma"

    invoke-virtual {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_6
    iget-byte p0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v1, "Expected start of the array"

    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final readObject()Lkotlinx/serialization/json/JsonElement;
    .locals 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v5, v5, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    move v1, v4

    :goto_2
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_5

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/4 v7, 0x5

    iget-byte v8, v5, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v8, v7, :cond_4

    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v5

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v5, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-byte p0, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v0, "Expected end of the object or comma"

    invoke-virtual {v1, v0, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    move v1, v3

    goto :goto_2

    :cond_4
    iget-byte p0, v5, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    invoke-static {v5}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v0, "Expected \':\'"

    invoke-virtual {v5, v0, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-nez v1, :cond_6

    iget-byte v1, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v1, v6, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v3, :cond_7

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0

    :cond_7
    const-string p0, "Expected end of the object"

    invoke-virtual {v2, p0, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_8
    const-string p0, "Unexpected leading comma"

    invoke-virtual {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_9
    iget-byte p0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v1, "Expected start of the object"

    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method private final readValue(Z)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const-string v0, "Can\'t begin reading element, unexpected token"

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonParser;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonParser;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lkotlinx/serialization/json/internal/JsonParser;->readValue(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lkotlinx/serialization/json/internal/JsonParser;->readValue(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_5
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const-string v0, "Can\'t begin reading value from here"

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
