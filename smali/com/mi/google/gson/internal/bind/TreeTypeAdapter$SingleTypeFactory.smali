.class final Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/mi/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleTypeFactory"
.end annotation


# instance fields
.field private final deserializer:Lcom/mi/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end field

.field private final exactType:Lcom/mi/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/reflect/TypeToken<",
            "*>;"
        }
    .end annotation
.end field

.field private final hierarchyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final matchRawType:Z

.field private final serializer:Lcom/mi/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method public create(Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;)Lcom/mi/google/gson/TypeAdapter;
    .locals 7
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

    .line 143
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/mi/google/gson/reflect/TypeToken;

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0, p2}, Lcom/mi/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->matchRawType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->exactType:Lcom/mi/google/gson/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/mi/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mi/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->hierarchyType:Ljava/lang/Class;

    .line 145
    invoke-virtual {p2}, Lcom/mi/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 146
    new-instance v0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;

    iget-object v2, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->serializer:Lcom/mi/google/gson/JsonSerializer;

    iget-object v3, p0, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;->deserializer:Lcom/mi/google/gson/JsonDeserializer;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/mi/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/mi/google/gson/JsonSerializer;Lcom/mi/google/gson/JsonDeserializer;Lcom/mi/google/gson/Gson;Lcom/mi/google/gson/reflect/TypeToken;Lcom/mi/google/gson/TypeAdapterFactory;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
