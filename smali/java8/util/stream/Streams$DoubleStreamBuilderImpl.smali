.class final Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;
.super Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;
.implements Ljava8/util/stream/DoubleStream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Double;",
        "Ljava8/util/Spliterator$OfDouble;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/stream/DoubleStream$Builder;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/SpinedBuffer$OfDouble;

.field first:D


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 703
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    .line 710
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    .line 711
    iput-wide p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    const/4 p1, -0x2

    .line 712
    iput p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3

    .line 719
    iget v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 720
    iput-wide p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    .line 721
    iget p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    goto :goto_0

    .line 723
    :cond_0
    iget v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 724
    iget-object v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfDouble;

    if-nez v0, :cond_1

    .line 725
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfDouble;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfDouble;

    .line 726
    iget-object v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfDouble;

    iget-wide v1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-virtual {v0, v1, v2}, Ljava8/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 727
    iget v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    .line 730
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    :goto_0
    return-void

    .line 733
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public add(D)Ljava8/util/stream/DoubleStream$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->accept(D)V

    return-object p0
.end method

.method public build()Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 745
    iget v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    if-ltz v0, :cond_1

    .line 748
    iget v1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 751
    invoke-static {p0, v2}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer$OfDouble;

    invoke-virtual {v0}, Ljava8/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0, v2}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    :goto_0
    return-object v0

    .line 754
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 689
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

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

    .line 792
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 2

    .line 782
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 785
    iget-wide v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    const/4 p1, -0x1

    .line 786
    iput p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    :cond_0
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 689
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

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

    .line 777
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 2

    .line 763
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 766
    iget-wide v0, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->first:D

    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    const/4 p1, -0x1

    .line 767
    iput p1, p0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;->count:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 689
    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 689
    invoke-super {p0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
