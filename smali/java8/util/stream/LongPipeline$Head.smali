.class Ljava8/util/stream/LongPipeline$Head;
.super Ljava8/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/LongPipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .line 540
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/LongPipeline;-><init>(Ljava8/util/Spliterator;IZ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/function/Supplier;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 527
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/LongPipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava8/util/function/LongConsumer;)V
    .locals 1

    .line 557
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline$Head;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/LongPipeline;->access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/LongPipeline;->forEach(Ljava8/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/LongConsumer;)V
    .locals 1

    .line 566
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline$Head;->sourceStageSpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/LongPipeline;->access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    goto :goto_0

    .line 569
    :cond_0
    invoke-super {p0, p1}, Ljava8/util/stream/LongPipeline;->forEachOrdered(Ljava8/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 515
    invoke-super {p0}, Ljava8/util/stream/LongPipeline;->iterator()Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    .line 515
    invoke-super {p0, p1}, Ljava8/util/stream/LongPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method final opIsStateful()Z
    .locals 1

    .line 545
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 550
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/LongStream;
    .locals 1

    .line 515
    invoke-super {p0}, Ljava8/util/stream/LongPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/LongStream;
    .locals 1

    .line 515
    invoke-super {p0}, Ljava8/util/stream/LongPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 515
    invoke-super {p0}, Ljava8/util/stream/LongPipeline;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 1

    .line 515
    invoke-super {p0}, Ljava8/util/stream/LongPipeline;->unordered()Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
