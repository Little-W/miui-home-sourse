.class public Ljava8/util/stream/Node$OfDouble$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        "[D",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic copyInto(Ljava8/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V
    .locals 0

    .line 365
    check-cast p1, [Ljava/lang/Double;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public static bridge synthetic newArray(Ljava8/util/stream/Node$OfDouble;I)Ljava/lang/Object;
    .locals 0

    .line 365
    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfDouble;->newArray(I)[D

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfDouble;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 365
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfDouble;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfDouble;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 365
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfDouble;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method
