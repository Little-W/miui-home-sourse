.class final Ljava8/util/stream/Nodes$ConcNode$OfLong;
.super Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$ConcNode$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava8/util/function/LongConsumer;",
        "[J",
        "Ljava8/util/Spliterator$OfLong;",
        "Ljava8/util/stream/Node$OfLong;",
        ">;",
        "Ljava8/util/stream/Node$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/Node$OfLong;Ljava8/util/stream/Node$OfLong;)V
    .locals 0

    .line 1374
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Long;I)V
    .locals 0

    .line 1395
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfLong;->copyInto(Ljava8/util/stream/Node$OfLong;[Ljava/lang/Long;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 1369
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1379
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfLong;->forEach(Ljava8/util/stream/Node$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1369
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$ConcNode$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[J
    .locals 0

    .line 1400
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfLong;->newArray(Ljava8/util/stream/Node$OfLong;I)[J

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 1390
    new-instance v0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfLong;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfLong;-><init>(Ljava8/util/stream/Node$OfLong;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1369
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 1369
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Node$OfLong;"
        }
    .end annotation

    .line 1385
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfLong;->truncate(Ljava8/util/stream/Node$OfLong;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1369
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$ConcNode$OfLong;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 1369
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$ConcNode$OfLong;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method
