.class final Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;
.super Ljava8/util/stream/Nodes$InternalNodeSpliterator;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$InternalNodeSpliterator<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;",
        "Ljava8/util/stream/Node<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1576
    invoke-direct {p0, p1}, Ljava8/util/stream/Nodes$InternalNodeSpliterator;-><init>(Ljava8/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1603
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava8/util/stream/Node;

    if-nez v0, :cond_0

    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_3

    .line 1607
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-nez v0, :cond_2

    .line 1608
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initStack()Ljava/util/Deque;

    move-result-object v0

    .line 1610
    :goto_0
    invoke-virtual {p0, v0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava8/util/stream/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1611
    invoke-interface {v1, p1}, Ljava8/util/stream/Node;->forEach(Ljava8/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1613
    iput-object p1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava8/util/stream/Node;

    goto :goto_2

    .line 1616
    :cond_2
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    goto :goto_2

    .line 1619
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 1634
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1624
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1629
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1581
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->initTryAdvance()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1584
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1586
    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->lastNodeSpliterator:Ljava8/util/Spliterator;

    if-nez v1, :cond_1

    .line 1588
    iget-object v1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceStack:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->findNextLeafNode(Ljava/util/Deque;)Ljava8/util/stream/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1590
    invoke-interface {v1}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    .line 1592
    iget-object v0, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->tryAdvanceSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 1596
    iput-object p1, p0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;->curNode:Ljava8/util/stream/Node;

    :cond_2
    return v0
.end method
