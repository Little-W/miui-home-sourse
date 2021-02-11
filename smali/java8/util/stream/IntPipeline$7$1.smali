.class Ljava8/util/stream/IntPipeline$7$1;
.super Ljava8/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline$7;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/IntPipeline$7;


# direct methods
.method constructor <init>(Ljava8/util/stream/IntPipeline$7;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 295
    iput-object p1, p0, Ljava8/util/stream/IntPipeline$7$1;->this$1:Ljava8/util/stream/IntPipeline$7;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedInt;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method

.method static synthetic lambda$accept$18(Ljava8/util/stream/IntPipeline$7$1;I)V
    .locals 0

    .line 308
    iget-object p0, p0, Ljava8/util/stream/IntPipeline$7$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {p0, p1}, Ljava8/util/stream/Sink;->accept(I)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    const/4 v0, 0x0

    .line 305
    :try_start_0
    iget-object v1, p0, Ljava8/util/stream/IntPipeline$7$1;->this$1:Ljava8/util/stream/IntPipeline$7;

    iget-object v1, v1, Ljava8/util/stream/IntPipeline$7;->val$mapper:Ljava8/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/IntStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 308
    :try_start_1
    invoke-interface {p1}, Ljava8/util/stream/IntStream;->sequential()Ljava8/util/stream/IntStream;

    move-result-object v0

    invoke-static {p0}, Ljava8/util/stream/IntPipeline$7$1$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/IntPipeline$7$1;)Ljava8/util/function/IntConsumer;

    move-result-object v1

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

    .line 312
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

    .line 298
    iget-object p1, p0, Ljava8/util/stream/IntPipeline$7$1;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method
