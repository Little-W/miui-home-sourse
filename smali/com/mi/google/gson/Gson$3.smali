.class Lcom/mi/google/gson/Gson$3;
.super Lcom/mi/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/google/gson/Gson;->floatAdapter(Z)Lcom/mi/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mi/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/mi/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/google/gson/Gson$3;->this$0:Lcom/mi/google/gson/Gson;

    invoke-direct {p0}, Lcom/mi/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/mi/google/gson/stream/JsonToken;->NULL:Lcom/mi/google/gson/stream/JsonToken;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    invoke-virtual {p0, p1}, Lcom/mi/google/gson/Gson$3;->read(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonWriter;->nullValue()Lcom/mi/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Lcom/mi/google/gson/Gson;->checkValidFloatingPoint(D)V

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

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/Gson$3;->write(Lcom/mi/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
