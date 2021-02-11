.class final Ljava8/util/stream/Nodes$OfDouble;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyInto(Ljava8/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V
    .locals 4

    .line 205
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    const/4 v0, 0x0

    .line 206
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 207
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static forEach(Ljava8/util/stream/Node$OfDouble;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node$OfDouble;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 188
    instance-of v0, p1, Ljava8/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfDouble;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfDouble;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static getShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 222
    sget-object v0, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method static synthetic lambda$truncate$46(D)V
    .locals 0

    return-void
.end method

.method static newArray(Ljava8/util/stream/Node$OfDouble;I)[D
    .locals 0

    .line 212
    new-array p0, p1, [D

    return-object p0
.end method

.method static truncate(Ljava8/util/stream/Node$OfDouble;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node$OfDouble;",
            "JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node$OfDouble;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p5, p1, v0

    if-nez p5, :cond_0

    .line 163
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->count()J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    .line 166
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p5

    check-cast p5, Ljava8/util/Spliterator$OfDouble;

    .line 167
    invoke-static {v0, v1}, Ljava8/util/stream/Nodes;->doubleBuilder(J)Ljava8/util/stream/Node$Builder$OfDouble;

    move-result-object v2

    .line 168
    invoke-interface {v2, v0, v1}, Ljava8/util/stream/Node$Builder$OfDouble;->begin(J)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    .line 169
    invoke-static {}, Ljava8/util/stream/Nodes$OfDouble$$Lambda$1;->lambdaFactory$()Ljava8/util/function/DoubleConsumer;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-interface {p0}, Ljava8/util/stream/Node$OfDouble;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 171
    invoke-interface {p5, v2}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    .line 173
    invoke-interface {p5, v2}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava8/util/stream/Node$Builder$OfDouble;->end()V

    .line 176
    invoke-interface {v2}, Ljava8/util/stream/Node$Builder$OfDouble;->build()Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method
