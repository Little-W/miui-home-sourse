.class final Ljava8/util/stream/Nodes$ConcNode;
.super Ljava8/util/stream/Nodes$AbstractConcNode;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Nodes$ConcNode$OfDouble;,
        Ljava8/util/stream/Nodes$ConcNode$OfLong;,
        Ljava8/util/stream/Nodes$ConcNode$OfInt;,
        Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$AbstractConcNode<",
        "TT;",
        "Ljava8/util/stream/Node<",
        "TT;>;>;",
        "Ljava8/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/Node;Ljava8/util/stream/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Node<",
            "TT;>;",
            "Ljava8/util/stream/Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 1229
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$AbstractConcNode;-><init>(Ljava8/util/stream/Node;Ljava8/util/stream/Node;)V

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1248
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    .line 1251
    invoke-interface {p1, v0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1252
    invoke-virtual {p0, p1, v0}, Ljava8/util/stream/Nodes$ConcNode;->copyInto([Ljava/lang/Object;I)V

    return-object p1

    .line 1250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 1239
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iget-object v0, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    .line 1243
    iget-object v0, p0, Ljava8/util/stream/Nodes$ConcNode;->right:Ljava8/util/stream/Node;

    iget-object v1, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    invoke-interface {v1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public forEach(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1258
    iget-object v0, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    invoke-interface {v0, p1}, Ljava8/util/stream/Node;->forEach(Ljava8/util/function/Consumer;)V

    .line 1259
    iget-object v0, p0, Ljava8/util/stream/Nodes$ConcNode;->right:Ljava8/util/stream/Node;

    invoke-interface {v0, p1}, Ljava8/util/stream/Node;->forEach(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1234
    new-instance v0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfRef;-><init>(Ljava8/util/stream/Node;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1279
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    const-string v0, "ConcNode[%s.%s]"

    const/4 v3, 0x2

    .line 1280
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    aput-object v4, v3, v1

    iget-object v1, p0, Ljava8/util/stream/Nodes$ConcNode;->right:Ljava8/util/stream/Node;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "ConcNode[size=%d]"

    .line 1282
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode;->count()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    return-object p0

    .line 1266
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v7

    cmp-long v0, p1, v7

    if-ltz v0, :cond_1

    .line 1268
    iget-object v1, p0, Ljava8/util/stream/Nodes$ConcNode;->right:Ljava8/util/stream/Node;

    sub-long v2, p1, v7

    sub-long v4, p3, v7

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, p3, v7

    if-gtz v0, :cond_2

    .line 1270
    iget-object v1, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_2
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/Nodes$ConcNode;->left:Ljava8/util/stream/Node;

    move-wide v2, p1

    move-wide v4, v7

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    iget-object v1, p0, Ljava8/util/stream/Nodes$ConcNode;->right:Ljava8/util/stream/Node;

    const-wide/16 v2, 0x0

    sub-long v4, p3, v7

    .line 1273
    invoke-interface/range {v1 .. v6}, Ljava8/util/stream/Node;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p2

    .line 1272
    invoke-static {v0, p1, p2}, Ljava8/util/stream/Nodes;->conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
