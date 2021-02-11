.class final Ljava8/util/stream/ReduceOps;
.super Ljava/lang/Object;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/ReduceOps$ReduceTask;,
        Ljava8/util/stream/ReduceOps$ReduceOp;,
        Ljava8/util/stream/ReduceOps$Box;,
        Ljava8/util/stream/ReduceOps$AccumulatingSink;,
        Ljava8/util/stream/ReduceOps$CountingSink;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(DLjava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava8/util/function/DoubleBinaryOperator;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 873
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    new-instance v0, Ljava8/util/stream/ReduceOps$14;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p0, p1}, Ljava8/util/stream/ReduceOps$14;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/DoubleBinaryOperator;D)V

    return-object v0
.end method

.method public static makeDouble(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/DoubleBinaryOperator;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava8/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    .line 939
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v0, Ljava8/util/stream/ReduceOps$15;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/ReduceOps$15;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public static makeDouble(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TR;>;)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "TR;>;"
        }
    .end annotation

    .line 1019
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    new-instance v0, Ljava8/util/stream/ReduceOps$16;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljava8/util/stream/ReduceOps$16;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeDoubleCounting()Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1082
    new-instance v0, Ljava8/util/stream/ReduceOps$17;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljava8/util/stream/ReduceOps$17;-><init>(Ljava8/util/stream/StreamShape;)V

    return-object v0
.end method

.method public static makeInt(ILjava8/util/function/IntBinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/function/IntBinaryOperator;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v0, Ljava8/util/stream/ReduceOps$6;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/ReduceOps$6;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/IntBinaryOperator;I)V

    return-object v0
.end method

.method public static makeInt(Ljava8/util/function/IntBinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntBinaryOperator;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava8/util/OptionalInt;",
            ">;"
        }
    .end annotation

    .line 447
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    new-instance v0, Ljava8/util/stream/ReduceOps$7;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/ReduceOps$7;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/IntBinaryOperator;)V

    return-object v0
.end method

.method public static makeInt(Ljava8/util/function/Supplier;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjIntConsumer<",
            "TR;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TR;>;)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "TR;>;"
        }
    .end annotation

    .line 527
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    new-instance v0, Ljava8/util/stream/ReduceOps$8;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljava8/util/stream/ReduceOps$8;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/ObjIntConsumer;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeIntCounting()Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance v0, Ljava8/util/stream/ReduceOps$9;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljava8/util/stream/ReduceOps$9;-><init>(Ljava8/util/stream/StreamShape;)V

    return-object v0
.end method

.method public static makeLong(JLjava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/LongBinaryOperator;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 627
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    new-instance v0, Ljava8/util/stream/ReduceOps$10;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p0, p1}, Ljava8/util/stream/ReduceOps$10;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/LongBinaryOperator;J)V

    return-object v0
.end method

.method public static makeLong(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/LongBinaryOperator;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava8/util/OptionalLong;",
            ">;"
        }
    .end annotation

    .line 693
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    new-instance v0, Ljava8/util/stream/ReduceOps$11;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/ReduceOps$11;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/LongBinaryOperator;)V

    return-object v0
.end method

.method public static makeLong(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TR;>;)",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "TR;>;"
        }
    .end annotation

    .line 773
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    new-instance v0, Ljava8/util/stream/ReduceOps$12;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljava8/util/stream/ReduceOps$12;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLongCounting()Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 836
    new-instance v0, Ljava8/util/stream/ReduceOps$13;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljava8/util/stream/ReduceOps$13;-><init>(Ljava8/util/stream/StreamShape;)V

    return-object v0
.end method

.method public static makeRef(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava8/util/function/BiFunction<",
            "TU;-TT;TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;TU;>;"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava8/util/stream/ReduceOps$1;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljava8/util/stream/ReduceOps$1;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BiFunction;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static makeRef(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;",
            "Ljava8/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Ljava8/util/stream/ReduceOps$2;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p0}, Ljava8/util/stream/ReduceOps$2;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static makeRef(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;-TT;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;TR;>;"
        }
    .end annotation

    .line 280
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v0, Ljava8/util/stream/ReduceOps$4;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1, p2, p1, p0}, Ljava8/util/stream/ReduceOps$4;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Ljava8/util/stream/Collector;)Ljava8/util/stream/TerminalOp;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Collector<",
            "-TT;TI;*>;)",
            "Ljava8/util/stream/TerminalOp<",
            "TT;TI;>;"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Collector;

    invoke-interface {v0}, Ljava8/util/stream/Collector;->supplier()Ljava8/util/function/Supplier;

    move-result-object v5

    .line 206
    invoke-interface {p0}, Ljava8/util/stream/Collector;->accumulator()Ljava8/util/function/BiConsumer;

    move-result-object v4

    .line 207
    invoke-interface {p0}, Ljava8/util/stream/Collector;->combiner()Ljava8/util/function/BinaryOperator;

    move-result-object v3

    .line 249
    new-instance v0, Ljava8/util/stream/ReduceOps$3;

    sget-object v2, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ljava8/util/stream/ReduceOps$3;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BiConsumer;Ljava8/util/function/Supplier;Ljava8/util/stream/Collector;)V

    return-object v0
.end method

.method public static makeRefCounting()Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/TerminalOp<",
            "TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava8/util/stream/ReduceOps$5;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-direct {v0, v1}, Ljava8/util/stream/ReduceOps$5;-><init>(Ljava8/util/stream/StreamShape;)V

    return-object v0
.end method
