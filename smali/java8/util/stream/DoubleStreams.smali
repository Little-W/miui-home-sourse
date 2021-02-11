.class public final Ljava8/util/stream/DoubleStreams;
.super Ljava/lang/Object;
.source "DoubleStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Ljava8/util/stream/DoubleStream$Builder;
    .locals 1

    .line 105
    new-instance v0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava8/util/stream/DoubleStream;Ljava8/util/stream/DoubleStream;)Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 316
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v0, Ljava8/util/stream/Streams$ConcatSpliterator$OfDouble;

    .line 320
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Ljava8/util/stream/DoubleStream;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/Spliterator$OfDouble;)V

    .line 321
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava8/util/stream/DoubleStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    .line 322
    invoke-static {p0, p1}, Ljava8/util/stream/Streams;->composedClose(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/DoubleStream;

    return-object p0
.end method

.method public static dropWhile(Ljava8/util/stream/DoubleStream;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 88
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    .line 93
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V

    .line 94
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->isParallel()Z

    move-result p1

    .line 92
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    .line 94
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/DoubleStream;

    return-object p0
.end method

.method public static empty()Ljava8/util/stream/DoubleStream;
    .locals 2

    .line 114
    invoke-static {}, Ljava8/util/Spliterators;->emptyDoubleSpliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava8/util/function/DoubleSupplier;)Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 275
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava8/util/function/DoubleSupplier;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(DLjava8/util/function/DoublePredicate;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/stream/DoubleStream;
    .locals 9

    .line 221
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v8, Ljava8/util/stream/DoubleStreams$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava8/util/stream/DoubleStreams$2;-><init>(JILjava8/util/function/DoubleUnaryOperator;DLjava8/util/function/DoublePredicate;)V

    const/4 p0, 0x0

    .line 263
    invoke-static {v8, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(DLjava8/util/function/DoubleUnaryOperator;)Ljava8/util/stream/DoubleStream;
    .locals 8

    .line 160
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v7, Ljava8/util/stream/DoubleStreams$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/DoubleStreams$1;-><init>(JILjava8/util/function/DoubleUnaryOperator;D)V

    const/4 p0, 0x0

    .line 180
    invoke-static {v7, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(D)Ljava8/util/stream/DoubleStream;
    .locals 1

    .line 124
    new-instance v0, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([D)Ljava8/util/stream/DoubleStream;
    .locals 0

    .line 134
    invoke-static {p0}, Ljava8/util/J8Arrays;->stream([D)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Ljava8/util/stream/DoubleStream;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 61
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    .line 66
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V

    .line 67
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->isParallel()Z

    move-result p1

    .line 65
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    .line 67
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/DoubleStream;

    return-object p0
.end method
