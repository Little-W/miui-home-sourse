.class interface abstract Ljava8/util/stream/TerminalOp;
.super Ljava/lang/Object;
.source "TerminalOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation
.end method

.method public abstract evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TE_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TR;"
        }
    .end annotation
.end method

.method public abstract getOpFlags()I
.end method

.method public abstract inputShape()Ljava8/util/stream/StreamShape;
.end method
