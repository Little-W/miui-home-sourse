.class abstract Ljava8/util/stream/DoublePipeline;
.super Ljava8/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Ljava8/util/stream/DoubleStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/DoublePipeline$StatefulOp;,
        Ljava8/util/stream/DoublePipeline$StatelessOp;,
        Ljava8/util/stream/DoublePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/DoubleStream;",
        ">;",
        "Ljava8/util/stream/DoubleStream;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 79
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
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 67
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

    .line 90
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractPipeline;-><init>(Ljava8/util/stream/AbstractPipeline;I)V

    return-void
.end method

.method static synthetic access$000(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;
    .locals 0

    .line 54
    invoke-static {p0}, Ljava8/util/stream/DoublePipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method private static adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 113
    instance-of v0, p0, Ljava8/util/Spliterator$OfDouble;

    if-eqz v0, :cond_0

    .line 114
    check-cast p0, Ljava8/util/Spliterator$OfDouble;

    return-object p0

    .line 116
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/DoubleConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/function/DoubleConsumer;"
        }
    .end annotation

    .line 98
    instance-of v0, p0, Ljava8/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 99
    check-cast p0, Ljava8/util/function/DoubleConsumer;

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/stream/DoublePipeline$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/DoubleConsumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$average$10([D[D)V
    .locals 5

    const/4 v0, 0x0

    .line 453
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    .line 454
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    .line 455
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    .line 456
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$average$8()[D
    .locals 1

    const/4 v0, 0x4

    .line 446
    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$average$9([DD)V
    .locals 5

    const/4 v0, 0x2

    .line 448
    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 449
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x3

    .line 450
    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$collect$11(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 490
    invoke-interface {p0, p1, p2}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$distinct$4(Ljava/lang/Double;)D
    .locals 2

    .line 379
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$sum$5()[D
    .locals 1

    const/4 v0, 0x3

    .line 404
    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$sum$6([DD)V
    .locals 3

    .line 406
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    .line 407
    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    return-void
.end method

.method static synthetic lambda$sum$7([D[D)V
    .locals 5

    const/4 v0, 0x0

    .line 410
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    .line 411
    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava8/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    .line 412
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-void
.end method

.method private mapToObj(Ljava8/util/function/DoubleFunction;I)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/DoubleFunction<",
            "+TU;>;I)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 164
    new-instance v6, Ljava8/util/stream/DoublePipeline$1;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$1;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava8/util/function/DoublePredicate;)Z
    .locals 1

    .line 503
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ALL:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeDouble(Ljava8/util/function/DoublePredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava8/util/function/DoublePredicate;)Z
    .locals 1

    .line 498
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->ANY:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeDouble(Ljava8/util/function/DoublePredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final average()Ljava8/util/OptionalDouble;
    .locals 6

    .line 446
    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$9;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$10;->lambdaFactory$()Ljava8/util/function/ObjDoubleConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$11;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/DoublePipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    .line 458
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 459
    invoke-static {v0}, Ljava8/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava8/util/OptionalDouble;->of(D)Ljava8/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    .line 460
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$2;->lambdaFactory$()Ljava8/util/function/DoubleFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava8/util/stream/DoublePipeline;->mapToObj(Ljava8/util/function/DoubleFunction;I)Ljava8/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 488
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-static {p3}, Ljava8/util/stream/DoublePipeline$$Lambda$14;->lambdaFactory$(Ljava8/util/function/BiConsumer;)Ljava8/util/function/BinaryOperator;

    move-result-object p3

    .line 493
    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeDouble(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    .line 465
    invoke-static {}, Ljava8/util/stream/ReduceOps;->makeDoubleCounting()Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava8/util/stream/DoubleStream;
    .locals 2

    .line 379
    invoke-virtual {p0}, Ljava8/util/stream/DoublePipeline;->boxed()Ljava8/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/Stream;->distinct()Ljava8/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$3;->lambdaFactory$()Ljava8/util/function/ToDoubleFunction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava8/util/stream/Stream;->mapToDouble(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 0

    .line 367
    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeDropWhileDouble(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-static {p1, p2, p3}, Ljava8/util/stream/Nodes;->collectDouble(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final filter(Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 7

    .line 300
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    new-instance v6, Ljava8/util/stream/DoublePipeline$7;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v4, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$7;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoublePredicate;)V

    return-object v6
.end method

.method public final findAny()Ljava8/util/OptionalDouble;
    .locals 1

    const/4 v0, 0x0

    .line 518
    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeDouble(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/OptionalDouble;

    return-object v0
.end method

.method public final findFirst()Ljava8/util/OptionalDouble;
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-static {v0}, Ljava8/util/stream/FindOps;->makeDouble(Z)Ljava8/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/OptionalDouble;

    return-object v0
.end method

.method public final flatMap(Ljava8/util/function/DoubleFunction;)Ljava8/util/stream/DoubleStream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/DoubleFunction<",
            "+",
            "Ljava8/util/stream/DoubleStream;",
            ">;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 255
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Ljava8/util/stream/DoublePipeline$5;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$5;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleFunction;)V

    return-object v6
.end method

.method public forEach(Ljava8/util/function/DoubleConsumer;)V
    .locals 1

    const/4 v0, 0x0

    .line 386
    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeDouble(Ljava8/util/function/DoubleConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method public forEachOrdered(Ljava8/util/function/DoubleConsumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 391
    invoke-static {p1, v0}, Ljava8/util/stream/ForEachOps;->makeDouble(Ljava8/util/function/DoubleConsumer;Z)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    return-void
.end method

.method final forEachWithCancel(Ljava8/util/Spliterator;Ljava8/util/stream/Sink;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Ljava8/util/stream/DoublePipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    .line 152
    invoke-static {p2}, Ljava8/util/stream/DoublePipeline;->adapt(Ljava8/util/stream/Sink;)Ljava8/util/function/DoubleConsumer;

    move-result-object v0

    .line 154
    :cond_0
    invoke-interface {p2}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    return v1
.end method

.method final getOutputShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 125
    sget-object v0, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljava8/util/stream/DoublePipeline;->iterator()Ljava8/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava8/util/PrimitiveIterator$OfDouble;
    .locals 1

    .line 181
    invoke-virtual {p0}, Ljava8/util/stream/DoublePipeline;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava8/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    invoke-direct {v0, p1}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->lazySpliterator(Ljava8/util/function/Supplier;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Ljava8/util/stream/DoubleStream;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 345
    invoke-static {p0, v0, v1, p1, p2}, Ljava8/util/stream/SliceOps;->makeDouble(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    .line 344
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
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node$Builder<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {p1, p2}, Ljava8/util/stream/Nodes;->doubleBuilder(J)Ljava8/util/stream/Node$Builder$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final map(Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/stream/DoubleStream;
    .locals 7

    .line 198
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v6, Ljava8/util/stream/DoublePipeline$2;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$2;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleUnaryOperator;)V

    return-object v6
.end method

.method public final mapToInt(Ljava8/util/function/DoubleToIntFunction;)Ljava8/util/stream/IntStream;
    .locals 7

    .line 221
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v6, Ljava8/util/stream/DoublePipeline$3;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$3;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleToIntFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava8/util/function/DoubleToLongFunction;)Ljava8/util/stream/LongStream;
    .locals 7

    .line 238
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Ljava8/util/stream/DoublePipeline$4;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$4;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleToLongFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava8/util/function/DoubleFunction;)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/DoubleFunction<",
            "+TU;>;)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 215
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget v0, Ljava8/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava8/util/stream/DoublePipeline;->mapToObj(Ljava8/util/function/DoubleFunction;I)Ljava8/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final max()Ljava8/util/OptionalDouble;
    .locals 1

    .line 425
    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$8;->lambdaFactory$()Ljava8/util/function/DoubleBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/DoublePipeline;->reduce(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava8/util/OptionalDouble;
    .locals 1

    .line 420
    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$7;->lambdaFactory$()Ljava8/util/function/DoubleBinaryOperator;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/DoublePipeline;->reduce(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava8/util/function/DoublePredicate;)Z
    .locals 1

    .line 508
    sget-object v0, Ljava8/util/stream/MatchOps$MatchKind;->NONE:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava8/util/stream/MatchOps;->makeDouble(Ljava8/util/function/DoublePredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic parallel()Ljava8/util/stream/DoubleStream;
    .locals 1

    .line 54
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->parallel()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/DoubleStream;

    return-object v0
.end method

.method public final peek(Ljava8/util/function/DoubleConsumer;)Ljava8/util/stream/DoubleStream;
    .locals 7

    .line 323
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v6, Ljava8/util/stream/DoublePipeline$8;

    sget-object v3, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/DoublePipeline$8;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleConsumer;)V

    return-object v6
.end method

.method public final reduce(DLjava8/util/function/DoubleBinaryOperator;)D
    .locals 0

    .line 476
    invoke-static {p1, p2, p3}, Ljava8/util/stream/ReduceOps;->makeDouble(DLjava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final reduce(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/OptionalDouble;
    .locals 0

    .line 481
    invoke-static {p1}, Ljava8/util/stream/ReduceOps;->makeDouble(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/DoublePipeline;->evaluate(Ljava8/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/OptionalDouble;

    return-object p1
.end method

.method public bridge synthetic sequential()Ljava8/util/stream/DoubleStream;
    .locals 1

    .line 54
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->sequential()Ljava8/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/DoubleStream;

    return-object v0
.end method

.method public final skip(J)Ljava8/util/stream/DoubleStream;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, -0x1

    .line 356
    invoke-static {p0, p1, p2, v0, v1}, Ljava8/util/stream/SliceOps;->makeDouble(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    return-object p1

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava8/util/stream/DoubleStream;
    .locals 1

    .line 372
    invoke-static {p0}, Ljava8/util/stream/SortedOps;->makeDouble(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 186
    invoke-super {p0}, Ljava8/util/stream/AbstractPipeline;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/DoublePipeline;->adapt(Ljava8/util/Spliterator;)Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljava8/util/stream/DoublePipeline;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final sum()D
    .locals 3

    .line 404
    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$4;->lambdaFactory$()Ljava8/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$5;->lambdaFactory$()Ljava8/util/function/ObjDoubleConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$6;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/DoublePipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 415
    invoke-static {v0}, Ljava8/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava8/util/DoubleSummaryStatistics;
    .locals 3

    .line 470
    sget-object v0, Ljava8/util/stream/Collectors;->DBL_SUM_STATS:Ljava8/util/function/Supplier;

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$12;->lambdaFactory$()Ljava8/util/function/ObjDoubleConsumer;

    move-result-object v1

    invoke-static {}, Ljava8/util/stream/DoublePipeline$$Lambda$13;->lambdaFactory$()Ljava8/util/function/BiConsumer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Ljava8/util/stream/DoublePipeline;->collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/DoubleSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
    .locals 0

    .line 362
    invoke-static {p0, p1}, Ljava8/util/stream/WhileOps;->makeTakeWhileDouble(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final toArray()[D
    .locals 1

    .line 523
    sget-object v0, Ljava8/util/stream/WhileOps;->DOUBLE_ARR_GEN:Ljava8/util/function/IntFunction;

    invoke-virtual {p0, v0}, Ljava8/util/stream/DoublePipeline;->evaluateToArrayNode(Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node$OfDouble;

    invoke-static {v0}, Ljava8/util/stream/Nodes;->flattenDouble(Ljava8/util/stream/Node$OfDouble;)Ljava8/util/stream/Node$OfDouble;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Ljava8/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava8/util/stream/BaseStream;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljava8/util/stream/DoublePipeline;->unordered()Ljava8/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava8/util/stream/DoubleStream;
    .locals 3

    .line 288
    invoke-virtual {p0}, Ljava8/util/stream/DoublePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 290
    :cond_0
    new-instance v0, Ljava8/util/stream/DoublePipeline$6;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    sget v2, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava8/util/stream/DoublePipeline$6;-><init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/Supplier;Z)V

    return-object v0
.end method
