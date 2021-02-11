.class Ljava8/util/stream/IntPipeline$9$1;
.super Ljava8/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline$9;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
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
.field final synthetic this$1:Ljava8/util/stream/IntPipeline$9;


# direct methods
.method constructor <init>(Ljava8/util/stream/IntPipeline$9;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 340
    iput-object p1, p0, Ljava8/util/stream/IntPipeline$9$1;->this$1:Ljava8/util/stream/IntPipeline$9;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedInt;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    .line 348
    iget-object v0, p0, Ljava8/util/stream/IntPipeline$9$1;->this$1:Ljava8/util/stream/IntPipeline$9;

    iget-object v0, v0, Ljava8/util/stream/IntPipeline$9;->val$predicate:Ljava8/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Ljava8/util/stream/IntPipeline$9$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava8/util/stream/Sink;->accept(I)V

    :cond_0
    return-void
.end method

.method public begin(J)V
    .locals 2

    .line 343
    iget-object p1, p0, Ljava8/util/stream/IntPipeline$9$1;->downstream:Ljava8/util/stream/Sink;

    const-wide/16 v0, -0x1

    invoke-interface {p1, v0, v1}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method
