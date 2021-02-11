.class final Ljava8/util/stream/Nodes$EmptyNode$OfInt;
.super Ljava8/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava8/util/function/IntConsumer;",
        ">;",
        "Ljava8/util/stream/Node$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 910
    invoke-direct {p0}, Ljava8/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 906
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 1

    .line 935
    invoke-static {}, Ljava8/util/stream/Nodes;->access$500()[I

    move-result-object v0

    return-object v0
.end method

.method public copyInto([Ljava/lang/Integer;I)V
    .locals 0

    .line 940
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfInt;->copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 906
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 914
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->forEach(Ljava8/util/stream/Node$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfInt;
    .locals 0

    .line 924
    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$OfInt;

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 906
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->getChild(I)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    .line 906
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->getChild(I)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 906
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 0

    .line 945
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->newArray(Ljava8/util/stream/Node$OfInt;I)[I

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 919
    invoke-static {}, Ljava8/util/Spliterators;->emptyIntSpliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 906
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 906
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node$OfInt;"
        }
    .end annotation

    .line 930
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfInt;->truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 906
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 906
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$EmptyNode$OfInt;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
