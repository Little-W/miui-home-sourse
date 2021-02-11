.class final Ljava8/util/stream/Nodes$CollectorTask$OfRef;
.super Ljava8/util/stream/Nodes$CollectorTask;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$CollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$CollectorTask<",
        "TP_IN;TP_OUT;",
        "Ljava8/util/stream/Node<",
        "TP_OUT;>;",
        "Ljava8/util/stream/Node$Builder<",
        "TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/function/IntFunction;Ljava8/util/Spliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/PipelineHelper<",
            "TP_OUT;>;",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation

    .line 3148
    invoke-static {p2}, Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$1;->lambdaFactory$(Ljava8/util/function/IntFunction;)Ljava8/util/function/LongFunction;

    move-result-object p2

    invoke-static {}, Ljava8/util/stream/Nodes$CollectorTask$OfRef$$Lambda$2;->lambdaFactory$()Ljava8/util/function/BinaryOperator;

    move-result-object v0

    invoke-direct {p0, p1, p3, p2, v0}, Ljava8/util/stream/Nodes$CollectorTask;-><init>(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;Ljava8/util/function/LongFunction;Ljava8/util/function/BinaryOperator;)V

    return-void
.end method

.method static synthetic lambda$new$50(Ljava8/util/function/IntFunction;J)Ljava8/util/stream/Node$Builder;
    .locals 0

    .line 3148
    invoke-static {p1, p2, p0}, Ljava8/util/stream/Nodes;->builder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doLeaf()Ljava/lang/Object;
    .locals 1

    .line 3143
    invoke-super {p0}, Ljava8/util/stream/Nodes$CollectorTask;->doLeaf()Ljava8/util/stream/Node;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/AbstractTask;
    .locals 0

    .line 3143
    invoke-super {p0, p1}, Ljava8/util/stream/Nodes$CollectorTask;->makeChild(Ljava8/util/Spliterator;)Ljava8/util/stream/Nodes$CollectorTask;

    move-result-object p1

    return-object p1
.end method
