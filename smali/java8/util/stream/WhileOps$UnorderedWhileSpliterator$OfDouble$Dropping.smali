.class final Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 0

    .line 1177
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V
    .locals 0

    .line 1173
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1171
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-super {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method makeSpliterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1209
    new-instance v0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V

    return-object v0
.end method

.method bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    .line 1171
    check-cast p1, Ljava8/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->makeSpliterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1171
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 6

    .line 1182
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1183
    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->takeOrDrop:Z

    const/4 v1, 0x1

    .line 1186
    :goto_0
    iget-object v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljava8/util/Spliterator;

    check-cast v2, Ljava8/util/Spliterator$OfDouble;

    invoke-interface {v2, p0}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1187
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->checkCancelOnCount()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->p:Ljava8/util/function/DoublePredicate;

    iget-wide v4, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    .line 1188
    invoke-interface {v3, v4, v5}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1198
    :cond_1
    iget-wide v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->t:D

    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    :cond_2
    return v2

    .line 1203
    :cond_3
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1171
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1171
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
