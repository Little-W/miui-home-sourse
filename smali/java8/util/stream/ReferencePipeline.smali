.class abstract Ljava8/util/stream/ReferencePipeline;
.super Ljava8/util/stream/AbstractPipeline;
.source "ReferencePipeline.java"

# interfaces
.implements Ljava8/util/stream/Stream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/ReferencePipeline$StatefulOp;,
        Ljava8/util/stream/ReferencePipeline$StatelessOp;,
        Ljava8/util/stream/ReferencePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractPipeline<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/Stream<",
        "TP_OUT;>;>;",
        "Ljava8/util/stream/Stream<",
        "TP_OUT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "*>;IZ)V"
        }
    .end annotation

    .line 86
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
            "*>;>;IZ)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/AbstractPipeline;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TP_IN;*>;I)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method static synthetic lambda$collect$25(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 537
    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$toArray$24(I)[Ljava/lang/Object;
    .locals 0

    .line 485
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final allMatch(Ljava8/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 495
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeRef(Ljava8/util/function/Predicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava8/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 490
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeRef(Ljava8/util/function/Predicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final collect(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;-TP_OUT;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 551
    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava8/util/stream/Collector;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Collector<",
            "-TP_OUT;TA;TR;>;)TR;"
        }
    .end annotation

    .line 532
    invoke-virtual {p0}, Ljava8/util/stream/ReferencePipeline;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->CONCURRENT:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    invoke-virtual {p0}, Ljava8/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljava8/util/stream/Collector$Characteristics;->UNORDERED:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    :cond_0
    invoke-interface {p1}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 536
    invoke-interface {p1}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v1

    .line 537
    invoke-static {v1, v0}, Ljava8/util/stream/ReferencePipeline$$Lambda$2;->lambdaFactory$(Ljava8/util/function/BiConsumer;Ljava/lang/Object;)Ljava8/util/function/Consumer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava8/util/stream/ReferencePipeline;->forEach(Ljava8/util/function/Consumer;)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-static {p1}, Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/stream/Collector;)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    .line 542
    :goto_0
    invoke-interface {p1}, Ljava8/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljava8/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava8/util/stream/Collector$Characteristics;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 544
    :cond_2
    invoke-interface {p1}, Ljava8/util/stream/Collector;->finisher()Ljava8/util/function/Function;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final count()J
    .locals 2

    .line 567
    invoke-static {}, Ljava8/util/stream/ReduceOps;->makeRefCounting()Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 415
    invoke-static {p0}, Ljava8/util/stream/DistinctOps;->makeRef(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/ReferencePipeline;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 452
    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeDropWhileRef(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method final evaluateToNode(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN_:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN_;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 111
    invoke-static {p1, p2, p3, p4}, Ljava8/util/stream/Nodes;->collect(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v6, Ljava8/util/stream/ReferencePipeline$2;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v4, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$2;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Predicate;)V

    return-object v6
.end method

.method public final findAny()Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 510
    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeRef(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/Optional;

    return-object v0
.end method

.method public final findFirst()Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 505
    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeRef(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/Optional;

    return-object v0
.end method

.method public final flatMap(Ljava8/util/function/Function;)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TP_OUT;+",
            "Ljava8/util/stream/Stream<",
            "+TR;>;>;)",
            "Ljava8/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v6, Ljava8/util/stream/ReferencePipeline$7;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$7;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Function;)V

    return-object v6
.end method

.method public final flatMapToDouble(Ljava8/util/function/Function;)Ljava8/util/stream/DoubleStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "-TP_OUT;+",
            "Ljava8/util/stream/DoubleStream;",
            ">;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 325
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v6, Ljava8/util/stream/ReferencePipeline$9;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$9;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Function;)V

    return-object v6
.end method

.method public final flatMapToInt(Ljava8/util/function/Function;)Ljava8/util/stream/IntStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "-TP_OUT;+",
            "Ljava8/util/stream/IntStream;",
            ">;)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    .line 290
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    new-instance v6, Ljava8/util/stream/ReferencePipeline$8;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$8;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Function;)V

    return-object v6
.end method

.method public final flatMapToLong(Ljava8/util/function/Function;)Ljava8/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "-TP_OUT;+",
            "Ljava8/util/stream/LongStream;",
            ">;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 360
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v6, Ljava8/util/stream/ReferencePipeline$10;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$10;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Function;)V

    return-object v6
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 459
    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeRef(Ljava8/util/function/Consumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TP_OUT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 464
    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeRef(Ljava8/util/function/Consumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;)Z"
        }
    .end annotation

    .line 129
    :cond_0
    invoke-interface {p2}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return v0
.end method

.method final getOutputShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 103
    sget-object v0, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Ljava8/util/stream/ReferencePipeline;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;>;)",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;

    invoke-direct {v0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;-><init>(Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public final limit(J)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 432
    invoke-static {p0, v0, v1, p1, p2}, Ljava8/util/stream/SliceOps;->makeRef(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 431
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
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 135
    invoke-static {p1, p2, p3}, Ljava8/util/stream/Nodes;->builder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final map(Ljava8/util/function/Function;)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TP_OUT;+TR;>;)",
            "Ljava8/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 188
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v6, Ljava8/util/stream/ReferencePipeline$3;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$3;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Function;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/stream/DoubleStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 239
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v6, Ljava8/util/stream/ReferencePipeline$6;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$6;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/ToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToInt(Ljava8/util/function/ToIntFunction;)Ljava8/util/stream/IntStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/ToIntFunction<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    .line 205
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v6, Ljava8/util/stream/ReferencePipeline$4;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$4;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/ToIntFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/LongStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/ToLongFunction<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 222
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v6, Ljava8/util/stream/ReferencePipeline$5;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$5;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/ToLongFunction;)V

    return-object v6
.end method

.method public final max(Ljava/util/Comparator;)Ljava8/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Ljava8/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 556
    invoke-static {p1}, Ljava8/util/function/BinaryOperators;->maxBy(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->reduce(Ljava8/util/function/BinaryOperator;)Ljava8/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final min(Ljava/util/Comparator;)Ljava8/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Ljava8/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 561
    invoke-static {p1}, Ljava8/util/function/BinaryOperators;->minBy(Ljava/util/Comparator;)Ljava8/util/function/BinaryOperator;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->reduce(Ljava8/util/function/BinaryOperator;)Ljava8/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final noneMatch(Ljava8/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TP_OUT;>;)Z"
        }
    .end annotation

    .line 500
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->NONE:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeRef(Ljava8/util/function/Predicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final peek(Ljava8/util/function/Consumer;)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 395
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v6, Ljava8/util/stream/ReferencePipeline$11;

    sget-object v3, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/ReferencePipeline$11;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Consumer;)V

    return-object v6
.end method

.method public final reduce(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Ljava8/util/function/BiFunction<",
            "TR;-TP_OUT;TR;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 525
    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Ljava8/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;",
            "Ljava8/util/function/BinaryOperator<",
            "TP_OUT;>;)TP_OUT;"
        }
    .end annotation

    .line 515
    invoke-static {p1, p2, p2}, Ljava8/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava8/util/function/BinaryOperator;)Ljava8/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BinaryOperator<",
            "TP_OUT;>;)",
            "Ljava8/util/Optional<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 520
    invoke-static {p1}, Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/Optional;

    return-object p1
.end method

.method public final skip(J)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 442
    invoke-static {p0, p1, p2, v0, v1}, Ljava8/util/stream/SliceOps;->makeRef(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 438
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 420
    invoke-static {p0}, Ljava8/util/stream/SortedOps;->makeRef(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Ljava8/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 425
    invoke-static {p0, p1}, Ljava8/util/stream/SortedOps;->makeRef(Ljava8/util/stream/AbstractPipeline;Ljava/util/Comparator;)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final takeWhile(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TP_OUT;>;)",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 447
    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeTakeWhileRef(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 485
    invoke-static {}, Ljava8/util/stream/ReferencePipeline$$Lambda$1;->lambdaFactory$()Ljava8/util/function/IntFunction;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/ReferencePipeline;->toArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation

    .line 479
    invoke-virtual {p0, p1}, Ljava8/util/stream/ReferencePipeline;->evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object v0

    invoke-static {v0, p1}, Ljava8/util/stream/Nodes;->flatten(Ljava8/util/stream/Node;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object v0

    .line 480
    invoke-interface {v0, p1}, Ljava8/util/stream/Node;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 1

    .line 59
    invoke-virtual {p0}, Ljava8/util/stream/ReferencePipeline;->unordered()Ljava8/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Ljava8/util/stream/ReferencePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 155
    :cond_0
    new-instance v0, Ljava8/util/stream/ReferencePipeline$1;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/ReferencePipeline$1;-><init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN_:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN_;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-object v0
.end method
