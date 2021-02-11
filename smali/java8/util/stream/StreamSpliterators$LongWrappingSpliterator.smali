.class final Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;
.super Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/SpinedBuffer$OfLong;",
        ">;",
        "Ljava8/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 462
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-void
.end method

.method static synthetic lambda$initPartialTraversalState$35(Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;)Z
    .locals 1

    .line 510
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 455
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

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

    .line 576
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 2

    .line 534
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 535
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->init()V

    .line 538
    new-instance v0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$2;-><init>(Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;Ljava8/util/function/LongConsumer;)V

    .line 566
    iget-object p1, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {p1, v0, v1}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    const/4 p1, 0x1

    .line 567
    iput-boolean p1, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 570
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 2

    .line 478
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 479
    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    .line 481
    new-instance v1, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;

    invoke-direct {v1, p0, v0}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;-><init>(Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;Ljava8/util/stream/SpinedBuffer$OfLong;)V

    .line 509
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v0, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    .line 510
    invoke-static {p0}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;)Ljava8/util/function/BooleanSupplier;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->pusher:Ljava8/util/function/BooleanSupplier;

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 455
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

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

    .line 529
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 4

    .line 520
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava8/util/stream/SpinedBuffer$OfLong;

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava8/util/stream/SpinedBuffer$OfLong;->get(J)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava8/util/function/LongConsumer;->accept(J)V

    :cond_0
    return v0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 515
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 455
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 455
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method wrap(Ljava8/util/Spliterator;)Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;",
            "Ljava/lang/Long;",
            "*>;"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-object v0
.end method
