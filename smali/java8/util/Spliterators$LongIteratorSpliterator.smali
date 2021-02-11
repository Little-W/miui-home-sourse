.class final Ljava8/util/Spliterators$LongIteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongIteratorSpliterator"
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J

.field private it:Ljava8/util/PrimitiveIterator$OfLong;


# direct methods
.method public constructor <init>(Ljava8/util/PrimitiveIterator$OfLong;I)V
    .locals 2

    .line 3082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3083
    iput-object p1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    const-wide v0, 0x7fffffffffffffffL

    .line 3084
    iput-wide v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    and-int/lit16 p1, p2, -0x4041

    .line 3085
    iput p1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava8/util/PrimitiveIterator$OfLong;JI)V
    .locals 0

    .line 3065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3066
    iput-object p1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    .line 3067
    iput-wide p2, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    and-int/lit16 p1, p4, 0x1000

    if-nez p1, :cond_0

    or-int/lit8 p1, p4, 0x40

    or-int/lit16 p4, p1, 0x4000

    .line 3068
    :cond_0
    iput p4, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 3140
    iget v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 3136
    iget-wide v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 3047
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$LongIteratorSpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3116
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 1

    .line 3111
    iget-object v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-static {v0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava8/util/PrimitiveIterator$OfLong;Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 3154
    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$LongIteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3157
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 3144
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 3149
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 3047
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$LongIteratorSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 3131
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 2

    .line 3121
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3122
    iget-object v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3123
    iget-object v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 7

    .line 3090
    iget-object v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->it:Ljava8/util/PrimitiveIterator$OfLong;

    .line 3091
    iget-wide v1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 3092
    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3093
    iget v3, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    long-to-int v3, v1

    :cond_0
    const/high16 v1, 0x2000000

    if-le v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3098
    :goto_0
    new-array v2, v1, [J

    const/4 v3, 0x0

    move v4, v3

    .line 3100
    :cond_2
    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_3

    invoke-interface {v0}, Ljava8/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3101
    :cond_3
    iput v4, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->batch:I

    .line 3102
    iget-wide v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-eqz v5, :cond_4

    int-to-long v5, v4

    sub-long/2addr v0, v5

    .line 3103
    iput-wide v0, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->est:J

    .line 3104
    :cond_4
    new-instance v0, Ljava8/util/Spliterators$LongArraySpliterator;

    iget v1, p0, Ljava8/util/Spliterators$LongIteratorSpliterator;->characteristics:I

    invoke-direct {v0, v2, v3, v4, v1}, Ljava8/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 3047
    invoke-virtual {p0}, Ljava8/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 3047
    invoke-virtual {p0}, Ljava8/util/Spliterators$LongIteratorSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
