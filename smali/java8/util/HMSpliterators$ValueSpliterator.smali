.class final Ljava8/util/HMSpliterators$ValueSpliterator;
.super Ljava8/util/HMSpliterators$HashMapSpliterator;
.source "HMSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/HMSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/HMSpliterators$HashMapSpliterator<",
        "TK;TV;>;",
        "Ljava8/util/Spliterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/HashMap;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 150
    invoke-direct/range {p0 .. p5}, Ljava8/util/HMSpliterators$HashMapSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .line 216
    iget v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->fence:I

    if-ltz v0, :cond_1

    iget v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->est:I

    iget-object v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x40

    :goto_1
    return v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 163
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->map:Ljava/util/HashMap;

    .line 166
    invoke-static {v0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getTable(Ljava/util/HashMap;)[Ljava/lang/Object;

    move-result-object v1

    .line 167
    iget v2, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->fence:I

    if-gez v2, :cond_1

    .line 168
    invoke-static {v0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result v2

    iput v2, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->expectedModCount:I

    if-nez v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 169
    :cond_0
    array-length v3, v1

    :goto_0
    iput v3, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->fence:I

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1

    .line 171
    :cond_1
    iget v3, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->expectedModCount:I

    :goto_1
    if-eqz v1, :cond_6

    .line 173
    array-length v4, v1

    if-lt v4, v2, :cond_6

    iget v4, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    if-ltz v4, :cond_6

    iput v2, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    if-lt v4, v2, :cond_2

    iget-object v5, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    if-eqz v5, :cond_6

    .line 175
    :cond_2
    iget-object v5, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 176
    iput-object v6, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    :cond_3
    if-nez v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    .line 179
    aget-object v4, v1, v4

    move v7, v5

    move-object v5, v4

    move v4, v7

    goto :goto_2

    .line 181
    :cond_4
    invoke-static {v5}, Ljava8/util/HMSpliterators$HashMapSpliterator;->getNodeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 182
    invoke-static {v5}, Ljava8/util/HMSpliterators$ValueSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_3

    if-lt v4, v2, :cond_3

    .line 185
    invoke-static {v0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result p1

    if-ne v3, p1, :cond_5

    goto :goto_3

    .line 186
    :cond_5
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 221
    invoke-static {v0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 193
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getTable(Ljava/util/HashMap;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 196
    array-length v1, v0

    invoke-virtual {p0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getFence()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    if-ltz v1, :cond_3

    .line 197
    :goto_0
    iget-object v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    if-ge v1, v2, :cond_3

    .line 198
    :cond_0
    iget-object v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 199
    iget v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    invoke-static {v0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getNodeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    iget-object v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    invoke-static {v1}, Ljava8/util/HMSpliterators$ValueSpliterator;->getNextNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    .line 203
    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 204
    iget p1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->expectedModCount:I

    iget-object v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getModCount(Ljava/util/HashMap;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_2
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/HMSpliterators$ValueSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/HMSpliterators$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Ljava8/util/HMSpliterators$ValueSpliterator;->getFence()I

    move-result v0

    iget v3, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    add-int/2addr v0, v3

    ushr-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_1

    .line 156
    iget-object v0, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->current:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/HMSpliterators$ValueSpliterator;

    iget-object v2, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->map:Ljava/util/HashMap;

    iput v4, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->index:I

    iget v1, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->est:I

    ushr-int/lit8 v5, v1, 0x1

    iput v5, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->est:I

    iget v6, p0, Ljava8/util/HMSpliterators$ValueSpliterator;->expectedModCount:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava8/util/HMSpliterators$ValueSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 145
    invoke-virtual {p0}, Ljava8/util/HMSpliterators$ValueSpliterator;->trySplit()Ljava8/util/HMSpliterators$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method
