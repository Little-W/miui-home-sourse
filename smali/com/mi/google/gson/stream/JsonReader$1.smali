.class final Lcom/mi/google/gson/stream/JsonReader$1;
.super Lcom/mi/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1585
    invoke-direct {p0}, Lcom/mi/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/mi/google/gson/stream/JsonReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1587
    instance-of p0, p1, Lcom/mi/google/gson/internal/bind/JsonTreeReader;

    if-eqz p0, :cond_0

    .line 1588
    check-cast p1, Lcom/mi/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {p1}, Lcom/mi/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    return-void

    .line 1591
    :cond_0
    iget p0, p1, Lcom/mi/google/gson/stream/JsonReader;->peeked:I

    if-nez p0, :cond_1

    .line 1593
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->doPeek()I

    move-result p0

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const/16 p0, 0x9

    .line 1596
    iput p0, p1, Lcom/mi/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    const/16 p0, 0x8

    .line 1598
    iput p0, p1, Lcom/mi/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    const/16 p0, 0xa

    .line 1600
    iput p0, p1, Lcom/mi/google/gson/stream/JsonReader;->peeked:I

    :goto_0
    return-void

    .line 1602
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a name but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {p1}, Lcom/mi/google/gson/stream/JsonReader;->peek()Lcom/mi/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/mi/google/gson/stream/JsonReader;->access$000(Lcom/mi/google/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
