.class public abstract Lcom/mi/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final nullSafe()Lcom/mi/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/mi/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/mi/google/gson/TypeAdapter$1;-><init>(Lcom/mi/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
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
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/mi/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/mi/google/gson/JsonElement;"
        }
    .end annotation

    .line 233
    :try_start_0
    new-instance v0, Lcom/mi/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/mi/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Lcom/mi/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/mi/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 237
    new-instance p1, Lcom/mi/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/mi/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
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
.end method
