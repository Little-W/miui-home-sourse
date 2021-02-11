.class final Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Taking"
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 0

    .line 1135
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V
    .locals 0

    .line 1131
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1129
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-super {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method makeSpliterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1167
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    .line 1129
    check-cast p1, Ljava8/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->makeSpliterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1129
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 4

    .line 1141
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->takeOrDrop:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1142
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->checkCancelOnCount()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    .line 1143
    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->p:Ljava8/util/function/DoublePredicate;

    iget-wide v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->t:D

    .line 1144
    invoke-interface {v0, v2, v3}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    iget-wide v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->t:D

    invoke-interface {p1, v2, v3}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return v1

    :cond_0
    move v0, v1

    :cond_1
    const/4 p1, 0x0

    .line 1150
    iput-boolean p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->takeOrDrop:Z

    if-nez v0, :cond_2

    .line 1154
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1162
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1129
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 1129
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
