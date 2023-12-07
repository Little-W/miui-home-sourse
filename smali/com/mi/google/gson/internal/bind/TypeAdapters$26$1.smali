.class Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;
.super Lcom/mi/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/google/gson/internal/bind/TypeAdapters$26;->create(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mi/google/gson/TypeAdapter<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/google/gson/internal/bind/TypeAdapters$26;

.field final synthetic val$dateTypeAdapter:Lcom/mi/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/mi/google/gson/internal/bind/TypeAdapters$26;Lcom/mi/google/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;->this$0:Lcom/mi/google/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

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

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lcom/mi/google/gson/TypeAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
