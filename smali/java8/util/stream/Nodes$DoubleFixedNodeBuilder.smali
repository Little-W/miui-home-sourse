.class final Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;
.super Ljava8/util/stream/Nodes$DoubleArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleFixedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 2371
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$DoubleArrayNode;-><init>(J)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3

    .line 2396
    iget v0, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2397
    iget-object v0, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    iget v1, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    aput-wide p1, v0, v1

    return-void

    .line 2399
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    .line 2400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Accept exceeded fixed size of %d"

    .line 2399
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public accept(I)V
    .locals 0

    .line 2424
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 2429
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 2406
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2366
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .locals 3

    .line 2386
    iget-object v0, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2391
    iput v1, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    return-void

    .line 2387
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2388
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object p2, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Begin size %d is not equal to fixed size %d"

    .line 2387
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljava8/util/stream/Node$OfDouble;
    .locals 4

    .line 2376
    iget v0, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-object p0

    .line 2377
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    .line 2378
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Current size %d is less than fixed size %d"

    .line 2377
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljava8/util/stream/Node;
    .locals 1

    .line 2366
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->build()Ljava8/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 4

    .line 2411
    iget v0, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2412
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    .line 2413
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "End size %d is less than fixed size %d"

    .line 2412
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "DoubleFixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    .line 2434
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v2, v2

    iget v3, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    sub-int/2addr v2, v3

    .line 2435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava8/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2434
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
