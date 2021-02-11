.class final Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
.super Ljava/lang/Object;
.source "ThreadLocalRandom.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RandomIntsSpliterator"
.end annotation


# instance fields
.field final bound:I

.field final fence:J

.field index:J

.field final origin:I


# direct methods
.method constructor <init>(JJII)V
    .locals 0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    iput-wide p1, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iput-wide p3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    .line 744
    iput p5, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iput p6, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

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

    .line 754
    iget-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    iget-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 736
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 808
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 9

    .line 794
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    iget-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 797
    iput-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    .line 798
    iget v4, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v5, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    .line 799
    invoke-static {}, Ljava8/util/concurrent/ThreadLocalRandom;->current()Ljava8/util/concurrent/ThreadLocalRandom;

    move-result-object v6

    .line 801
    :cond_0
    invoke-static {v6, v4, v5}, Ljava8/util/concurrent/ThreadLocalRandom;->access$000(Ljava8/util/concurrent/ThreadLocalRandom;II)I

    move-result v7

    invoke-interface {p1, v7}, Ljava8/util/function/IntConsumer;->accept(I)V

    const-wide/16 v7, 0x1

    add-long/2addr v0, v7

    cmp-long v7, v0, v2

    if-ltz v7, :cond_0

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 774
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 764
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 769
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 736
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

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
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 790
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 5

    .line 778
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    iget-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v2, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 781
    invoke-static {}, Ljava8/util/concurrent/ThreadLocalRandom;->current()Ljava8/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    iget v3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v4, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    invoke-static {v2, v3, v4}, Ljava8/util/concurrent/ThreadLocalRandom;->access$000(Ljava8/util/concurrent/ThreadLocalRandom;II)I

    move-result v2

    invoke-interface {p1, v2}, Ljava8/util/function/IntConsumer;->accept(I)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 782
    iput-wide v0, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 736
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 736
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 736
    invoke-virtual {p0}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    .locals 8

    .line 748
    iget-wide v1, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget-wide v3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->fence:J

    add-long/2addr v3, v1

    const/4 v0, 0x1

    ushr-long/2addr v3, v0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 749
    :cond_0
    new-instance v7, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    iput-wide v3, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->index:J

    iget v5, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->origin:I

    iget v6, p0, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;->bound:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava8/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    :goto_0
    return-object v0
.end method
