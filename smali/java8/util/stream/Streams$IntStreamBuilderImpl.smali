.class final Ljava8/util/stream/Streams$IntStreamBuilderImpl;
.super Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;
.implements Ljava8/util/stream/IntStream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Integer;",
        "Ljava8/util/Spliterator$OfInt;",
        ">;",
        "Ljava8/util/Spliterator$OfInt;",
        "Ljava8/util/stream/IntStream$Builder;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

.field first:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 496
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    .line 497
    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    const/4 p1, -0x2

    .line 498
    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    .line 505
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 506
    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 507
    iget p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    goto :goto_0

    .line 509
    :cond_0
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 510
    iget-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    if-nez v0, :cond_1

    .line 511
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    .line 512
    iget-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    iget v1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-virtual {v0, v1}, Ljava8/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 513
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 516
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->accept(I)V

    :goto_0
    return-void

    .line 519
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public add(I)Ljava8/util/stream/IntStream$Builder;
    .locals 0

    .line 525
    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->accept(I)V

    return-object p0
.end method

.method public build()Ljava8/util/stream/IntStream;
    .locals 3

    .line 531
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1

    .line 534
    iget v1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 537
    invoke-static {p0, v2}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0}, Ljava8/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0, v2}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object v0

    :goto_0
    return-object v0

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 475
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

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

    .line 578
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 2

    .line 568
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 571
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    const/4 p1, -0x1

    .line 572
    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 475
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

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

    .line 563
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 2

    .line 549
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 552
    iget v0, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    const/4 p1, -0x1

    .line 553
    iput p1, p0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 475
    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 475
    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
