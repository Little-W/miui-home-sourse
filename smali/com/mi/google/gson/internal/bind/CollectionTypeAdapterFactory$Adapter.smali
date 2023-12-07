.class final Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/mi/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mi/google/gson/TypeAdapter<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/mi/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/mi/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/TypeAdapter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mi/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/mi/google/gson/TypeAdapter;Lcom/mi/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TE;>;",
            "Lcom/mi/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/mi/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcom/mi/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    iput-object p4, p0, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/mi/google/gson/internal/ObjectConstructor;

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

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/mi/google/gson/stream/JsonToken;->NULL:Lcom/mi/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/mi/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/mi/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->endArray()V

    return-object v0
.end method

.method public bridge synthetic write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/stream/JsonWriter;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->nullValue()Lcom/mi/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->beginArray()Lcom/mi/google/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->endArray()Lcom/mi/google/gson/stream/JsonWriter;

    return-void
.end method
