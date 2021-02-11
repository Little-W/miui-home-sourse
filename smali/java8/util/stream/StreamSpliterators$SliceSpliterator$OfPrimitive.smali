.class abstract Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;
.super Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$SliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_CONS:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/StreamSpliterators$SliceSpliterator<",
        "TT;TT_SP",
        "LITR;",
        ">;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfPrimitive;JJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJ)V"
        }
    .end annotation

    .line 992
    invoke-interface {p1}, Ljava8/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v0

    move-wide/from16 v6, p4

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v11}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJJJ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfPrimitive;JJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 996
    invoke-direct/range {p0 .. p9}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;-><init>(Ljava8/util/Spliterator;JJJJ)V

    return-void
.end method


# virtual methods
.method protected abstract emptyConsumer()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_CONS;"
        }
    .end annotation
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 1020
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 1025
    :cond_0
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    return-void

    .line 1028
    :cond_1
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-object v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava8/util/Spliterator;

    check-cast v2, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v2}, Ljava8/util/Spliterator$OfPrimitive;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceFence:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1030
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 1031
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_2

    .line 1034
    :cond_2
    :goto_0
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-lez v0, :cond_3

    .line 1035
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 1036
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_0

    .line 1039
    :cond_3
    :goto_1
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v5, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 1040
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 1039
    iget-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 1001
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 1006
    :cond_0
    :goto_0
    iget-wide v2, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->sliceOrigin:J

    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    if-lez v0, :cond_1

    .line 1007
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->emptyConsumer()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    .line 1008
    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    goto :goto_0

    .line 1011
    :cond_1
    iget-wide v4, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    iget-wide v6, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->fence:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    return v1

    .line 1014
    :cond_2
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->index:J

    .line 1015
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 985
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
