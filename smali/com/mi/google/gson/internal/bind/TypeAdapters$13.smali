.class final Lcom/mi/google/gson/internal/bind/TypeAdapters$13;
.super Lcom/mi/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mi/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->NULL:Lcom/mi/google/gson/stream/JsonToken;

    if-ne p0, v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    .line 354
    :cond_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/TypeAdapters$13;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    invoke-virtual {p1, p2}, Lcom/mi/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/mi/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/internal/bind/TypeAdapters$13;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
