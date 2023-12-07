.class public final Lcom/mi/google/gson/internal/Streams;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/google/gson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method public static parse(Lcom/mi/google/gson/stream/JsonReader;)Lcom/mi/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonParseException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/mi/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/mi/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {v1, p0}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mi/google/gson/stream/MalformedJsonException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object p0, Lcom/mi/google/gson/JsonNull;->INSTANCE:Lcom/mi/google/gson/JsonNull;

    return-object p0

    :cond_0
    new-instance v0, Lcom/mi/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static write(Lcom/mi/google/gson/JsonElement;Lcom/mi/google/gson/stream/JsonWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mi/google/gson/internal/Streams$AppendableWriter;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
