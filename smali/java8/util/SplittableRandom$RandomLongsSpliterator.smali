.class final Ljava8/util/SplittableRandom$RandomLongsSpliterator;
.super Ljava/lang/Object;
.source "SplittableRandom.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/SplittableRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomLongsSpliterator"
.end annotation


# instance fields
.field final bound:J

.field final fence:J

.field index:J

.field final origin:J

.field final rng:Ljava8/util/SplittableRandom;


# direct methods
.method constructor <init>(Ljava8/util/SplittableRandom;JJJJ)V
    .locals 0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    iput-object p1, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava8/util/SplittableRandom;

    iput-wide p2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iput-wide p4, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    .line 960
    iput-wide p6, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iput-wide p8, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4540

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 970
    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 951
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

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

    .line 1039
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 11

    .line 990
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 993
    iput-wide v2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    .line 994
    iget-object v4, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava8/util/SplittableRandom;

    .line 995
    iget-wide v5, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v7, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    .line 997
    :cond_0
    invoke-virtual {v4, v5, v6, v7, v8}, Ljava8/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v9

    invoke-interface {p1, v9, v10}, Ljava8/util/function/LongConsumer;->accept(J)V

    const-wide/16 v9, 0x1

    add-long/2addr v0, v9

    cmp-long v9, v0, v2

    if-ltz v9, :cond_0

    :cond_1
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

    .line 1023
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1007
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1015
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 951
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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

    .line 1031
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 7

    .line 979
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 982
    iget-object v2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava8/util/SplittableRandom;

    iget-wide v3, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v5, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava8/util/SplittableRandom;->internalNextLong(JJ)J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Ljava8/util/function/LongConsumer;->accept(J)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 983
    iput-wide v0, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 951
    invoke-virtual {p0}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 951
    invoke-virtual {p0}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 951
    invoke-virtual {p0}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->trySplit()Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava8/util/SplittableRandom$RandomLongsSpliterator;
    .locals 11

    .line 964
    iget-wide v2, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v0, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->fence:J

    add-long/2addr v0, v2

    const/4 v4, 0x1

    ushr-long v4, v0, v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :cond_0
    new-instance v10, Ljava8/util/SplittableRandom$RandomLongsSpliterator;

    iget-object v0, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->rng:Ljava8/util/SplittableRandom;

    .line 966
    invoke-virtual {v0}, Ljava8/util/SplittableRandom;->split()Ljava8/util/SplittableRandom;

    move-result-object v1

    iput-wide v4, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->index:J

    iget-wide v6, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->origin:J

    iget-wide v8, p0, Ljava8/util/SplittableRandom$RandomLongsSpliterator;->bound:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ljava8/util/SplittableRandom$RandomLongsSpliterator;-><init>(Ljava8/util/SplittableRandom;JJJJ)V

    :goto_0
    return-object v0
.end method
