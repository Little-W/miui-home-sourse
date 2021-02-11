.class Ljava8/util/stream/WhileOps$1Op;
.super Ljava8/util/stream/ReferencePipeline$StatefulOp;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/stream/WhileOps$DropWhileOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/WhileOps;->makeDropWhileRef(Ljava8/util/stream/AbstractPipeline;Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReferencePipeline$StatefulOp<",
        "TT;TT;>;",
        "Ljava8/util/stream/WhileOps$DropWhileOp<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$predicate:Ljava8/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava8/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 341
    iput-object p4, p0, Ljava8/util/stream/WhileOps$1Op;->val$predicate:Ljava8/util/function/Predicate;

    .line 342
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/ReferencePipeline$StatefulOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

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
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)",
            "Ljava8/util/stream/Node<",
            "TT;>;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava8/util/stream/WhileOps$DropWhileTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$DropWhileTask;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)V

    .line 363
    invoke-virtual {v0}, Ljava8/util/stream/WhileOps$DropWhileTask;->invoke()Ljava/lang/Object;

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
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 348
    sget-object v0, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p1}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Ljava8/util/stream/Nodes;->castingArray()Ljava8/util/function/IntFunction;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava8/util/stream/WhileOps$1Op;->opEvaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)Ljava8/util/stream/Node;

    move-result-object p1

    .line 350
    invoke-interface {p1}, Ljava8/util/stream/Node;->spliterator()Ljava8/util/Spliterator;

    move-result-object p1

    return-object p1

    .line 353
    :cond_0
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 354
    invoke-virtual {p1, p2}, Ljava8/util/stream/PipelineHelper;->wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v1, p0, Ljava8/util/stream/WhileOps$1Op;->val$predicate:Ljava8/util/function/Predicate;

    invoke-direct {v0, p1, p2, v1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava8/util/Spliterator;ZLjava8/util/function/Predicate;)V

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

    const/4 p1, 0x0

    .line 368
    invoke-virtual {p0, p2, p1}, Ljava8/util/stream/WhileOps$1Op;->opWrapSink(Ljava8/util/stream/Sink;Z)Ljava8/util/stream/WhileOps$DropWhileSink;

    move-result-object p1

    return-object p1
.end method

.method public opWrapSink(Ljava8/util/stream/Sink;Z)Ljava8/util/stream/WhileOps$DropWhileSink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "TT;>;Z)",
            "Ljava8/util/stream/WhileOps$DropWhileSink<",
            "TT;>;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava8/util/stream/WhileOps$1Op$1OpSink;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/WhileOps$1Op$1OpSink;-><init>(Ljava8/util/stream/WhileOps$1Op;Ljava8/util/stream/Sink;Z)V

    return-object v0
.end method
