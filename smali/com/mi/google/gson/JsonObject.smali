.class public final Lcom/mi/google/gson/JsonObject;
.super Lcom/mi/google/gson/JsonElement;


# instance fields
.field private final members:Lcom/mi/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mi/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Lcom/mi/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/google/gson/JsonElement;-><init>()V

    new-instance v0, Lcom/mi/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/mi/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/mi/google/gson/JsonObject;->members:Lcom/mi/google/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/mi/google/gson/JsonElement;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Lcom/mi/google/gson/JsonNull;->INSTANCE:Lcom/mi/google/gson/JsonNull;

    :cond_0
    iget-object p0, p0, Lcom/mi/google/gson/JsonObject;->members:Lcom/mi/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0, p1, p2}, Lcom/mi/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/mi/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mi/google/gson/JsonObject;->members:Lcom/mi/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0}, Lcom/mi/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/mi/google/gson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/google/gson/JsonObject;

    iget-object p1, p1, Lcom/mi/google/gson/JsonObject;->members:Lcom/mi/google/gson/internal/LinkedTreeMap;

    iget-object p0, p0, Lcom/mi/google/gson/JsonObject;->members:Lcom/mi/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p1, p0}, Lcom/mi/google/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/mi/google/gson/JsonObject;->members:Lcom/mi/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p0}, Lcom/mi/google/gson/internal/LinkedTreeMap;->hashCode()I

    move-result p0

    return p0
.end method
