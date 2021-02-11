.class final Ljava8/util/stream/WhileOps$TakeWhileTask;
.super Ljava8/util/stream/AbstractShortCircuitTask;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TakeWhileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/AbstractShortCircuitTask<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava8/util/stream/WhileOps$TakeWhileTask<",
        "TP_IN;TP_OUT;>;>;"
    }
.end annotation


# instance fields
.field private volatile completed:Z

.field private final generator:Ljava8/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;"
        }
    .end annotation
.end field

.field private final isOrdered:Z

.field private final op:Ljava8/util/stream/AbstractPipeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;"
        }
    .end annotation
.end field

.field private shortCircuited:Z

.field private thisNodeSize:J


# direct methods
.method constructor <init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/AbstractPipeline<",
            "TP_OUT;TP_OUT;*>;",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)V"
        }
    .end annotation

    .line 1256
    invoke-direct {p0, p2, p3}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    .line 1257
    iput-object p1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    .line 1258
    iput-object p4, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    .line 1259
    sget-object p1, Ljava8/util/stream/StreamOpFlag;->ORDERED:Ljava8/util/stream/StreamOpFlag;

    invoke-virtual {p2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava8/util/stream/StreamOpFlag;->isKnown(I)Z

    move-result p1

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    return-void
.end method

.method constructor <init>(Ljava8/util/stream/WhileOps$TakeWhileTask;Ljava8/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 1263
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/AbstractShortCircuitTask;-><init>(Ljava8/util/stream/AbstractShortCircuitTask;Ljava8/util/Spliterator;)V

    .line 1264
    iget-object p2, p1, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    .line 1265
    iget-object p2, p1, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    .line 1266
    iget-boolean p1, p1, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    .line 1342
    invoke-super {p0}, Ljava8/util/stream/AbstractShortCircuitTask;->cancel()V

    .line 1343
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->completed:Z

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 1240
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final doLeaf()Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->generator:Ljava8/util/function/IntFunction;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava8/util/stream/PipelineHelper;->makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object v0

    .line 1282
    iget-object v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    iget-object v2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v2}, Ljava8/util/stream/PipelineHelper;->getStreamAndOpFlags()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava8/util/stream/AbstractPipeline;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    .line 1284
    iget-object v2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->helper:Ljava8/util/stream/PipelineHelper;

    iget-object v3, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->helper:Ljava8/util/stream/PipelineHelper;

    invoke-virtual {v3, v1}, Ljava8/util/stream/PipelineHelper;->wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;

    move-result-object v1

    iget-object v3, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->spliterator:Ljava8/util/Spliterator;

    invoke-virtual {v2, v1, v3}, Ljava8/util/stream/PipelineHelper;->copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z

    move-result v1

    iput-boolean v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v1, :cond_0

    .line 1287
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->cancelLaterNodes()V

    .line 1290
    :cond_0
    invoke-interface {v0}, Ljava8/util/stream/Node$Builder;->build()Ljava8/util/stream/Node;

    move-result-object v0

    .line 1291
    invoke-interface {v0}, Ljava8/util/stream/Node;->count()J

    move-result-wide v1

    iput-wide v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    return-object v0
.end method

.method protected bridge synthetic getEmptyResult()Ljava/lang/Object;
    .locals 1

    .line 1240
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected final getEmptyResult()Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    invoke-static {v0}, Ljava8/util/stream/Nodes;->emptyNode(Ljava8/util/stream/StreamShape;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    .line 1240
    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$TakeWhileTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/WhileOps$TakeWhileTask;

    move-result-object p1

    return-object p1
.end method

.method protected makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/WhileOps$TakeWhileTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/stream/WhileOps$TakeWhileTask<",
            "TP_IN;TP_OUT;>;"
        }
    .end annotation

    .line 1271
    new-instance v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/WhileOps$TakeWhileTask;-><init>(Ljava8/util/stream/WhileOps$TakeWhileTask;Ljava8/util/Spliterator;)V

    return-object v0
.end method

.method merge()Ljava8/util/stream/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1326
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    return-object v0

    .line 1328
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1331
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    return-object v0

    .line 1335
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->op:Ljava8/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Ljava8/util/stream/AbstractPipeline;->getOutputShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    .line 1336
    invoke-virtual {v1}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/util/stream/Node;

    iget-object v2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v2, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v2}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava8/util/stream/Node;

    .line 1335
    invoke-static {v0, v1, v2}, Ljava8/util/stream/Nodes;->conc(Ljava8/util/stream/StreamShape;Ljava8/util/stream/Node;Ljava8/util/stream/Node;)Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method public final onCompletion(Ljava8/util/concurrent/CountedCompleter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 1297
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->isLeaf()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1299
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    iget-object v1, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v1, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v1, v1, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    .line 1300
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->canceled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1301
    iput-wide v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1302
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getEmptyResult()Ljava8/util/stream/Node;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_0
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->isOrdered:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-boolean v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->shortCircuited:Z

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iput-wide v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1308
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    invoke-virtual {v0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->getLocalResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Node;

    goto :goto_0

    .line 1311
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->leftChild:Ljava8/util/stream/AbstractTask;

    check-cast v0, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v0, v0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    iget-object v2, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->rightChild:Ljava8/util/stream/AbstractTask;

    check-cast v2, Ljava8/util/stream/WhileOps$TakeWhileTask;

    iget-wide v2, v2, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->thisNodeSize:J

    .line 1312
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->merge()Ljava8/util/stream/Node;

    move-result-object v0

    .line 1315
    :goto_0
    invoke-virtual {p0, v0}, Ljava8/util/stream/WhileOps$TakeWhileTask;->setLocalResult(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    .line 1318
    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$TakeWhileTask;->completed:Z

    .line 1319
    invoke-super {p0, p1}, Ljava8/util/stream/AbstractShortCircuitTask;->onCompletion(Ljava8/util/concurrent/CountedCompleter;)V

    return-void
.end method
