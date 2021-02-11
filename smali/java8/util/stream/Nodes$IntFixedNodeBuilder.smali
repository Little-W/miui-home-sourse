.class final Ljava8/util/stream/Nodes$IntFixedNodeBuilder;
.super Ljava8/util/stream/Nodes$IntArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntFixedNodeBuilder"
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 2225
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$IntArrayNode;-><init>(J)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 2283
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 3

    .line 2250
    iget v0, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2251
    iget-object v0, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    iget v1, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    aput p1, v0, v1

    return-void

    .line 2253
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v2, v2

    .line 2254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Accept exceeded fixed size of %d"

    .line 2253
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public accept(J)V
    .locals 0

    .line 2278
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 2260
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfInt;->accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2220
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .locals 3

    .line 2240
    iget-object v0, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2245
    iput v1, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    return-void

    .line 2241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2242
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x1

    iget-object p2, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const-string p1, "Begin size %d is not equal to fixed size %d"

    .line 2241
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Ljava8/util/stream/Node$OfInt;
    .locals 4

    .line 2230
    iget v0, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-object p0

    .line 2231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 2232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Current size %d is less than fixed size %d"

    .line 2231
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic build()Ljava8/util/stream/Node;
    .locals 1

    .line 2220
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->build()Ljava8/util/stream/Node$OfInt;

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

    .line 2265
    iget v0, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    .line 2267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "End size %d is less than fixed size %d"

    .line 2266
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "IntFixedNodeBuilder[%d][%s]"

    const/4 v1, 0x2

    .line 2288
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    array-length v2, v2

    iget v3, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->curSize:I

    sub-int/2addr v2, v3

    .line 2289
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava8/util/stream/Nodes$IntFixedNodeBuilder;->array:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2288
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
