.class public final Lkotlinx/serialization/json/internal/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.kt"


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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 13
    iget-boolean p1, p1, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    return-void
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 7

    .line 43
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 99
    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 46
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

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move v1, v4

    .line 49
    :goto_2
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eq v1, v2, :cond_2

    .line 55
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/16 v5, 0x9

    .line 103
    iget-byte v6, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v6, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-byte p0, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 55
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v0, "Expected end of the array or comma"

    invoke-virtual {v1, v0, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 58
    :cond_2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    move v1, v3

    goto :goto_2

    .line 62
    :cond_3
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    xor-int/2addr v1, v3

    iget v3, v2, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_4

    .line 63
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 64
    new-instance p0, Lkotlinx/serialization/json/JsonArray;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0

    :cond_4
    const-string p0, "Unexpected trailing comma"

    .line 62
    invoke-virtual {v2, p0, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_5
    const-string p0, "Unexpected leading comma"

    .line 46
    invoke-virtual {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 99
    :cond_6
    iget-byte p0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 43
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

    .line 16
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 89
    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9

    .line 17
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 19
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

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    move v1, v4

    .line 22
    :goto_2
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_5

    .line 24
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

    .line 25
    :goto_3
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/4 v7, 0x5

    .line 93
    iget-byte v8, v5, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v8, v7, :cond_4

    .line 26
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 27
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v5

    .line 28
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eq v1, v2, :cond_3

    .line 31
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 95
    iget-byte v5, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    iget-byte p0, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 31
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v0, "Expected end of the object or comma"

    invoke-virtual {v1, v0, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 34
    :cond_3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    move v1, v3

    goto :goto_2

    .line 93
    :cond_4
    iget-byte p0, v5, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 25
    invoke-static {v5}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v0, "Expected \':\'"

    invoke-virtual {v5, v0, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 37
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

    .line 38
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 39
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    return-object p0

    :cond_7
    const-string p0, "Expected end of the object"

    .line 37
    invoke-virtual {v2, p0, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_8
    const-string p0, "Unexpected leading comma"

    .line 19
    invoke-virtual {v0, p0, v5}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 89
    :cond_9
    iget-byte p0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 16
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

    .line 68
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object p0

    .line 73
    :goto_0
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 5

    .line 77
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 78
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

    .line 79
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    goto :goto_0

    .line 84
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const-string v0, "Can\'t begin reading element, unexpected token"

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 83
    :cond_1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonParser;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonParser;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    invoke-direct {p0, v4}, Lkotlinx/serialization/json/internal/JsonParser;->readValue(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_4
    invoke-direct {p0, v3}, Lkotlinx/serialization/json/internal/JsonParser;->readValue(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_0
    return-object v0

    .line 77
    :cond_5
    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const-string v0, "Can\'t begin reading value from here"

    invoke-static {p0, v0, v3, v2, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
