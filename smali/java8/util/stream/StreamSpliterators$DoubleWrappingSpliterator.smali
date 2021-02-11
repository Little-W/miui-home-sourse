.class final Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.super Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/SpinedBuffer$OfDouble;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-void
.end method

.method static synthetic lambda$initPartialTraversalState$36(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)Z
    .locals 1

    .line 635
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    iget-object p0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 580
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 701
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 2

    .line 659
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    if-nez v0, :cond_0

    .line 660
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->init()V

    .line 663
    new-instance v0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;-><init>(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;Ljava8/util/function/DoubleConsumer;)V

    .line 691
    iget-object p1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {p1, v0, v1}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    const/4 p1, 0x1

    .line 692
    iput-boolean p1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void
.end method

.method initPartialTraversalState()V
    .locals 2

    .line 603
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 604
    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    .line 606
    new-instance v1, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;

    invoke-direct {v1, p0, v0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$1;-><init>(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;Ljava8/util/stream/SpinedBuffer$OfDouble;)V

    .line 634
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v0, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljava8/util/stream/Sink;

    .line 635
    invoke-static {p0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)Ljava8/util/function/BooleanSupplier;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->pusher:Ljava8/util/function/BooleanSupplier;

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 580
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

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
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 654
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 4

    .line 645
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->doAdvance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava8/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava8/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava8/util/stream/SpinedBuffer$OfDouble;->get(J)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    :cond_0
    return v0
.end method

.method public trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 640
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 580
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 580
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljava8/util/Spliterator$OfDouble;

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
            "Ljava/lang/Double;",
            "*>;"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava8/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)V

    return-object v0
.end method
