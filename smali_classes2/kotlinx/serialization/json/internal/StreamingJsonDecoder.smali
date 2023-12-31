.class public final Lkotlinx/serialization/json/internal/StreamingJsonDecoder;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamingJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n+ 2 JsonReader.kt\nkotlinx/serialization/json/internal/JsonReader\n*L\n1#1,228:1\n217#1,4:253\n217#1,4:257\n217#1,4:261\n217#1,4:265\n217#1,4:269\n217#1,4:273\n217#1,4:277\n143#2,2:229\n143#2,2:231\n143#2,2:233\n337#2,2:235\n143#2,2:237\n143#2,2:239\n336#2,3:241\n143#2,2:244\n337#2,2:246\n143#2,2:248\n336#2,3:250\n*E\n*S KotlinDebug\n*F\n+ 1 StreamingJsonDecoder.kt\nkotlinx/serialization/json/internal/StreamingJsonDecoder\n*L\n187#1,4:253\n188#1,4:257\n189#1,4:261\n190#1,4:265\n193#1,4:269\n200#1,4:273\n206#1,4:277\n39#1,2:229\n55#1,2:231\n65#1,2:233\n73#1,2:235\n94#1,2:237\n97#1,2:239\n101#1,3:241\n131#1,2:244\n152#1,2:246\n161#1,2:248\n164#1,3:250\n*E\n"
.end annotation


# instance fields
.field private final configuration:Lkotlinx/serialization/json/internal/JsonConf;

.field private currentIndex:I

.field private final json:Lkotlinx/serialization/json/Json;

.field private final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final reader:Lkotlinx/serialization/json/internal/JsonReader;

.field private final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 26
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 28
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    return-void
.end method

