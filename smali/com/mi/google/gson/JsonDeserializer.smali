.class public interface abstract Lcom/mi/google/gson/JsonDeserializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Lcom/mi/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/mi/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mi/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/mi/google/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/google/gson/JsonParseException;
        }
    .end annotation
.end method
