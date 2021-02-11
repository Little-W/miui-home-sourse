.class final Ljava8/util/stream/SliceOps$1;
.super Ljava8/util/stream/ReferencePipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SliceOps;->makeRef(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V
    .locals 0

    .line 115
    iput-wide p4, p0, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iput-wide p6, p0, Ljava8/util/stream/SliceOps$1;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v8, p3

    .line 158
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    const/4 v10, 0x1

    if-lez v0, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    .line 159
    invoke-interface {v3, v0}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getSourceShape()Ljava8/util/stream/StreamShape;

    move-result-object v11

    iget-wide v13, v9, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v0, v9, Ljava8/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v12, p2

    move-wide v15, v0

    invoke-static/range {v11 .. v16}, Ljava8/util/stream/SliceOps;->access$100(Ljava8/util/stream/StreamShape;Ljava8/util/Spliterator;JJ)Ljava8/util/Spliterator;

    move-result-object v0

    move-object/from16 v2, p1

    .line 166
    invoke-static {v2, v0, v10, v8}, Ljava8/util/stream/Nodes;->collect(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 167
    :goto_0
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    iget-wide v2, v9, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v9, Ljava8/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v0, p0

    .line 168
    invoke-virtual/range {v0 .. v7}, Ljava8/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava8/util/Spliterator;JJJ)Ljava8/util/Spliterator;

    move-result-object v0

    .line 175
    invoke-static {v9, v0, v10, v8}, Ljava8/util/stream/Nodes;->collect(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0

    .line 178
    :cond_2
    new-instance v10, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v11, v9, Ljava8/util/stream/SliceOps$1;->val$limit:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V

    .line 179
    invoke-virtual {v10}, Ljava8/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    return-object v0
.end method

.method opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 129
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    .line 130
    invoke-interface {v3, v0}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    .line 132
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v11

    iget-wide v12, v9, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v1, v9, Ljava8/util/stream/SliceOps$1;->val$limit:J

    .line 134
    invoke-static {v12, v13, v1, v2}, Ljava8/util/stream/SliceOps;->access$000(JJ)J

    move-result-wide v14

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;JJ)V

    return-object v0

    :cond_0
    move-object/from16 v3, p2

    .line 135
    :cond_1
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    iget-wide v2, v9, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v4, v9, Ljava8/util/stream/SliceOps$1;->val$limit:J

    move-object/from16 v0, p0

    .line 136
    invoke-virtual/range {v0 .. v7}, Ljava8/util/stream/SliceOps$1;->unorderedSkipLimitSpliterator(Ljava8/util/Spliterator;JJJ)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 149
    :cond_2
    new-instance v10, Ljava8/util/stream/SliceOps$SliceTask;

    invoke-static {}, Ljava8/util/stream/Nodes;->castingArray()Ljava8/util/function/IntFunction;

    move-result-object v4

    iget-wide v5, v9, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v7, v9, Ljava8/util/stream/SliceOps$1;->val$limit:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V

    .line 150
    invoke-virtual {v10}, Ljava8/util/stream/SliceOps$SliceTask;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    invoke-interface {v0}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TT;>;)",
            "Ljava8/util/stream/Sink<",
            "TT;>;"
        }
    .end annotation

    .line 185
    new-instance p1, Ljava8/util/stream/SliceOps$1$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/SliceOps$1$1;-><init>(Ljava8/util/stream/SliceOps$1;Ljava8/util/stream/Sink;)V

    return-object p1
.end method

.method unorderedSkipLimitSpliterator(Ljava8/util/Spliterator;JJJ)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;JJJ)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    cmp-long v2, p2, p6

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_1

    cmp-long v2, p4, v3

    if-ltz v2, :cond_0

    sub-long v5, p6, p2

    .line 121
    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sub-long v0, p6, p2

    goto :goto_0

    :cond_1
    move-wide v3, p2

    move-wide v0, p4

    .line 124
    :goto_0
    new-instance v2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;

    move-object p2, v2

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v0

    invoke-direct/range {p2 .. p7}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfRef;-><init>(Ljava8/util/Spliterator;JJ)V

    return-object v2
.end method
