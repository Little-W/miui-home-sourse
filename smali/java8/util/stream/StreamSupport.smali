.class public final Ljava8/util/stream/StreamSupport;
.super Ljava/lang/Object;
.source "StreamSupport.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/BaseStream<",
            "**>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/stream/StreamSupport$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static doubleStream(Ljava8/util/Spliterator$OfDouble;Z)Ljava8/util/stream/DoubleStream;
    .locals 2

    .line 509
    new-instance v0, Ljava8/util/stream/DoublePipeline$Head;

    .line 510
    invoke-static {p0}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(Ljava8/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava8/util/stream/DoublePipeline$Head;-><init>(Ljava8/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static doubleStream(Ljava8/util/function/Supplier;IZ)Ljava8/util/stream/DoubleStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator$OfDouble;",
            ">;IZ)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation

    .line 549
    new-instance v0, Ljava8/util/stream/DoublePipeline$Head;

    .line 550
    invoke-static {p1}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/DoublePipeline$Head;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava8/util/Spliterator$OfInt;Z)Ljava8/util/stream/IntStream;
    .locals 2

    .line 373
    new-instance v0, Ljava8/util/stream/IntPipeline$Head;

    .line 374
    invoke-static {p0}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(Ljava8/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava8/util/stream/IntPipeline$Head;-><init>(Ljava8/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static intStream(Ljava8/util/function/Supplier;IZ)Ljava8/util/stream/IntStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator$OfInt;",
            ">;IZ)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava8/util/stream/IntPipeline$Head;

    .line 414
    invoke-static {p1}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/IntPipeline$Head;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava8/util/Spliterator$OfLong;Z)Ljava8/util/stream/LongStream;
    .locals 2

    .line 441
    new-instance v0, Ljava8/util/stream/LongPipeline$Head;

    .line 442
    invoke-static {p0}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(Ljava8/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava8/util/stream/LongPipeline$Head;-><init>(Ljava8/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static longStream(Ljava8/util/function/Supplier;IZ)Ljava8/util/stream/LongStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator$OfLong;",
            ">;IZ)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava8/util/stream/LongPipeline$Head;

    .line 482
    invoke-static {p1}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/LongPipeline$Head;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-object v0
.end method

.method public static parallelStream(Ljava/util/Collection;)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 195
    invoke-static {p0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Collection;)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 120
    invoke-static {p0}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Collection;I)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;I)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 234
    invoke-static {p0, p1, v0}, Ljava8/util/stream/StreamSupport;->stream(Ljava/util/Collection;IZ)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava/util/Collection;IZ)Ljava8/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;IZ)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 276
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava8/util/Spliterator;

    move-result-object p0

    invoke-static {p0, p2}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TT;>;Z)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 303
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v0, Ljava8/util/stream/ReferencePipeline$Head;

    .line 305
    invoke-static {p0}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(Ljava8/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Ljava8/util/stream/ReferencePipeline$Head;-><init>(Ljava8/util/Spliterator;IZ)V

    return-object v0
.end method

.method public static stream(Ljava8/util/function/Supplier;IZ)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+",
            "Ljava8/util/Spliterator<",
            "TT;>;>;IZ)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 345
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v0, Ljava8/util/stream/ReferencePipeline$Head;

    .line 347
    invoke-static {p1}, Ljava8/util/stream/StreamOpFlag;->fromCharacteristics(I)I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/ReferencePipeline$Head;-><init>(Ljava8/util/function/Supplier;IZ)V

    return-object v0
.end method
