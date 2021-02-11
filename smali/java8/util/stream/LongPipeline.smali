.class abstract Ljava8/util/stream/LongPipeline;
.super Ljava8/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava8/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/LongPipeline$StatefulOp;,
        Ljava8/util/stream/LongPipeline$StatelessOp;,
        Ljava8/util/stream/LongPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/LongStream;",
        ">;",
        "Ljava8/util/stream/LongStream;"
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

    .line 82
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/Spliterator;IZ)V

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

    .line 69
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/AbstractPipeline;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method static synthetic access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;
    .locals 0

    .line 55
    invoke-static {p0}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method private static adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 115
    instance-of v0, p0, Ljava8/util/Spliterator$OfLong;

    if-eqz v0, :cond_0

    .line 116
    check-cast p0, Ljava8/util/Spliterator$OfLong;

    return-object p0

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/function/LongConsumer;"
        }
    .end annotation

    .line 100
    instance-of v0, p0, Ljava8/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 101
    check-cast p0, Ljava8/util/function/LongConsumer;

    return-object p0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/stream/LongPipeline$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$average$14()[J
    .locals 1

    const/4 v0, 0x2

    .line 428
    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$15([JJ)V
    .locals 5

    const/4 v0, 0x0

    .line 430
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    .line 431
    aget-wide v1, p0, v0

    add-long/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$average$16([J[J)V
    .locals 5

    const/4 v0, 0x0

    .line 434
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    .line 435
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$collect$17(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$distinct$13(Ljava/lang/Long;)J
    .locals 2

    .line 395
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private mapToObj(Ljava8/util/function/LongFunction;I)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/LongFunction<",
            "+TU;>;I)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 166
    new-instance v6, Ljava8/util/stream/LongPipeline$1;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$1;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava8/util/function/LongPredicate;)Z
    .locals 1

    .line 482
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava8/util/function/LongPredicate;)Z
    .locals 1

    .line 477
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final asDoubleStream()Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 195
    new-instance v0, Ljava8/util/stream/LongPipeline$2;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/LongPipeline$2;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava8/util/OptionalDouble;
    .locals 6

    .line 428
    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$7;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$8;->lambdaFactory$()Ljava8/util/function/ObjLongConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$9;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/LongPipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    .line 437
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v0, v4

    div-double/2addr v2, v0

    .line 438
    invoke-static {v2, v3}, Ljava8/util/OptionalDouble;->of(D)Ljava8/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_0
    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final boxed()Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$2;->lambdaFactory$()Ljava8/util/function/LongFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava8/util/stream/LongPipeline;->mapToObj(Ljava8/util/function/LongFunction;I)Ljava8/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 467
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-static {p3}, Ljava8/util/stream/LongPipeline$$Lambda$12;->lambdaFactory$(Ljava8/util/function/BiConsumer;)Ljava8/util/function/BinaryOperator;

    move-result-object p3

    .line 472
    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    .line 444
    invoke-static {}, Ljava8/util/stream/ReduceOps;->makeLongCounting()Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava8/util/stream/LongStream;
    .locals 2

    .line 395
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->boxed()Ljava8/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/Stream;->distinct()Ljava8/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$3;->lambdaFactory$()Ljava8/util/function/ToLongFunction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->mapToLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 0

    .line 383
    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeDropWhileLong(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method final evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-static {p1, p2, p3}, Ljava8/util/stream/Nodes;->collectLong(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 7

    .line 318
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v6, Ljava8/util/stream/LongPipeline$8;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v4, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$8;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongPredicate;)V

    return-object v6
.end method

.method public final findAny()Ljava8/util/OptionalLong;
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeLong(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/OptionalLong;

    return-object v0
.end method

.method public final findFirst()Ljava8/util/OptionalLong;
    .locals 1

    const/4 v0, 0x1

    .line 492
    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeLong(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/OptionalLong;

    return-object v0
.end method

.method public final flatMap(Ljava8/util/function/LongFunction;)Ljava8/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/LongFunction<",
            "+",
            "Ljava8/util/stream/LongStream;",
            ">;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 272
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v6, Ljava8/util/stream/LongPipeline$6;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$6;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongFunction;)V

    return-object v6
.end method

.method public forEach(Ljava8/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeLong(Ljava8/util/function/LongConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/LongConsumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 407
    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeLong(Ljava8/util/function/LongConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 153
    invoke-static {p1}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    .line 154
    invoke-static {p2}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/LongConsumer;

    move-result-object v0

    .line 156
    :cond_0
    invoke-interface {p2}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return v1
.end method

.method final getOutputShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 127
    sget-object v0, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->iterator()Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava8/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 183
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava8/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Ljava8/util/stream/LongStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 363
    invoke-static {p0, v0, v1, p1, p2}, Ljava8/util/stream/SliceOps;->makeLong(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p1, p2}, Ljava8/util/stream/Nodes;->longBuilder(J)Ljava8/util/stream/Node$Builder$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final map(Ljava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
    .locals 7

    .line 215
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v6, Ljava8/util/stream/LongPipeline$3;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$3;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongUnaryOperator;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava8/util/function/LongToDoubleFunction;)Ljava8/util/stream/DoubleStream;
    .locals 7

    .line 255
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Ljava8/util/stream/LongPipeline$5;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$5;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToInt(Ljava8/util/function/LongToIntFunction;)Ljava8/util/stream/IntStream;
    .locals 7

    .line 238
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Ljava8/util/stream/LongPipeline$4;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$4;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongToIntFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava8/util/function/LongFunction;)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/LongFunction<",
            "+TU;>;)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava8/util/stream/LongPipeline;->mapToObj(Ljava8/util/function/LongFunction;I)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final max()Ljava8/util/OptionalLong;
    .locals 1

    .line 423
    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$6;->lambdaFactory$()Ljava8/util/function/LongBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava8/util/OptionalLong;
    .locals 1

    .line 418
    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$5;->lambdaFactory$()Ljava8/util/function/LongBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava8/util/function/LongPredicate;)Z
    .locals 1

    .line 487
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->NONE:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/LongStream;
    .locals 1

    .line 55
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/LongStream;

    return-object v0
.end method

.method public final peek(Ljava8/util/function/LongConsumer;)Ljava8/util/stream/LongStream;
    .locals 7

    .line 341
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v6, Ljava8/util/stream/LongPipeline$9;

    sget-object v3, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/LongPipeline$9;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongConsumer;)V

    return-object v6
.end method

.method public final reduce(JLjava8/util/function/LongBinaryOperator;)J
    .locals 0

    .line 455
    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeLong(JLjava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;
    .locals 0

    .line 460
    invoke-static {p1}, Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongPipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/OptionalLong;

    return-object p1
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/LongStream;
    .locals 1

    .line 55
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/LongStream;

    return-object v0
.end method

.method public final skip(J)Ljava8/util/stream/LongStream;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 373
    invoke-static {p0, p1, p2, v0, v1}, Ljava8/util/stream/SliceOps;->makeLong(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/LongStream;

    move-result-object p1

    return-object p1

    .line 369
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava8/util/stream/LongStream;
    .locals 1

    .line 388
    invoke-static {p0}, Ljava8/util/stream/SortedOps;->makeLong(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 188
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/LongPipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    .line 413
    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$4;->lambdaFactory$()Ljava8/util/function/LongBinaryOperator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava8/util/stream/LongPipeline;->reduce(JLjava8/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava8/util/LongSummaryStatistics;
    .locals 3

    .line 449
    sget-object v0, Ljava8/util/stream/Collectors;->LNG_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$10;->lambdaFactory$()Ljava8/util/function/ObjLongConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/LongPipeline$$Lambda$11;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/LongPipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
    .locals 0

    .line 378
    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeTakeWhileLong(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[J
    .locals 1

    .line 502
    sget-object v0, Ljava8/util/stream/WhileOps;->LONG_ARR_GEN:Ljava8/util/function/IntFunction;

    invoke-virtual {p0, v0}, Ljava8/util/stream/LongPipeline;->evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node$OfLong;

    invoke-static {v0}, Ljava8/util/stream/Nodes;->flattenLong(Ljava8/util/stream/Node$OfLong;)Ljava8/util/stream/Node$OfLong;

    move-result-object v0

    .line 503
    invoke-interface {v0}, Ljava8/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 1

    .line 55
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->unordered()Ljava8/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava8/util/stream/LongStream;
    .locals 3

    .line 305
    invoke-virtual {p0}, Ljava8/util/stream/LongPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 308
    :cond_0
    new-instance v0, Ljava8/util/stream/LongPipeline$7;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/LongPipeline$7;-><init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-object v0
.end method
