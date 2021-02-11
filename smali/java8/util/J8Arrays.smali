.class public final Ljava8/util/J8Arrays;
.super Ljava/lang/Object;
.source "J8Arrays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/J8Arrays$NaturalOrder;
    }
.end annotation


# static fields
.field private static final MIN_ARRAY_SORT_GRAN:I = 0x2000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$parallelSetAll$127([Ljava/lang/Object;Ljava8/util/function/IntFunction;I)V
    .locals 0

    .line 1156
    invoke-interface {p1, p2}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$128([ILjava8/util/function/IntUnaryOperator;I)V
    .locals 0

    .line 1212
    invoke-interface {p1, p2}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$129([JLjava8/util/function/IntToLongFunction;I)V
    .locals 2

    .line 1268
    invoke-interface {p1, p2}, Ljava8/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method static synthetic lambda$parallelSetAll$130([DLjava8/util/function/IntToDoubleFunction;I)V
    .locals 2

    .line 1324
    invoke-interface {p1, p2}, Ljava8/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method public static parallelPrefix([DIILjava8/util/function/DoubleBinaryOperator;)V
    .locals 7

    .line 1462
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    .line 1465
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DII)V

    .line 1466
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([DLjava8/util/function/DoubleBinaryOperator;)V
    .locals 7

    .line 1439
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1441
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava8/util/function/DoubleBinaryOperator;[DII)V

    .line 1442
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$DoubleCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([IIILjava8/util/function/IntBinaryOperator;)V
    .locals 7

    .line 1507
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    .line 1510
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;Ljava8/util/function/IntBinaryOperator;[III)V

    .line 1511
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([ILjava8/util/function/IntBinaryOperator;)V
    .locals 7

    .line 1484
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1486
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;Ljava8/util/function/IntBinaryOperator;[III)V

    .line 1487
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$IntCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([JIILjava8/util/function/LongBinaryOperator;)V
    .locals 7

    .line 1414
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    .line 1417
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;Ljava8/util/function/LongBinaryOperator;[JII)V

    .line 1418
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([JLjava8/util/function/LongBinaryOperator;)V
    .locals 7

    .line 1391
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1393
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;Ljava8/util/function/LongBinaryOperator;[JII)V

    .line 1394
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$LongCumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;IILjava8/util/function/BinaryOperator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1369
    invoke-static {p3}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    if-ge p1, p2, :cond_0

    .line 1372
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p3

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1373
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelPrefix([Ljava/lang/Object;Ljava8/util/function/BinaryOperator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1345
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1347
    new-instance v0, Ljava8/util/ArrayPrefixHelpers$CumulateTask;

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v6, p0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;-><init>(Ljava8/util/ArrayPrefixHelpers$CumulateTask;Ljava8/util/function/BinaryOperator;[Ljava/lang/Object;II)V

    .line 1348
    invoke-virtual {v0}, Ljava8/util/ArrayPrefixHelpers$CumulateTask;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static parallelSetAll([DLjava8/util/function/IntToDoubleFunction;)V
    .locals 2

    .line 1323
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava8/util/stream/IntStreams;->range(II)Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/IntStream;->parallel()Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0, p1}, Ljava8/util/J8Arrays$$Lambda$4;->lambdaFactory$([DLjava8/util/function/IntToDoubleFunction;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/IntStream;->forEach(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([ILjava8/util/function/IntUnaryOperator;)V
    .locals 2

    .line 1211
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava8/util/stream/IntStreams;->range(II)Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/IntStream;->parallel()Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0, p1}, Ljava8/util/J8Arrays$$Lambda$2;->lambdaFactory$([ILjava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/IntStream;->forEach(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([JLjava8/util/function/IntToLongFunction;)V
    .locals 2

    .line 1267
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava8/util/stream/IntStreams;->range(II)Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/IntStream;->parallel()Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0, p1}, Ljava8/util/J8Arrays$$Lambda$3;->lambdaFactory$([JLjava8/util/function/IntToLongFunction;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/IntStream;->forEach(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSetAll([Ljava/lang/Object;Ljava8/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava8/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1155
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava8/util/stream/IntStreams;->range(II)Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/stream/IntStream;->parallel()Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0, p1}, Ljava8/util/J8Arrays$$Lambda$1;->lambdaFactory$([Ljava/lang/Object;Ljava8/util/function/IntFunction;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/IntStream;->forEach(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public static parallelSort([B)V
    .locals 10

    .line 381
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 383
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJByte$Sorter;

    const/4 v3, 0x0

    new-array v4, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    shl-int/lit8 v0, v2, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v0

    :goto_0
    move-object v0, v8

    move-object v1, v3

    move-object v2, p0

    move-object v3, v4

    move v4, v6

    move v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[B[BIIII)V

    .line 389
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    sub-int/2addr v5, v0

    .line 384
    invoke-static {p0, v1, v5}, Ljava8/util/DualPivotQuicksort;->sort([BII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([BII)V
    .locals 9

    .line 420
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v6, p2, p1

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v6, v1, :cond_2

    .line 423
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    new-instance p2, Ljava8/util/ArraysParallelSortHelpers$FJByte$Sorter;

    const/4 v0, 0x0

    new-array v4, v6, [B

    const/4 v7, 0x0

    shl-int/lit8 v2, v2, 0x2

    div-int v2, v6, v2

    if-gt v2, v1, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    move-object v1, p2

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v1 .. v8}, Ljava8/util/ArraysParallelSortHelpers$FJByte$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[B[BIIII)V

    .line 429
    invoke-virtual {p2}, Ljava8/util/ArraysParallelSortHelpers$FJByte$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    sub-int/2addr p2, v0

    .line 424
    invoke-static {p0, p1, p2}, Ljava8/util/DualPivotQuicksort;->sort([BII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([C)V
    .locals 11

    .line 451
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 453
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJChar$Sorter;

    const/4 v4, 0x0

    new-array v6, v5, [C

    const/4 v7, 0x0

    const/4 v9, 0x0

    shl-int/lit8 v0, v3, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v1, v4

    move-object v2, p0

    move-object v3, v6

    move v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[C[CIIII)V

    .line 459
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 454
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([CII[CII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([CII)V
    .locals 11

    .line 490
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/4 v1, 0x1

    const/16 v3, 0x2000

    if-le v5, v3, :cond_2

    .line 493
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    .line 496
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJChar$Sorter;

    const/4 v1, 0x0

    new-array v7, v5, [C

    const/4 v9, 0x0

    shl-int/lit8 v0, v6, 0x2

    div-int v0, v5, v0

    if-gt v0, v3, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v2, p0

    move-object v3, v7

    move v4, p1

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJChar$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[C[CIIII)V

    .line 499
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJChar$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, p2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    .line 494
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([CII[CII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([D)V
    .locals 11

    .line 825
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 827
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 830
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    const/4 v4, 0x0

    new-array v6, v5, [D

    const/4 v7, 0x0

    const/4 v9, 0x0

    shl-int/lit8 v0, v3, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v1, v4

    move-object v2, p0

    move-object v3, v6

    move v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[D[DIIII)V

    .line 833
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 828
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([DII[DII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([DII)V
    .locals 11

    .line 872
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/4 v1, 0x1

    const/16 v3, 0x2000

    if-le v5, v3, :cond_2

    .line 875
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    .line 878
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJDouble$Sorter;

    const/4 v1, 0x0

    new-array v7, v5, [D

    const/4 v9, 0x0

    shl-int/lit8 v0, v6, 0x2

    div-int v0, v5, v0

    if-gt v0, v3, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v2, p0

    move-object v3, v7

    move v4, p1

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJDouble$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[D[DIIII)V

    .line 881
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJDouble$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, p2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    .line 876
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([DII[DII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([F)V
    .locals 11

    .line 739
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 741
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 744
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    const/4 v4, 0x0

    new-array v6, v5, [F

    const/4 v7, 0x0

    const/4 v9, 0x0

    shl-int/lit8 v0, v3, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v1, v4

    move-object v2, p0

    move-object v3, v6

    move v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[F[FIIII)V

    .line 747
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 742
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([FII[FII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([FII)V
    .locals 11

    .line 786
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/4 v1, 0x1

    const/16 v3, 0x2000

    if-le v5, v3, :cond_2

    .line 789
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    .line 792
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJFloat$Sorter;

    const/4 v1, 0x0

    new-array v7, v5, [F

    const/4 v9, 0x0

    shl-int/lit8 v0, v6, 0x2

    div-int v0, v5, v0

    if-gt v0, v3, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v2, p0

    move-object v3, v7

    move v4, p1

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJFloat$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[F[FIIII)V

    .line 795
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJFloat$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, p2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    .line 790
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([FII[FII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([I)V
    .locals 11

    .line 591
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 593
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 596
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJInt$Sorter;

    const/4 v4, 0x0

    new-array v6, v5, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    shl-int/lit8 v0, v3, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v1, v4

    move-object v2, p0

    move-object v3, v6

    move v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[I[IIIII)V

    .line 599
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 594
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([III[III)V

    :goto_2
    return-void
.end method

.method public static parallelSort([III)V
    .locals 11

    .line 630
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/4 v1, 0x1

    const/16 v3, 0x2000

    if-le v5, v3, :cond_2

    .line 633
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    .line 636
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJInt$Sorter;

    const/4 v1, 0x0

    new-array v7, v5, [I

    const/4 v9, 0x0

    shl-int/lit8 v0, v6, 0x2

    div-int v0, v5, v0

    if-gt v0, v3, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v2, p0

    move-object v3, v7

    move v4, p1

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJInt$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[I[IIIII)V

    .line 639
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJInt$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, p2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    .line 634
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([III[III)V

    :goto_2
    return-void
.end method

.method public static parallelSort([J)V
    .locals 11

    .line 661
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 663
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 666
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJLong$Sorter;

    const/4 v4, 0x0

    new-array v6, v5, [J

    const/4 v7, 0x0

    const/4 v9, 0x0

    shl-int/lit8 v0, v3, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v1, v4

    move-object v2, p0

    move-object v3, v6

    move v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[J[JIIII)V

    .line 669
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 664
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([JII[JII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([JII)V
    .locals 11

    .line 700
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/4 v1, 0x1

    const/16 v3, 0x2000

    if-le v5, v3, :cond_2

    .line 703
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJLong$Sorter;

    const/4 v1, 0x0

    new-array v7, v5, [J

    const/4 v9, 0x0

    shl-int/lit8 v0, v6, 0x2

    div-int v0, v5, v0

    if-gt v0, v3, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v2, p0

    move-object v3, v7

    move v4, p1

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[J[JIIII)V

    .line 709
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJLong$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, p2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    .line 704
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([JII[JII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([Ljava/lang/Comparable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;)V"
        }
    .end annotation

    .line 920
    array-length v5, p0

    const/16 v0, 0x2000

    if-le v5, v0, :cond_2

    .line 922
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 925
    :cond_0
    new-instance v9, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v2, 0x0

    .line 927
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Comparable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    shl-int/lit8 v1, v1, 0x2

    div-int v1, v5, v1

    if-gt v1, v0, :cond_1

    move v7, v0

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    sget-object v8, Ljava8/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava8/util/J8Arrays$NaturalOrder;

    move-object v0, v9

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 929
    invoke-virtual {v9}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 923
    sget-object v3, Ljava8/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava8/util/J8Arrays$NaturalOrder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, v5

    move v5, v6

    move v6, v7

    invoke-static/range {v0 .. v6}, Ljava8/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public static parallelSort([Ljava/lang/Comparable;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>([TT;II)V"
        }
    .end annotation

    .line 978
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_2

    .line 981
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 984
    :cond_0
    new-instance v9, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v3, 0x0

    .line 986
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Comparable;

    const/4 v7, 0x0

    shl-int/lit8 v1, v1, 0x2

    div-int v1, v5, v1

    if-gt v1, v0, :cond_1

    move v8, v0

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    sget-object v10, Ljava8/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava8/util/J8Arrays$NaturalOrder;

    move-object v0, v9

    move-object v1, v3

    move-object v2, p0

    move-object v3, v6

    move v4, p1

    move v6, v7

    move v7, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 988
    invoke-virtual {v9}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    .line 982
    :cond_2
    :goto_1
    sget-object v5, Ljava8/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava8/util/J8Arrays$NaturalOrder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v5

    move-object v4, v6

    move v5, v7

    move v6, v8

    invoke-static/range {v0 .. v6}, Ljava8/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public static parallelSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1086
    array-length v0, p0

    invoke-static {v0, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    if-nez p3, :cond_0

    .line 1088
    sget-object p3, Ljava8/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava8/util/J8Arrays$NaturalOrder;

    :cond_0
    sub-int v5, p2, p1

    const/16 v0, 0x2000

    if-le v5, v0, :cond_3

    .line 1091
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 1094
    :cond_1
    new-instance p2, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v2, 0x0

    .line 1096
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    shl-int/lit8 v1, v1, 0x2

    div-int v1, v5, v1

    if-gt v1, v0, :cond_2

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    move-object v0, p2

    move-object v1, v2

    move-object v2, p0

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 1098
    invoke-virtual {p2}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 1092
    invoke-static/range {v0 .. v6}, Ljava8/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public static parallelSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1027
    sget-object p1, Ljava8/util/J8Arrays$NaturalOrder;->INSTANCE:Ljava8/util/J8Arrays$NaturalOrder;

    .line 1028
    :cond_0
    array-length v5, p0

    const/16 v0, 0x2000

    if-le v5, v0, :cond_3

    .line 1030
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 1033
    :cond_1
    new-instance v9, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;

    const/4 v2, 0x0

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v6, 0x0

    shl-int/lit8 v1, v1, 0x2

    div-int v1, v5, v1

    if-gt v1, v0, :cond_2

    move v7, v0

    goto :goto_0

    :cond_2
    move v7, v1

    :goto_0
    move-object v0, v9

    move-object v1, v2

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/util/Comparator;)V

    .line 1037
    invoke-virtual {v9}, Ljava8/util/ArraysParallelSortHelpers$FJObject$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, v5

    move-object v3, p1

    move v5, v6

    move v6, v7

    .line 1031
    invoke-static/range {v0 .. v6}, Ljava8/util/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;[Ljava/lang/Object;II)V

    :goto_2
    return-void
.end method

.method public static parallelSort([S)V
    .locals 11

    .line 521
    array-length v5, p0

    const/4 v0, 0x1

    const/16 v1, 0x2000

    if-le v5, v1, :cond_2

    .line 523
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJShort$Sorter;

    const/4 v4, 0x0

    new-array v6, v5, [S

    const/4 v7, 0x0

    const/4 v9, 0x0

    shl-int/lit8 v0, v3, 0x2

    div-int v0, v5, v0

    if-gt v0, v1, :cond_1

    move v10, v1

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v1, v4

    move-object v2, p0

    move-object v3, v6

    move v4, v7

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[S[SIIII)V

    .line 529
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v3, v5, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    .line 524
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([SII[SII)V

    :goto_2
    return-void
.end method

.method public static parallelSort([SII)V
    .locals 11

    .line 560
    array-length v1, p0

    invoke-static {v1, p1, p2}, Ljava8/util/J8Arrays;->rangeCheck(III)V

    sub-int v5, p2, p1

    const/4 v1, 0x1

    const/16 v3, 0x2000

    if-le v5, v3, :cond_2

    .line 563
    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    .line 566
    :cond_0
    new-instance v8, Ljava8/util/ArraysParallelSortHelpers$FJShort$Sorter;

    const/4 v1, 0x0

    new-array v7, v5, [S

    const/4 v9, 0x0

    shl-int/lit8 v0, v6, 0x2

    div-int v0, v5, v0

    if-gt v0, v3, :cond_1

    move v10, v3

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    move-object v0, v8

    move-object v2, p0

    move-object v3, v7

    move v4, p1

    move v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Ljava8/util/ArraysParallelSortHelpers$FJShort$Sorter;-><init>(Ljava8/util/concurrent/CountedCompleter;[S[SIIII)V

    .line 569
    invoke-virtual {v8}, Ljava8/util/ArraysParallelSortHelpers$FJShort$Sorter;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, p2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, v3

    move-object v3, v5

    move v4, v6

    move v5, v7

    .line 564
    invoke-static/range {v0 .. v5}, Ljava8/util/DualPivotQuicksort;->sort([SII[SII)V

    :goto_2
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 2

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    .line 1527
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 1524
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 1520
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") > toIndex("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setAll([DLjava8/util/function/IntToDoubleFunction;)V
    .locals 3

    .line 1293
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1294
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1295
    invoke-interface {p1, v0}, Ljava8/util/function/IntToDoubleFunction;->applyAsDouble(I)D

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAll([ILjava8/util/function/IntUnaryOperator;)V
    .locals 2

    .line 1181
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1182
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1183
    invoke-interface {p1, v0}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAll([JLjava8/util/function/IntToLongFunction;)V
    .locals 3

    .line 1237
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1238
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1239
    invoke-interface {p1, v0}, Ljava8/util/function/IntToLongFunction;->applyAsLong(I)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setAll([Ljava/lang/Object;Ljava8/util/function/IntFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava8/util/function/IntFunction<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1124
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1125
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1126
    invoke-interface {p1, v0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static spliterator([D)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    const/16 v0, 0x410

    .line 183
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator([DI)Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([DII)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    const/16 v0, 0x410

    .line 206
    invoke-static {p0, p1, p2, v0}, Ljava8/util/Spliterators;->spliterator([DIII)Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([I)Ljava8/util/Spliterator$OfInt;
    .locals 1

    const/16 v0, 0x410

    .line 104
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator([II)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([III)Ljava8/util/Spliterator$OfInt;
    .locals 1

    const/16 v0, 0x410

    .line 127
    invoke-static {p0, p1, p2, v0}, Ljava8/util/Spliterators;->spliterator([IIII)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([J)Ljava8/util/Spliterator$OfLong;
    .locals 1

    const/16 v0, 0x410

    .line 143
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator([JI)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([JII)Ljava8/util/Spliterator$OfLong;
    .locals 1

    const/16 v0, 0x410

    .line 166
    invoke-static {p0, p1, p2, v0}, Ljava8/util/Spliterators;->spliterator([JIII)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([Ljava/lang/Object;)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x410

    .line 64
    invoke-static {p0, v0}, Ljava8/util/Spliterators;->spliterator([Ljava/lang/Object;I)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static spliterator([Ljava/lang/Object;II)Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x410

    .line 88
    invoke-static {p0, p1, p2, v0}, Ljava8/util/Spliterators;->spliterator([Ljava/lang/Object;III)Ljava8/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static stream([D)Ljava8/util/stream/DoubleStream;
    .locals 2

    .line 310
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava8/util/J8Arrays;->stream([DII)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([DII)Ljava8/util/stream/DoubleStream;
    .locals 0

    .line 328
    invoke-static {p0, p1, p2}, Ljava8/util/J8Arrays;->spliterator([DII)Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava8/util/stream/StreamSupport;->doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([I)Ljava8/util/stream/IntStream;
    .locals 2

    .line 250
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava8/util/J8Arrays;->stream([III)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([III)Ljava8/util/stream/IntStream;
    .locals 0

    .line 268
    invoke-static {p0, p1, p2}, Ljava8/util/J8Arrays;->spliterator([III)Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava8/util/stream/StreamSupport;->intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([J)Ljava8/util/stream/LongStream;
    .locals 2

    .line 280
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava8/util/J8Arrays;->stream([JII)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([JII)Ljava8/util/stream/LongStream;
    .locals 0

    .line 298
    invoke-static {p0, p1, p2}, Ljava8/util/J8Arrays;->spliterator([JII)Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava8/util/stream/StreamSupport;->longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([Ljava/lang/Object;)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 219
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava8/util/J8Arrays;->stream([Ljava/lang/Object;II)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream([Ljava/lang/Object;II)Ljava8/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 238
    invoke-static {p0, p1, p2}, Ljava8/util/J8Arrays;->spliterator([Ljava/lang/Object;II)Ljava8/util/Spliterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
