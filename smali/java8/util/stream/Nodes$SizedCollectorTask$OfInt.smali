.class final Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;
.super Ljava8/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava8/util/stream/Sink$OfInt;",
        "Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt<",
        "TP_IN;>;>;",
        "Ljava8/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private final array:[I


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 2876
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava8/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;I)V

    .line 2877
    iput-object p3, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;Ljava8/util/Spliterator;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 2882
    iget-object v0, p1, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava8/util/stream/Nodes$SizedCollectorTask;Ljava8/util/Spliterator;JJI)V

    .line 2883
    iget-object p1, p1, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    iput-object p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    .line 2894
    iget v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    iget v1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->fence:I

    if-ge v0, v1, :cond_0

    .line 2897
    iget-object v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->array:[I

    iget v1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    aput p1, v0, v1

    return-void

    .line 2895
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    iget v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 2902
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfInt;->accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2870
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt<",
            "TP_IN;>;"
        }
    .end annotation

    .line 2889
    new-instance v7, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;-><init>(Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;Ljava8/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 2870
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;->makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask$OfInt;

    move-result-object p1

    return-object p1
.end method
