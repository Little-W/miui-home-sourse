.class public final Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;
.super Lcom/mi/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mi/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.GsonContextImpl;"
        }
    .end annotation
.end field

.field private delegate:Lcom/mi/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/mi/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/mi/google/gson/Gson;

.field private final serializer:Lcom/mi/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/mi/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/mi/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mi/google/gson/JsonSerializer;Lcom/mi/google/gson/JsonDeserializer;Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;Lcom/mi/google/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/mi/google/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/mi/google/gson/Gson;",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "TT;>;",
            "Lcom/mi/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    .line 47
    new-instance v0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->context:Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 54
    iput-object p1, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/mi/google/gson/JsonSerializer;

    .line 55
    iput-object p2, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/mi/google/gson/JsonDeserializer;

    .line 56
    iput-object p3, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/mi/google/gson/Gson;

    .line 57
    iput-object p4, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/mi/google/gson/reflect/TypeToken;

    .line 58
    iput-object p5, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/mi/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private delegate()Lcom/mi/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/mi/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/mi/google/gson/Gson;

    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->skipPast:Lcom/mi/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/mi/google/gson/reflect/TypeToken;

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/mi/google/gson/Gson;->getDelegateAdapter(Lcom/mi/google/gson/TypeAdapterFactory;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/mi/google/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/mi/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/mi/google/gson/internal/Streams;->parse(Lcom/mi/google/gson/stream/JsonReader;)Lcom/mi/google/gson/JsonElement;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/mi/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->deserializer:Lcom/mi/google/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/mi/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/mi/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->context:Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p1, v1, p0}, Lcom/mi/google/gson/JsonDeserializer;->deserialize(Lcom/mi/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/mi/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/mi/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->nullValue()Lcom/mi/google/gson/stream/JsonWriter;

    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/mi/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/mi/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;->context:Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, p0}, Lcom/mi/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/mi/google/gson/JsonSerializationContext;)Lcom/mi/google/gson/JsonElement;

    move-result-object p0

    .line 82
    invoke-static {p0, p1}, Lcom/mi/google/gson/internal/Streams;->write(Lcom/mi/google/gson/JsonElement;Lcom/mi/google/gson/stream/JsonWriter;)V

    return-void
.end method
