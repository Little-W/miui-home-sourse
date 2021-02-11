.class Ljava8/util/stream/LongPipeline$9$1;
.super Ljava8/util/stream/Sink$ChainedLong;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongPipeline$9;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava8/util/stream/LongPipeline$9;


# direct methods
.method constructor <init>(Ljava8/util/stream/LongPipeline$9;Ljava8/util/stream/Sink;)V
    .locals 0

    .line 346
    iput-object p1, p0, Ljava8/util/stream/LongPipeline$9$1;->this$1:Ljava8/util/stream/LongPipeline$9;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedLong;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    .line 349
    iget-object v0, p0, Ljava8/util/stream/LongPipeline$9$1;->this$1:Ljava8/util/stream/LongPipeline$9;

    iget-object v0, v0, Ljava8/util/stream/LongPipeline$9;->val$action:Ljava8/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/LongConsumer;->accept(J)V

    .line 350
    iget-object v0, p0, Ljava8/util/stream/LongPipeline$9$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Sink;->accept(J)V

    return-void
.end method
