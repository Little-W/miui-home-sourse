.class public final Lcom/mi/google/gson/internal/bind/JsonTreeReader;
.super Lcom/mi/google/gson/stream/JsonReader;
.source "JsonTreeReader.java"


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field private stack:[Ljava/lang/Object;

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/mi/google/gson/internal/bind/JsonTreeReader$1;

    invoke-direct {v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader$1;-><init>()V

    sput-object v0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method private expect(Lcom/mi/google/gson/stream/JsonToken;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private locationString()Ljava/lang/String;
    .locals 2

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private peekStack()Ljava/lang/Object;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private popStack()Ljava/lang/Object;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    aget-object v1, v0, v1

    .line 155
    iget p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    const/4 v2, 0x0

    aput-object v2, v0, p0

    return-object v1
.end method

.method private push(Ljava/lang/Object;)V
    .locals 6

    .line 280
    iget v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    .line 281
    new-array v2, v2, [Ljava/lang/Object;

    mul-int/lit8 v3, v0, 0x2

    .line 282
    new-array v3, v3, [I

    mul-int/lit8 v4, v0, 0x2

    .line 283
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 284
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iput-object v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    .line 288
    iput-object v3, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    .line 289
    iput-object v4, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    aput-object p1, v0, v1

    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 72
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonArray;

    .line 73
    invoke-virtual {v0}, Lcom/mi/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 88
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonObject;

    .line 89
    invoke-virtual {v0}, Lcom/mi/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 252
    sget-object v2, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    .line 253
    iput v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    return-void
.end method

.method public endArray()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->END_ARRAY:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 79
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 80
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 81
    iget v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public endObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->END_OBJECT:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 94
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 95
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 96
    iget v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 296
    :goto_0
    iget v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-ge v1, v2, :cond_2

    .line 297
    iget-object v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/mi/google/gson/JsonArray;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 298
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_0
    aget-object v3, v2, v1

    instance-of v3, v3, Lcom/mi/google/gson/JsonObject;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 302
    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    iget-object v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 305
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object p0

    .line 103
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->END_OBJECT:Lcom/mi/google/gson/stream/JsonToken;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->END_ARRAY:Lcom/mi/google/gson/stream/JsonToken;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public nextBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->BOOLEAN:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 191
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    .line 192
    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_0

    .line 193
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_0
    return v0
.end method

.method public nextDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->STRING:Lcom/mi/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    .line 213
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->isLenient()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 214
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 216
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 217
    iget v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_4

    .line 218
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_4
    return-wide v0
.end method

.method public nextInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    .line 239
    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->STRING:Lcom/mi/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    .line 244
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 245
    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_2

    .line 246
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return v0
.end method

.method public nextLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    .line 225
    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->STRING:Lcom/mi/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    .line 230
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 231
    iget v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v2, :cond_2

    .line 232
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_2
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->NAME:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 168
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    iget-object v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-object v1
.end method

.method public nextNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->NULL:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 200
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 201
    iget v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v0, :cond_0

    .line 202
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->STRING:Lcom/mi/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mi/google/gson/stream/JsonToken;->STRING:Lcom/mi/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 183
    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-lez v1, :cond_2

    .line 184
    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return-object v0
.end method

.method public peek()Lcom/mi/google/gson/stream/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    if-nez v0, :cond_0

    .line 108
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stack:[Ljava/lang/Object;

    iget v2, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/mi/google/gson/JsonObject;

    .line 114
    check-cast v0, Ljava/util/Iterator;

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 117
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->NAME:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 119
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    .line 123
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->END_OBJECT:Lcom/mi/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->END_ARRAY:Lcom/mi/google/gson/stream/JsonToken;

    :goto_0
    return-object p0

    .line 125
    :cond_4
    instance-of p0, v0, Lcom/mi/google/gson/JsonObject;

    if-eqz p0, :cond_5

    .line 126
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 127
    :cond_5
    instance-of p0, v0, Lcom/mi/google/gson/JsonArray;

    if-eqz p0, :cond_6

    .line 128
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 129
    :cond_6
    instance-of p0, v0, Lcom/mi/google/gson/JsonPrimitive;

    if-eqz p0, :cond_a

    .line 130
    check-cast v0, Lcom/mi/google/gson/JsonPrimitive;

    .line 131
    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->isString()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 132
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->STRING:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 133
    :cond_7
    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->isBoolean()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 134
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->BOOLEAN:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 135
    :cond_8
    invoke-virtual {v0}, Lcom/mi/google/gson/JsonPrimitive;->isNumber()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 136
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->NUMBER:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 138
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 140
    :cond_a
    instance-of p0, v0, Lcom/mi/google/gson/JsonNull;

    if-eqz p0, :cond_b

    .line 141
    sget-object p0, Lcom/mi/google/gson/stream/JsonToken;->NULL:Lcom/mi/google/gson/stream/JsonToken;

    return-object p0

    .line 142
    :cond_b
    sget-object p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    if-ne v0, p0, :cond_c

    .line 143
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonReader is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public promoteNameToValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->NAME:Lcom/mi/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/mi/google/gson/stream/JsonToken;)V

    .line 273
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 274
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    .line 276
    new-instance v1, Lcom/mi/google/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/mi/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public skipValue()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->NAME:Lcom/mi/google/gson/stream/JsonToken;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathNames:[Ljava/lang/String;

    iget v1, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput-object v2, v0, v1

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->pathIndices:[I

    iget p0, p0, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
