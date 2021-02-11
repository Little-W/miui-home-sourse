.class Ljava8/util/stream/DoublePipeline$5$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$5;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/DoublePipeline$5;


# direct methods
.method constructor <init>(Ljava8/util/stream/DoublePipeline$5;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 260
    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$5$1;->this$1:Ljava8/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method

.method static synthetic lambda$accept$3(Ljava8/util/stream/DoublePipeline$5$1;D)V
    .locals 0

    .line 273
    iget-object p0, p0, Ljava8/util/stream/DoublePipeline$5$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1, p2}, Ljava8/util/stream/Sink;->accept(D)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Ljava8/util/stream/DoublePipeline$5$1;->this$1:Ljava8/util/stream/DoublePipeline$5;

    iget-object v1, v1, Ljava8/util/stream/DoublePipeline$5;->val$mapper:Ljava8/util/function/DoubleFunction;

    invoke-interface {v1, p1, p2}, Ljava8/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/DoubleStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 273
    :try_start_1
    invoke-interface {p1}, Ljava8/util/stream/DoubleStream;->sequential()Ljava8/util/stream/DoubleStream;

    move-result-object p2

    invoke-static {p0}, Ljava8/util/stream/DoublePipeline$5$1$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/DoublePipeline$5$1;)Ljava8/util/function/DoubleConsumer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava8/util/stream/DoubleStream;->forEach(Ljava8/util/function/DoubleConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 277
    invoke-interface {p1}, Ljava8/util/stream/DoubleStream;->close()V

    :cond_1
    return-void

    :catchall_1
    move-exception p2

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava8/util/stream/DoubleStream;->close()V

    :cond_2
    throw p2
.end method

.method public begin(J)V
    .locals 2

    .line 263
    iget-object p1, p0, Ljava8/util/stream/DoublePipeline$5$1;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method
