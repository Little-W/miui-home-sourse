.class final Ljava8/util/stream/SliceOps$2;
.super Ljava8/util/stream/IntPipeline$StatefulOp;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SliceOps;->makeInt(Ljava8/util/stream/AbstractPipeline;JJ)Ljava8/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/IntPipeline$StatefulOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$limit:J

.field final synthetic val$skip:J


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;IJJ)V
    .locals 0

    .line 231
    iput-wide p4, p0, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iput-wide p6, p0, Ljava8/util/stream/SliceOps$2;->val$limit:J

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/IntPipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 267
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    const/4 v8, 0x1

    if-lez v0, :cond_1

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    .line 268
    invoke-interface {v3, v0}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getSourceShape()Ljava8/util/stream/StreamShape;

    move-result-object v10

    iget-wide v12, v9, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iget-wide v14, v9, Ljava8/util/stream/SliceOps$2;->val$limit:J

    move-object/from16 v11, p2

    invoke-static/range {v10 .. v15}, Ljava8/util/stream/SliceOps;->access$100(Ljava8/util/stream/StreamShape;Ljava8/util/Spliterator;JJ)Ljava8/util/Spliterator;

    move-result-object v0

    move-object/from16 v2, p1

    .line 275
    invoke-static {v2, v0, v8}, Ljava8/util/stream/Nodes;->collectInt(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v2, p1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 276
    :goto_0
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava8/util/Spliterator$OfInt;

    iget-wide v2, v9, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, v9, Ljava8/util/stream/SliceOps$2;->val$limit:J

    move-object/from16 v0, p0

    .line 277
    invoke-virtual/range {v0 .. v7}, Ljava8/util/stream/SliceOps$2;->unorderedSkipLimitSpliterator(Ljava8/util/Spliterator$OfInt;JJJ)Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    .line 284
    invoke-static {v9, v0, v8}, Ljava8/util/stream/Nodes;->collectInt(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Z)Ljava8/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0

    .line 287
    :cond_2
    new-instance v10, Ljava8/util/stream/SliceOps$SliceTask;

    iget-wide v5, v9, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iget-wide v7, v9, Ljava8/util/stream/SliceOps$2;->val$limit:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V

    .line 288
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 246
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v6

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    const/16 v0, 0x4000

    move-object/from16 v3, p2

    .line 247
    invoke-interface {v3, v0}, Ljava8/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    new-instance v0, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    .line 249
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava8/util/Spliterator$OfInt;

    iget-wide v12, v9, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iget-wide v1, v9, Ljava8/util/stream/SliceOps$2;->val$limit:J

    .line 251
    invoke-static {v12, v13, v1, v2}, Ljava8/util/stream/SliceOps;->access$000(JJ)J

    move-result-wide v14

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Ljava8/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;JJ)V

    return-object v0

    :cond_0
    move-object/from16 v3, p2

    .line 252
    :cond_1
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual/range {p1 .. p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    invoke-virtual/range {p1 .. p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava8/util/Spliterator$OfInt;

    iget-wide v2, v9, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iget-wide v4, v9, Ljava8/util/stream/SliceOps$2;->val$limit:J

    move-object/from16 v0, p0

    .line 253
    invoke-virtual/range {v0 .. v7}, Ljava8/util/stream/SliceOps$2;->unorderedSkipLimitSpliterator(Ljava8/util/Spliterator$OfInt;JJJ)Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0

    .line 258
    :cond_2
    new-instance v10, Ljava8/util/stream/SliceOps$SliceTask;

    sget-object v4, Ljava8/util/stream/WhileOps;->INT_ARR_GEN:Ljava8/util/function/IntFunction;

    iget-wide v5, v9, Ljava8/util/stream/SliceOps$2;->val$skip:J

    iget-wide v7, v9, Ljava8/util/stream/SliceOps$2;->val$limit:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Ljava8/util/stream/SliceOps$SliceTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;JJ)V

    .line 259
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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance p1, Ljava8/util/stream/SliceOps$2$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/SliceOps$2$1;-><init>(Ljava8/util/stream/SliceOps$2;Ljava8/util/stream/Sink;)V

    return-object p1
.end method

.method unorderedSkipLimitSpliterator(Ljava8/util/Spliterator$OfInt;JJJ)Ljava8/util/Spliterator$OfInt;
    .locals 7

    cmp-long v2, p2, p6

    const-wide/16 v3, 0x0

    if-gtz v2, :cond_1

    cmp-long v2, p4, v3

    if-ltz v2, :cond_0

    sub-long v5, p6, p2

    .line 237
    invoke-static {p4, p5, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sub-long v0, p6, p2

    goto :goto_0

    :cond_1
    move-wide v3, p2

    move-wide v0, p4

    .line 240
    :goto_0
    new-instance v2, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    move-object p2, v2

    move-object p3, p1

    move-wide p4, v3

    move-wide p6, v0

    invoke-direct/range {p2 .. p7}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljava8/util/Spliterator$OfInt;JJ)V

    return-object v2
.end method
