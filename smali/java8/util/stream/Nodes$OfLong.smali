.class final Ljava8/util/stream/Nodes$OfLong;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyInto(Ljava8/util/stream/Node$OfLong;[Ljava/lang/Long;I)V
    .locals 4

    .line 274
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    .line 275
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    .line 276
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static forEach(Ljava8/util/stream/Node$OfLong;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node$OfLong;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 257
    instance-of v0, p1, Ljava8/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfLong;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Ljava8/util/Spliterator$OfLong;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method static getShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 290
    sget-object v0, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method

.method static synthetic lambda$truncate$47(J)V
    .locals 0

    return-void
.end method

.method static newArray(Ljava8/util/stream/Node$OfLong;I)[J
    .locals 0

    .line 281
    new-array p0, p1, [J

    return-object p0
.end method

.method static truncate(Ljava8/util/stream/Node$OfLong;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node$OfLong;",
            "JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node$OfLong;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p5, p1, v0

    if-nez p5, :cond_0

    .line 232
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->count()J

    move-result-wide v0

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    return-object p0

    :cond_0
    sub-long v0, p3, p1

    .line 235
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p5

    check-cast p5, Ljava8/util/Spliterator$OfLong;

    .line 236
    invoke-static {v0, v1}, Ljava8/util/stream/Nodes;->longBuilder(J)Ljava8/util/stream/Node$Builder$OfLong;

    move-result-object v2

    .line 237
    invoke-interface {v2, v0, v1}, Ljava8/util/stream/Node$Builder$OfLong;->begin(J)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_1

    .line 238
    invoke-static {}, Ljava8/util/stream/Nodes$OfLong$$Lambda$1;->lambdaFactory$()Ljava8/util/function/LongConsumer;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    :cond_1
    invoke-interface {p0}, Ljava8/util/stream/Node$OfLong;->count()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    .line 240
    invoke-interface {p5, v2}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    goto :goto_2

    :cond_2
    :goto_1
    int-to-long p0, v3

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    .line 242
    invoke-interface {p5, v2}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p0

    if-eqz p0, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava8/util/stream/Node$Builder$OfLong;->end()V

    .line 245
    invoke-interface {v2}, Ljava8/util/stream/Node$Builder$OfLong;->build()Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method
