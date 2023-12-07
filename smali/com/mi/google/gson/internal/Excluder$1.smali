.class Lcom/mi/google/gson/internal/Excluder$1;
.super Lcom/mi/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/google/gson/internal/Excluder;->create(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mi/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/mi/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mi/google/gson/internal/Excluder;

.field final synthetic val$gson:Lcom/mi/google/gson/Gson;

.field final synthetic val$skipDeserialize:Z

.field final synthetic val$skipSerialize:Z

.field final synthetic val$type:Lcom/mi/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/mi/google/gson/internal/Excluder;ZZLcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/google/gson/internal/Excluder$1;->this$0:Lcom/mi/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$gson:Lcom/mi/google/gson/Gson;

    iput-object p5, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$type:Lcom/mi/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

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

    iget-object v0, p0, Lcom/mi/google/gson/internal/Excluder$1;->delegate:Lcom/mi/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$gson:Lcom/mi/google/gson/Gson;

    iget-object v1, p0, Lcom/mi/google/gson/internal/Excluder$1;->this$0:Lcom/mi/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$type:Lcom/mi/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/mi/google/gson/Gson;->getDelegateAdapter(Lcom/mi/google/gson/TypeAdapterFactory;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/google/gson/internal/Excluder$1;->delegate:Lcom/mi/google/gson/TypeAdapter;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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

    iget-boolean v0, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->skipValue()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/Excluder$1;->delegate()Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/TypeAdapter;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/mi/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->nullValue()Lcom/mi/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mi/google/gson/internal/Excluder$1;->delegate()Lcom/mi/google/gson/TypeAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/TypeAdapter;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
