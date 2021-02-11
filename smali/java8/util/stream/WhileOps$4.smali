.class final Ljava8/util/stream/WhileOps$4;
.super Ljava8/util/stream/DoublePipeline$StatefulOp;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/WhileOps;->makeTakeWhileDouble(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/DoublePipeline$StatefulOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Ljava8/util/function/DoublePredicate;


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoublePredicate;)V
    .locals 0

    .line 241
    iput-object p4, p0, Ljava8/util/stream/WhileOps$4;->val$predicate:Ljava8/util/function/DoublePredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/DoublePipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$TakeWhileTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)V

    .line 260
    invoke-virtual {v0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/Node;

    return-object p1
.end method

.method opEvaluateParallelLazy(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 245
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Ljava8/util/stream/WhileOps;->DOUBLE_ARR_GEN:Ljava8/util/function/IntFunction;

    invoke-virtual {p0, p1, p2, v0}, Ljava8/util/stream/WhileOps$4;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    .line 247
    invoke-interface {p1}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 250
    :cond_0
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    .line 251
    invoke-virtual {p1, p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object p1

    check-cast p1, Ljava8/util/Spliterator$OfDouble;

    const/4 p2, 0x0

    iget-object v1, p0, Ljava8/util/stream/WhileOps$4;->val$predicate:Ljava8/util/function/DoublePredicate;

    invoke-direct {v0, p1, p2, v1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V

    return-object v0
.end method

.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance p1, Ljava8/util/stream/WhileOps$4$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/WhileOps$4$1;-><init>(Ljava8/util/stream/WhileOps$4;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
