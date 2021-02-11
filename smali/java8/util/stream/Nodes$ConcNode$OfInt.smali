.class final Ljava8/util/stream/Nodes$ConcNode$OfInt;
.super Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$ConcNode$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        "[I",
        "Ljava8/util/Spliterator$OfInt;",
        "Ljava8/util/stream/Node$OfInt;",
        ">;",
        "Ljava8/util/stream/Node$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/Node$OfInt;Ljava8/util/stream/Node$OfInt;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/stream/Node$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public copyInto([Ljava/lang/Integer;I)V
    .locals 0

    .line 1360
    invoke-static {p0, p1, p2}, Ljava8/util/stream/Nodes$OfInt;->copyInto(Ljava8/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 1334
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/Nodes$ConcNode$OfInt;->copyInto([Ljava/lang/Integer;I)V

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

    .line 1344
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->forEach(Ljava8/util/stream/Node$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 0

    .line 1334
    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$ConcNode$OfInt;->newArray(I)[I

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[I
    .locals 0

    .line 1365
    invoke-static {p0, p1}, Ljava8/util/stream/Nodes$OfInt;->newArray(Ljava8/util/stream/Node$OfInt;I)[I

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 1349
    new-instance v0, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfInt;

    invoke-direct {v0, p0}, Ljava8/util/stream/Nodes$InternalNodeSpliterator$OfInt;-><init>(Ljava8/util/stream/Node$OfInt;)V

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1334
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava8/util/Spliterator;
    .locals 1

    .line 1334
    invoke-virtual {p0}, Ljava8/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;

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

    .line 1355
    invoke-static/range {p0 .. p5}, Ljava8/util/stream/Nodes$OfInt;->truncate(Ljava8/util/stream/Node$OfInt;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1334
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$ConcNode$OfInt;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 1334
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$ConcNode$OfInt;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfInt;

    move-result-object p1

    return-object p1
.end method
