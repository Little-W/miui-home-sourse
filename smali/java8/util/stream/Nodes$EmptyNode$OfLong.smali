.class final Ljava8/util/stream/Nodes$EmptyNode$OfLong;
.super Ljava8/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava8/util/function/LongConsumer;",
        ">;",
        "Ljava8/util/stream/Node$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 953
    invoke-direct {p0}, Ljava8/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 949
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 1

    .line 978
    invoke-static {}, Ljava8/util/stream/Nodes;->access$600()[J

    move-result-object v0

    return-object v0
.end method

.method public copyInto([Ljava/lang/Long;I)V
    .locals 0

    .line 983
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfLong;->copyInto(Ljava8/util/stream/Node$OfLong;[Ljava/lang/Long;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 949
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->copyInto([Ljava/lang/Long;I)V

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

    .line 957
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfLong;->forEach(Ljava8/util/stream/Node$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfLong;
    .locals 0

    .line 967
    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$OfLong;

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 949
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->getChild(I)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    .line 949
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->getChild(I)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 949
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->newArray(I)[J

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[J
    .locals 0

    .line 988
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfLong;->newArray(Ljava8/util/stream/Node$OfLong;I)[J

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 962
    invoke-static {}, Ljava8/util/Spliterators;->emptyLongSpliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 949
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 949
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;

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

    .line 973
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfLong;->truncate(Ljava8/util/stream/Node$OfLong;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 949
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 949
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$EmptyNode$OfLong;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfLong;

    move-result-object p1

    return-object p1
.end method
