.class public Ljava8/util/stream/Node$OfInt$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        "[I",
        "Ljava8/util/Spliterator$OfInt;",
        "Ljava8/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Object;I)V
    .locals 0

    .line 283
    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public static bridge synthetic newArray(Ljava8/util/stream/Node$OfInt;I)Ljava/lang/Object;
    .locals 0

    .line 283
    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfInt;->newArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 283
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfInt;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 283
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfInt;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method
