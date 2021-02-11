.class public Ljava8/util/stream/Node$OfLong$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava8/util/function/LongConsumer;",
        "[J",
        "Ljava8/util/Spliterator$OfLong;",
        "Ljava8/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic copyInto(Ljava8/util/stream/Node$OfLong;[Ljava/lang/Object;I)V
    .locals 0

    .line 324
    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public static bridge synthetic newArray(Ljava8/util/stream/Node$OfLong;I)Ljava/lang/Object;
    .locals 0

    .line 324
    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfLong;->newArray(I)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfLong;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 324
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfLong;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfLong;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 324
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfLong;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method
