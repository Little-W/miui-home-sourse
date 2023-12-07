.class final Lcom/mi/google/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/mi/google/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/mi/google/gson/TypeAdapter;


# virtual methods
.method public create(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mi/google/gson/Gson;",
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/mi/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/mi/google/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/mi/google/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/mi/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mi/google/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/mi/google/gson/TypeAdapter;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
