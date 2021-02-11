.class final Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;
.super Ljava8/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final consumer:Ljava8/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljava8/util/function/DoubleConsumer;Z)V
    .locals 0

    .line 282
    invoke-direct {p0, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 283
    iput-object p1, p0, Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava8/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    .line 293
    iget-object v0, p0, Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;->consumer:Ljava8/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 298
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 277
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ForEachOps$ForEachOp$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 277
    invoke-super {p0, p1, p2}, Ljava8/util/stream/ForEachOps$ForEachOp;->evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 277
    invoke-super {p0}, Ljava8/util/stream/ForEachOps$ForEachOp;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public inputShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 288
    sget-object v0, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    return-object v0
.end method
