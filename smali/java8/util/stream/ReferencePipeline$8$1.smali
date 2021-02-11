.class Ljava8/util/stream/ReferencePipeline$8$1;
.super Ljava8/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReferencePipeline$8;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field downstreamAsInt:Ljava8/util/function/IntConsumer;

.field final synthetic this$1:Ljava8/util/stream/ReferencePipeline$8;


# direct methods
.method constructor <init>(Ljava8/util/stream/ReferencePipeline$8;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 296
    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$8$1;->this$1:Ljava8/util/stream/ReferencePipeline$8;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedReference;-><init>(Ljava8/util/stream/Sink;)V

    .line 297
    iget-object p1, p0, Ljava8/util/stream/ReferencePipeline$8$1;->downstream:Ljava8/util/stream/Sink;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava8/util/stream/ReferencePipeline$8$1$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/Sink;)Ljava8/util/function/IntConsumer;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava8/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    :try_start_0
    iget-object v1, p0, Ljava8/util/stream/ReferencePipeline$8$1;->this$1:Ljava8/util/stream/ReferencePipeline$8;

    iget-object v1, v1, Ljava8/util/stream/ReferencePipeline$8;->val$mapper:Ljava8/util/function/Function;

    invoke-interface {v1, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/IntStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 310
    :try_start_1
    invoke-interface {p1}, Ljava8/util/stream/IntStream;->sequential()Ljava8/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Ljava8/util/stream/ReferencePipeline$8$1;->downstreamAsInt:Ljava8/util/function/IntConsumer;

    invoke-interface {v0, v1}, Ljava8/util/stream/IntStream;->forEach(Ljava8/util/function/IntConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 314
    invoke-interface {p1}, Ljava8/util/stream/IntStream;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava8/util/stream/IntStream;->close()V

    :cond_2
    throw p1
.end method

.method public begin(J)V
    .locals 2

    .line 300
    iget-object p1, p0, Ljava8/util/stream/ReferencePipeline$8$1;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method
