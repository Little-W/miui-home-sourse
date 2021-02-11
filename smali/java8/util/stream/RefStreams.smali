.class public final Ljava8/util/stream/RefStreams;
.super Ljava/lang/Object;
.source "RefStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Ljava8/util/stream/Stream$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava8/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0}, Ljava8/util/stream/Streams$StreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava8/util/stream/Stream;Ljava8/util/stream/Stream;)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Stream<",
            "+TT;>;",
            "Ljava8/util/stream/Stream<",
            "+TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 450
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v0, Ljava8/util/stream/Streams$ConcatSpliterator$OfRef;

    .line 455
    invoke-interface {p0}, Ljava8/util/stream/Stream;->spliterator()Ljava8/util/Spliterator;

    move-result-object v1

    invoke-interface {p1}, Ljava8/util/stream/Stream;->spliterator()Ljava8/util/Spliterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava8/util/stream/Streams$ConcatSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;Ljava8/util/Spliterator;)V

    .line 456
    invoke-interface {p0}, Ljava8/util/stream/Stream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava8/util/stream/Stream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object v0

    .line 457
    invoke-static {p0, p1}, Ljava8/util/stream/Streams;->composedClose(Ljava8/util/stream/BaseStream;Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava8/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Stream;

    return-object p0
.end method

.method public static dropWhile(Ljava8/util/stream/Stream;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Stream<",
            "+TT;>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 191
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 200
    invoke-interface {p0}, Ljava8/util/stream/Stream;->spliterator()Ljava8/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava8/util/Spliterator;ZLjava8/util/function/Predicate;)V

    .line 201
    invoke-interface {p0}, Ljava8/util/stream/Stream;->isParallel()Z

    move-result p1

    .line 199
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 201
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Stream;

    return-object p0
.end method

.method public static empty()Ljava8/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 221
    invoke-static {}, Ljava8/util/Spliterators;->emptySpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava8/util/function/Supplier;)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "+TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 408
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava8/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava8/util/function/Supplier;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;Ljava8/util/function/Predicate;Ljava8/util/function/UnaryOperator;)Ljava8/util/stream/Stream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:TT;>(TS;",
            "Ljava8/util/function/Predicate<",
            "TS;>;",
            "Ljava8/util/function/UnaryOperator<",
            "TS;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 350
    invoke-static {p2}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v7, Ljava8/util/stream/RefStreams$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v0, v7

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/RefStreams$2;-><init>(JILjava8/util/function/UnaryOperator;Ljava/lang/Object;Ljava8/util/function/Predicate;)V

    const/4 p0, 0x0

    .line 394
    invoke-static {v7, p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static iterate(Ljava/lang/Object;Ljava8/util/function/UnaryOperator;)Ljava8/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:TT;>(TS;",
            "Ljava8/util/function/UnaryOperator<",
            "TS;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v6, Ljava8/util/stream/RefStreams$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/RefStreams$1;-><init>(JILjava8/util/function/UnaryOperator;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 307
    invoke-static {v6, p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava8/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava8/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Ljava/lang/Object;)Ljava8/util/stream/Stream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 259
    invoke-static {p0}, Ljava8/util/J8Arrays;->stream([Ljava/lang/Object;)Ljava8/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava8/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 246
    invoke-static {}, Ljava8/util/stream/RefStreams;->empty()Ljava8/util/stream/Stream;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava8/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 247
    invoke-static {v0, p0}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static takeWhile(Ljava8/util/stream/Stream;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Stream<",
            "+TT;>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 116
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    .line 125
    invoke-interface {p0}, Ljava8/util/stream/Stream;->spliterator()Ljava8/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljava8/util/Spliterator;ZLjava8/util/function/Predicate;)V

    .line 126
    invoke-interface {p0}, Ljava8/util/stream/Stream;->isParallel()Z

    move-result p1

    .line 124
    invoke-static {v0, p1}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object p1

    .line 126
    invoke-static {p0}, Ljava8/util/stream/StreamSupport;->closeHandler(Ljava8/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava8/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava8/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava8/util/stream/Stream;

    return-object p0
.end method
