.class final Lcom/mi/google/gson/internal/bind/TypeAdapters$29;
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
        "Lcom/mi/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/mi/google/gson/stream/JsonReader;)Lcom/mi/google/gson/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 716
    sget-object v0, Lcom/mi/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 748
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 736
    :pswitch_0
    new-instance v0, Lcom/mi/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/mi/google/gson/JsonObject;-><init>()V

    .line 737
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->beginObject()V

    .line 738
    :goto_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/mi/google/gson/stream/JsonReader;)Lcom/mi/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mi/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/mi/google/gson/JsonElement;)V

    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    .line 728
    :pswitch_1
    new-instance v0, Lcom/mi/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/mi/google/gson/JsonArray;-><init>()V

    .line 729
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->beginArray()V

    .line 730
    :goto_1
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/mi/google/gson/stream/JsonReader;)Lcom/mi/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/google/gson/JsonArray;->add(Lcom/mi/google/gson/JsonElement;)V

    goto :goto_1

    .line 733
    :cond_1
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->endArray()V

    return-object v0

    .line 725
    :pswitch_2
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextNull()V

    .line 726
    sget-object p0, Lcom/mi/google/gson/JsonNull;->INSTANCE:Lcom/mi/google/gson/JsonNull;

    return-object p0

    .line 718
    :pswitch_3
    new-instance p0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mi/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 723
    :pswitch_4
    new-instance p0, Lcom/mi/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mi/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    .line 720
    :pswitch_5
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    .line 721
    new-instance p1, Lcom/mi/google/gson/JsonPrimitive;

    new-instance v0, Lcom/mi/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/mi/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object p1

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

.method public bridge synthetic read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/TypeAdapters$29;->read(Lcom/mi/google/gson/stream/JsonReader;)Lcom/mi/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Lcom/mi/google/gson/JsonElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 753
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 755
    :cond_0
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 756
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/mi/google/gson/JsonPrimitive;

    move-result-object p0

    .line 757
    invoke-virtual {p0}, Lcom/mi/google/gson/JsonPrimitive;->isNumber()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 758
    invoke-virtual {p0}, Lcom/mi/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mi/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/mi/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/mi/google/gson/JsonPrimitive;->isBoolean()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 760
    invoke-virtual {p0}, Lcom/mi/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/mi/google/gson/stream/JsonWriter;->value(Z)Lcom/mi/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    .line 762
    :cond_2
    invoke-virtual {p0}, Lcom/mi/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mi/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/mi/google/gson/stream/JsonWriter;

    goto/16 :goto_3

    .line 765
    :cond_3
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 766
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->beginArray()Lcom/mi/google/gson/stream/JsonWriter;

    .line 767
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->getAsJsonArray()Lcom/mi/google/gson/JsonArray;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonElement;

    .line 768
    invoke-virtual {p0, p1, v0}, Lcom/mi/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/mi/google/gson/stream/JsonWriter;Lcom/mi/google/gson/JsonElement;)V

    goto :goto_0

    .line 770
    :cond_4
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->endArray()Lcom/mi/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 772
    :cond_5
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->beginObject()Lcom/mi/google/gson/stream/JsonWriter;

    .line 774
    invoke-virtual {p2}, Lcom/mi/google/gson/JsonElement;->getAsJsonObject()Lcom/mi/google/gson/JsonObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 775
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/mi/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/mi/google/gson/stream/JsonWriter;

    .line 776
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/mi/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/mi/google/gson/stream/JsonWriter;Lcom/mi/google/gson/JsonElement;)V

    goto :goto_1

    .line 778
    :cond_6
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->endObject()Lcom/mi/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 781
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 754
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->nullValue()Lcom/mi/google/gson/stream/JsonWriter;

    :goto_3
    return-void
.end method

.method public bridge synthetic write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    check-cast p2, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/internal/bind/TypeAdapters$29;->write(Lcom/mi/google/gson/stream/JsonWriter;Lcom/mi/google/gson/JsonElement;)V

    return-void
.end method
