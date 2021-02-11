.class final Ljava8/util/stream/Nodes$OfInt;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V
    .locals 3

    .line 342
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    .line 343
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 344
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static forEach(Ljava8/util/stream/Node$OfInt;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node$OfInt;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 325
    instance-of v0, p1, Ljava8/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfInt;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfInt;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static getShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 358
    sget-object v0, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method static synthetic lambda$truncate$48(I)V
    .locals 0

    return-void
.end method

.method static newArray(Ljava8/util/stream/Node$OfInt;I)[I
    .locals 0

    .line 349
    new-array p0, p1, [I

    return-object p0
.end method

.method static truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node$OfInt;",
            "JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node$OfInt;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p5, p1, v0

    if-nez p5, :cond_0

    .line 300
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->count()J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    .line 303
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p5

    check-cast p5, Ljava8/util/Spliterator$OfInt;

    .line 304
    invoke-static {v0, v1}, Ljava8/util/stream/Nodes;->intBuilder(J)Ljava8/util/stream/Node$Builder$OfInt;

    move-result-object v2

    .line 305
    invoke-interface {v2, v0, v1}, Ljava8/util/stream/Node$Builder$OfInt;->begin(J)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    .line 306
    invoke-static {}, Ljava8/util/stream/Nodes$OfInt$$Lambda$1;->lambdaFactory$()Ljava8/util/function/IntConsumer;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {p0}, Ljava8/util/stream/Node$OfInt;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 308
    invoke-interface {p5, v2}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    .line 310
    invoke-interface {p5, v2}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava8/util/stream/Node$Builder$OfInt;->end()V

    .line 313
    invoke-interface {v2}, Ljava8/util/stream/Node$Builder$OfInt;->build()Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method
