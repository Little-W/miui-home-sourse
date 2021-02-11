.class Ljava8/util/stream/DoublePipeline$8$1;
.super Ljava8/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline$8;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
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
.field final synthetic this$1:Ljava8/util/stream/DoublePipeline$8;


# direct methods
.method constructor <init>(Ljava8/util/stream/DoublePipeline$8;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 328
    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$8$1;->this$1:Ljava8/util/stream/DoublePipeline$8;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedDouble;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    .line 331
    iget-object v0, p0, Ljava8/util/stream/DoublePipeline$8$1;->this$1:Ljava8/util/stream/DoublePipeline$8;

    iget-object v0, v0, Ljava8/util/stream/DoublePipeline$8;->val$action:Ljava8/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    .line 332
    iget-object v0, p0, Ljava8/util/stream/DoublePipeline$8$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Sink;->accept(D)V

    return-void
.end method
