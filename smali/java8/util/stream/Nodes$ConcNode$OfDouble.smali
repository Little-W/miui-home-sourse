.class final Ljava8/util/stream/Nodes$ConcNode$OfDouble;
.super Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$ConcNode$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        "[D",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/stream/Node$OfDouble;",
        ">;",
        "Ljava8/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/Node$OfDouble;Ljava8/util/stream/Node$OfDouble;)V
    .locals 0

    .line 1409
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Double;I)V
    .locals 0

    .line 1430
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfDouble;->copyInto(Ljava8/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 1404
    check-cast p1, [Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1414
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfDouble;->forEach(Ljava8/util/stream/Node$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1404
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;->newArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[D
    .locals 0

    .line 1435
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfDouble;->newArray(Ljava8/util/stream/Node$OfDouble;I)[D

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1425
    new-instance v0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfDouble;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfDouble;-><init>(Ljava8/util/stream/Node$OfDouble;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1404
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 1404
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node$OfDouble;"
        }
    .end annotation

    .line 1420
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfDouble;->truncate(Ljava8/util/stream/Node$OfDouble;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1404
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 1404
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$ConcNode$OfDouble;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
