.class public final Ljava8/util/stream/LongStreams;
.super Ljava/lang/Object;
.source "LongStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Ljava8/util/stream/LongStream$Builder;
    .locals 1

    .line 105
    new-instance v0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Ljava8/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava8/util/stream/LongStream;Ljava8/util/stream/LongStream;)Ljava8/util/stream/LongStream;
    .locals 3

    .line 383
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    new-instance v0, Ljava8/util/stream/Streams$ConcatSpliterator$OfLong;

    .line 387
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v1

    invoke-interface {p1}, Ljava8/util/stream/LongStream;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/Spliterator$OfLong;)V

    .line 388
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava8/util/stream/LongStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    .line 389
    invoke-static {p0, p1}, Ljava8/util/stream/Streams;->composedClose(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/LongStream;

    return-object p0
.end method

.method public static dropWhile(Ljava8/util/stream/LongStream;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 3

    .line 88
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    .line 93
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V

    .line 94
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->isParallel()Z

    move-result p1

    .line 92
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p1

    .line 94
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/LongStream;

    return-object p0
.end method

.method public static empty()Ljava8/util/stream/LongStream;
    .locals 2

    .line 114
    invoke-static {}, Ljava8/util/Spliterators;->emptyLongSpliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava8/util/function/LongSupplier;)Ljava8/util/stream/LongStream;
    .locals 3

    .line 275
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava8/util/function/LongSupplier;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(JLjava8/util/function/LongPredicate;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
    .locals 9

    .line 221
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v8, Ljava8/util/stream/LongStreams$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava8/util/stream/LongStreams$2;-><init>(JILjava8/util/function/LongUnaryOperator;JLjava8/util/function/LongPredicate;)V

    const/4 p0, 0x0

    .line 263
    invoke-static {v8, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(JLjava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
    .locals 8

    .line 160
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v7, Ljava8/util/stream/LongStreams$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/LongStreams$1;-><init>(JILjava8/util/function/LongUnaryOperator;J)V

    const/4 p0, 0x0

    .line 180
    invoke-static {v7, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static of(J)Ljava8/util/stream/LongStream;
    .locals 1

    .line 124
    new-instance v0, Ljava8/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([J)Ljava8/util/stream/LongStream;
    .locals 0

    .line 134
    invoke-static {p0}, Ljava8/util/J8Arrays;->stream([J)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static range(JJ)Ljava8/util/stream/LongStream;
    .locals 7

    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 299
    invoke-static {}, Ljava8/util/stream/LongStreams;->empty()Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x2

    .line 305
    invoke-static {v0, v1, v2, v3}, Ljava8/lang/Longs;->divideUnsigned(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 306
    invoke-static {p0, p1, v0, v1}, Ljava8/util/stream/LongStreams;->range(JJ)Ljava8/util/stream/LongStream;

    move-result-object p0

    invoke-static {v0, v1, p2, p3}, Ljava8/util/stream/LongStreams;->range(JJ)Ljava8/util/stream/LongStream;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/stream/LongStreams;->concat(Ljava8/util/stream/LongStream;Ljava8/util/stream/LongStream;)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 308
    :cond_1
    new-instance v6, Ljava8/util/stream/Streams$RangeLongSpliterator;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 p0, 0x0

    invoke-static {v6, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static rangeClosed(JJ)Ljava8/util/stream/LongStream;
    .locals 8

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 332
    invoke-static {}, Ljava8/util/stream/LongStreams;->empty()Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    const-wide/16 v4, 0x2

    .line 339
    invoke-static {v0, v1, v4, v5}, Ljava8/lang/Longs;->divideUnsigned(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long/2addr v0, v2

    .line 340
    invoke-static {p0, p1, v0, v1}, Ljava8/util/stream/LongStreams;->range(JJ)Ljava8/util/stream/LongStream;

    move-result-object p0

    invoke-static {v0, v1, p2, p3}, Ljava8/util/stream/LongStreams;->rangeClosed(JJ)Ljava8/util/stream/LongStream;

    move-result-object p1

    invoke-static {p0, p1}, Ljava8/util/stream/LongStreams;->concat(Ljava8/util/stream/LongStream;Ljava8/util/stream/LongStream;)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0

    .line 342
    :cond_1
    new-instance v6, Ljava8/util/stream/Streams$RangeLongSpliterator;

    const/4 v5, 0x1

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 p0, 0x0

    invoke-static {v6, p0}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static takeWhile(Ljava8/util/stream/LongStream;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 3

    .line 61
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    .line 66
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V

    .line 67
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->isParallel()Z

    move-result p1

    .line 65
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p1

    .line 67
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/LongStream;

    return-object p0
.end method
