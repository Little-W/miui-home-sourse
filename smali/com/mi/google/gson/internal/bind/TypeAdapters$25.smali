.class final Lcom/mi/google/gson/internal/bind/TypeAdapters$25;
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
        "Ljava/util/Currency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/TypeAdapters$25;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/util/Currency;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/util/Currency;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/internal/bind/TypeAdapters$25;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/util/Currency;)V

    return-void
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/util/Currency;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 583
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mi/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/mi/google/gson/stream/JsonWriter;

    return-void
.end method
