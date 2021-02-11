.class final Ljava8/util/stream/Nodes$FixedNodeBuilder;
.super Ljava8/util/stream/Nodes$ArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedNodeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$ArrayNode<",
        "TT;>;",
        "Ljava8/util/stream/Node$Builder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(JLjava8/util/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 1773
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Nodes$ArrayNode;-><init>(JLjava8/util/function/IntFunction;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 1826
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 1816
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 1821
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1794
    iget v0, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1795
    iget-object v0, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    aput-object p1, v0, v1

    return-void

    .line 1797
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    .line 1798
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Accept exceeded fixed size of %d"

    .line 1797
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public begin(J)V
    .locals 3

    .line 1786
    iget-object v0, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1789
    iput v1, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    return-void

    .line 1787
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1788
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object p2, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Begin size %d is not equal to fixed size %d"

    .line 1787
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 1778
    iget v0, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-object p0

    .line 1779
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1780
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Current size %d is less than fixed size %d"

    .line 1779
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 4

    .line 1804
    iget v0, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 1805
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    .line 1806
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "End size %d is less than fixed size %d"

    .line 1805
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    .line 1831
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    array-length v2, v2

    iget v3, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->curSize:I

    sub-int/2addr v2, v3

    .line 1832
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava8/util/stream/Nodes$FixedNodeBuilder;->array:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1831
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
