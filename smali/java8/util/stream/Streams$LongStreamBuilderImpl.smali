.class final Ljava8/util/stream/Streams$LongStreamBuilderImpl;
.super Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;
.implements Ljava8/util/stream/LongStream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Long;",
        "Ljava8/util/Spliterator$OfLong;",
        ">;",
        "Ljava8/util/Spliterator$OfLong;",
        "Ljava8/util/stream/LongStream$Builder;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/SpinedBuffer$OfLong;

.field first:J


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 596
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    .line 604
    iput-wide p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->first:J

    const/4 p1, -0x2

    .line 605
    iput p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    .line 612
    iget v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 613
    iput-wide p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 614
    iget p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    goto :goto_0

    .line 616
    :cond_0
    iget v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 617
    iget-object v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfLong;

    if-nez v0, :cond_1

    .line 618
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfLong;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfLong;

    .line 619
    iget-object v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfLong;

    iget-wide v1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-virtual {v0, v1, v2}, Ljava8/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 620
    iget v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 623
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfLong;->accept(J)V

    :goto_0
    return-void

    .line 626
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public add(J)Ljava8/util/stream/LongStream$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->accept(J)V

    return-object p0
.end method

.method public build()Ljava8/util/stream/LongStream;
    .locals 3

    .line 638
    iget v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1

    .line 641
    iget v1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 644
    invoke-static {p0, v2}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0}, Ljava8/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0, v2}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    :goto_0
    return-object v0

    .line 647
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 582
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

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

    .line 685
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 2

    .line 675
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 678
    iget-wide v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    const/4 p1, -0x1

    .line 679
    iput p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 582
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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

    .line 670
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 2

    .line 656
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 659
    iget-wide v0, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    const/4 p1, -0x1

    .line 660
    iput p1, p0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 582
    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 582
    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
