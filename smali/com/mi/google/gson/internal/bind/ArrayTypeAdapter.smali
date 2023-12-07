.class public final Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;
.super Lcom/mi/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mi/google/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lcom/mi/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/TypeAdapter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/mi/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/TypeAdapter;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/Gson;",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/mi/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/mi/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    iput-object p3, p0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 2
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->endArray()V

    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
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

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->endArray()Lcom/mi/google/gson/stream/JsonWriter;

    return-void
.end method