.method private final coerceInputValue(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 2

    .line 112
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte p2, p2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 114
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p2

    sget-object v1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 115
    iget-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    invoke-virtual {p2, p0}, Lkotlinx/serialization/json/internal/JsonReader;->peekString(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 117
    invoke-interface {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x3

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private final decodeListIndex(B)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 160
    iget v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eq v2, v0, :cond_1

    .line 161
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/16 v3, 0x9

    .line 248
    iget-byte v4, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-byte p0, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 161
    invoke-static {v2}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string p1, "Expected end of the array or comma"

    invoke-virtual {v2, p1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 163
    :cond_1
    :goto_0
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 164
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 250
    :goto_1
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "Unexpected trailing comma"

    .line 164
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 167
    :cond_4
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    iget v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    :goto_2
    return v0
.end method

.method private final decodeMapIndex(B)I
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 93
    iget v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v1, :cond_1

    .line 94
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/4 v3, 0x7

    .line 237
    iget-byte v4, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-byte p0, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 94
    invoke-static {v2}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string p1, "Expected end of the object or comma"

    invoke-virtual {v2, p1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 96
    :cond_1
    :goto_0
    iget v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 97
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/4 v3, 0x5

    .line 239
    iget-byte v4, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v4, v3, :cond_2

    .line 98
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_1

    .line 239
    :cond_2
    iget-byte p0, v2, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 97
    invoke-static {v2}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string p1, "Expected \':\' after the key"

    invoke-virtual {v2, p1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 100
    :cond_3
    :goto_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 101
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 241
    :goto_2
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_5

    const/4 p0, -0x1

    goto :goto_3

    :cond_5
    const-string v0, "Unexpected trailing comma"

    .line 101
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 104
    :cond_6
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    iget p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    :goto_3
    return p0
.end method

.method private final decodeObjectIndex(BLkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Unexpected trailing comma"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    .line 124
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-static {p0, v2, v4, v1, v0}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 128
    :cond_1
    :goto_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 129
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    const/4 v5, 0x1

    add-int/2addr p1, v5

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    .line 130
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeString()Ljava/lang/String;

    move-result-object p1

    .line 131
    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const/4 v7, 0x5

    .line 244
    iget-byte v8, v6, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v8, v7, :cond_7

    .line 132
    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 133
    invoke-interface {p2, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x3

    if-eq v6, v7, :cond_3

    .line 135
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean v5, v5, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    if-eqz v5, :cond_2

    invoke-direct {p0, p2, v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->coerceInputValue(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    return v6

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    .line 144
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean v5, v5, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    if-eqz v5, :cond_4

    goto :goto_2

    .line 145
    :cond_4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered an unknown key \'"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v4, v1, v0}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 147
    :cond_5
    :goto_2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->skipElement()V

    .line 150
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte p1, p1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne p1, v3, :cond_1

    .line 151
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 152
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v5

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v6, v6, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v2, v6}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 244
    :cond_7
    iget-byte p0, v6, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 131
    invoke-static {v6}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string p1, "Expected \':\'"

    invoke-virtual {v6, p1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    .line 38
    iget-char v1, v0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v2, v0, Lkotlinx/serialization/json/internal/WriteMode;->beginTc:B

    .line 229
    iget-byte v3, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v3, v2, :cond_0

    .line 40
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_0

    .line 229
    :cond_0
    iget-byte p0, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected \'"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", kind: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    .line 48
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-direct {p1, v1, v0, p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V

    move-object p0, p1

    .line 48
    :goto_1
    check-cast p0, Lkotlinx/serialization/encoding/CompositeDecoder;

    goto :goto_2

    .line 43
    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 46
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 43
    invoke-direct {p1, v1, v0, p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V

    move-object p0, p1

    check-cast p0, Lkotlinx/serialization/encoding/CompositeDecoder;

    :goto_2
    return-object p0
.end method

.method public decodeBoolean()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean v0, v0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/StringOpsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 179
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeBooleanStringUnquoted()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/StringOpsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public decodeByte()B
    .locals 4

    .line 187
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 256
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeChar()C
    .locals 4

    .line 206
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->single(Ljava/lang/CharSequence;)C

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 280
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeCollectionSize(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1}, Lkotlinx/serialization/json/JsonDecoder$DefaultImpls;->decodeCollectionSize(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p0

    return p0
.end method

.method public decodeDouble()D
    .locals 4

    .line 200
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v0

    iget-boolean v0, v0, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    if-nez v0, :cond_2

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 203
    :cond_1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p0, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->throwInvalidFloatingPointDecoded(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-wide v2

    .line 276
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "double"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 73
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eq v5, v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v6, v6, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v5, :cond_1

    .line 74
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_1

    :cond_1
    const-string p0, "Unexpected leading comma"

    .line 73
    invoke-virtual {v4, p0, v6}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 76
    :cond_2
    :goto_1
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v5, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 88
    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeObjectIndex(BLkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v1

    goto :goto_2

    .line 80
    :cond_3
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    iget p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->currentIndex:I

    if-eqz p0, :cond_7

    if-eq p0, v3, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2

    .line 78
    :cond_5
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeMapIndex(B)I

    move-result v1

    goto :goto_2

    .line 77
    :cond_6
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeListIndex(B)I

    move-result v1

    :cond_7
    :goto_2
    return v1
.end method

.method public decodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->getElementIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public decodeFloat()F
    .locals 4

    .line 193
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v2

    iget-boolean v2, v2, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    if-nez v2, :cond_2

    .line 195
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-static {p0, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->throwInvalidFloatingPointDecoded(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return v0

    .line 272
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "float"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeInt()I
    .locals 4

    .line 189
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 264
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeJsonElement()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 30
    new-instance v0, Lkotlinx/serialization/json/internal/JsonParser;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonParser;-><init>(Lkotlinx/serialization/json/internal/JsonConf;Lkotlinx/serialization/json/internal/JsonReader;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public decodeLong()J
    .locals 4

    .line 190
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 268
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeNotNullMark()Z
    .locals 1

    .line 61
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte p0, p0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public decodeNull()Ljava/lang/Void;
    .locals 3

    .line 65
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 233
    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 66
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    const/4 p0, 0x0

    return-object p0

    .line 233
    :cond_0
    iget-byte p0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 65
    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p0

    const-string v1, "Expected \'null\' literal"

    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public synthetic decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/JsonDecoder$DefaultImpls;->decodeNullableSerializableElement(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeSequentially()Z
    .locals 0

    .line 20
    invoke-static {p0}, Lkotlinx/serialization/json/JsonDecoder$DefaultImpls;->decodeSequentially(Lkotlinx/serialization/json/JsonDecoder;)Z

    move-result p0

    return p0
.end method

.method public synthetic decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/JsonDecoder$DefaultImpls;->decodeSerializableElement(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public decodeShort()S
    .locals 4

    .line 188
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 260
    :catchall_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public decodeString()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->configuration:Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean v0, v0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->endTc:B

    .line 231
    iget-byte v1, p1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v1, v0, :cond_0

    .line 56
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_0

    .line 231
    :cond_0
    iget-byte v0, p1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p0, p0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public getJson()Lkotlinx/serialization/json/Json;
    .locals 0

    .line 21
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->json:Lkotlinx/serialization/json/Json;

    return-object p0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 0

    .line 26
    iget-object p0, p0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object p0
.end method
