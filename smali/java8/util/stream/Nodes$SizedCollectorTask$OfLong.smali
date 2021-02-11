.class final Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;
.super Ljava8/util/stream/Nodes$SizedCollectorTask;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$SizedCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$SizedCollectorTask<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/Sink$OfLong;",
        "Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong<",
        "TP_IN;>;>;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private final array:[J


# direct methods
.method constructor <init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;[J)V"
        }
    .end annotation

    .line 2912
    array-length v0, p3

    invoke-direct {p0, p1, p2, v0}, Ljava8/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/PipelineHelper;I)V

    .line 2913
    iput-object p3, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;Ljava8/util/Spliterator;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)V"
        }
    .end annotation

    .line 2918
    iget-object v0, p1, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Ljava8/util/stream/Nodes$SizedCollectorTask;-><init>(Ljava8/util/stream/Nodes$SizedCollectorTask;Ljava8/util/Spliterator;JJI)V

    .line 2919
    iget-object p1, p1, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iput-object p1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3

    .line 2930
    iget v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    iget v1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->fence:I

    if-ge v0, v1, :cond_0

    .line 2933
    iget-object v0, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->array:[J

    iget v1, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    aput-wide p1, v0, v1

    return-void

    .line 2931
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    iget p2, p0, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->index:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 2938
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2906
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong<",
            "TP_IN;>;"
        }
    .end annotation

    .line 2925
    new-instance v7, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;-><init>(Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;Ljava8/util/Spliterator;JJ)V

    return-object v7
.end method

.method bridge synthetic makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask;
    .locals 0

    .line 2906
    invoke-virtual/range {p0 .. p5}, Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;->makeChild(Ljava8/util/Spliterator;JJ)Ljava8/util/stream/Nodes$SizedCollectorTask$OfLong;

    move-result-object p1

    return-object p1
.end method
