.class public final Ljava8/util/stream/IntStreams;
.super Ljava/lang/Object;
.source "IntStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Ljava8/util/stream/IntStream$Builder;
    .locals 1

    .line 104
    new-instance v0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava8/util/stream/IntStream;Ljava8/util/stream/IntStream;)Ljava8/util/stream/IntStream;
    .locals 3

    .line 367
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava8/util/stream/Streams$ConcatSpliterator$OfInt;

    .line 371
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Ljava8/util/stream/IntStream;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;Ljava8/util/Spliterator$OfInt;)V

    .line 372
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava8/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object v0

    .line 373
    invoke-static {p0, p1}, Ljava8/util/stream/Streams;->composedClose(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public static dropWhile(Ljava8/util/stream/IntStream;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 3

    .line 87
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    .line 92
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljava8/util/Spliterator$OfInt;ZLjava8/util/function/IntPredicate;)V

    .line 93
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->isParallel()Z

    move-result p1

    .line 91
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p1

    .line 93
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method

.method public static empty()Ljava8/util/stream/IntStream;
    .locals 2

    .line 113
    invoke-static {}, Ljava8/util/Spliterators;->emptyIntSpliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava8/util/function/IntSupplier;)Ljava8/util/stream/IntStream;
    .locals 3

    .line 274
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava8/util/function/IntSupplier;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILjava8/util/function/IntPredicate;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/stream/IntStream;
    .locals 8

    .line 220
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v7, Ljava8/util/stream/IntStreams$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/IntStreams$2;-><init>(JILjava8/util/function/IntUnaryOperator;ILjava8/util/function/IntPredicate;)V

    const/4 p0, 0x0

    .line 262
    invoke-static {v7, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(ILjava8/util/function/IntUnaryOperator;)Ljava8/util/stream/IntStream;
    .locals 7

    .line 159
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v6, Ljava8/util/stream/IntStreams$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v6

    move-object v4, p1

    move v5, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/IntStreams$1;-><init>(JILjava8/util/function/IntUnaryOperator;I)V

    const/4 p0, 0x0

    .line 179
    invoke-static {v6, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(I)Ljava8/util/stream/IntStream;
    .locals 1

    .line 123
    new-instance v0, Ljava8/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava8/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([I)Ljava8/util/stream/IntStream;
    .locals 0

    .line 133
    invoke-static {p0}, Ljava8/util/J8Arrays;->stream([I)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static range(II)Ljava8/util/stream/IntStream;
    .locals 2

    if-lt p0, p1, :cond_0

    .line 298
    invoke-static {}, Ljava8/util/stream/IntStreams;->empty()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    new-instance v0, Ljava8/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava8/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(II)Ljava8/util/stream/IntStream;
    .locals 2

    if-le p0, p1, :cond_0

    .line 324
    invoke-static {}, Ljava8/util/stream/IntStreams;->empty()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    new-instance v0, Ljava8/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava8/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Ljava8/util/stream/IntStream;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
    .locals 3

    .line 60
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    .line 65
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava8/util/Spliterator$OfInt;ZLjava8/util/function/IntPredicate;)V

    .line 66
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->isParallel()Z

    move-result p1

    .line 64
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p1

    .line 66
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/IntStream;

    return-object p0
.end method
