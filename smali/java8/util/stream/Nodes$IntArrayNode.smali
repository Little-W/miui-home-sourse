.class Ljava8/util/stream/Nodes$IntArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayNode"
.end annotation


# instance fields
.field final array:[I

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 1937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 1940
    new-array p1, p1, [I

    iput-object p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    const/4 p1, 0x0

    .line 1941
    iput p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void

    .line 1939
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([I)V
    .locals 0

    .line 1944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1945
    iput-object p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    .line 1946
    array-length p1, p1

    iput p1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1993
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfPrimitive;->asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    return-object p1
.end method

.method public bridge synthetic asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    .line 1933
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->asArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    .line 1933
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntArrayNode;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 3

    .line 1984
    iget-object v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v1, v0

    iget v2, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    return-object v0

    .line 1987
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0

    .line 1933
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$IntArrayNode;->copyInto([II)V

    return-void
.end method

.method public copyInto([II)V
    .locals 3

    .line 2008
    iget-object v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyInto([Ljava/lang/Integer;I)V
    .locals 0

    .line 1979
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfInt;->copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 1933
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$IntArrayNode;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public count()J
    .locals 2

    .line 2013
    iget v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0

    .line 1933
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->forEach(Ljava8/util/function/IntConsumer;)V

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

    .line 1958
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->forEach(Ljava8/util/stream/Node$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEach(Ljava8/util/function/IntConsumer;)V
    .locals 2

    const/4 v0, 0x0

    .line 2018
    :goto_0
    iget v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    .line 2019
    iget-object v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava8/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(I)Ljava8/util/stream/Node$OfInt;
    .locals 0

    .line 1963
    invoke-static {}, Ljava8/util/stream/Nodes$OfPrimitive;->getChild()Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node$OfInt;

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1933
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->getChild(I)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChild(I)Ljava8/util/stream/Node;
    .locals 0

    .line 1933
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->getChild(I)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1953
    invoke-static {}, Ljava8/util/stream/Nodes;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 2003
    invoke-static {}, Ljava8/util/stream/Nodes$OfInt;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1933
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$IntArrayNode;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 0

    .line 1998
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->newArray(Ljava8/util/stream/Node$OfInt;I)[I

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 3

    .line 1968
    iget-object v0, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava8/util/J8Arrays;->spliterator([III)Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1933
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntArrayNode;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 1933
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$IntArrayNode;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "IntArrayNode[%d][%s]"

    const/4 v1, 0x2

    .line 2025
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v2, v2

    iget v3, p0, Ljava8/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v2, v3

    .line 2026
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ljava8/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2025
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    .line 1974
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfInt;->truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1933
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$IntArrayNode;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 1933
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$IntArrayNode;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
