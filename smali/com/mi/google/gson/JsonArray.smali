.class public final Lcom/mi/google/gson/JsonArray;
.super Lcom/mi/google/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mi/google/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lcom/mi/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mi/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/mi/google/gson/JsonElement;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/mi/google/gson/JsonElement;)V
    .locals 0

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lcom/mi/google/gson/JsonNull;->INSTANCE:Lcom/mi/google/gson/JsonNull;

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 366
    instance-of v0, p1, Lcom/mi/google/gson/JsonArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/google/gson/JsonArray;

    iget-object p1, p1, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getAsBoolean()Z
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 359
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/mi/google/gson/JsonElement;->getAsBoolean()Z

    move-result p0

    return p0

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAsDouble()D
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/mi/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    .line 231
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAsInt()I
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 311
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/mi/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0

    .line 313
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAsLong()J
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/mi/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    .line 297
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/mi/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 199
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mi/google/gson/JsonElement;

    invoke-virtual {p0}, Lcom/mi/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public hashCode()I
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/mi/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/mi/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
