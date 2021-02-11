.class final Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dropping"
.end annotation


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V
    .locals 0

    .line 1057
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V
    .locals 0

    .line 1053
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;-><init>(Ljava8/util/Spliterator$OfLong;ZLjava8/util/function/LongPredicate;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1051
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-super {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    .line 1051
    check-cast p1, Ljava8/util/Spliterator$OfLong;

    invoke-super {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->makeSpliterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 1051
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 6

    .line 1062
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->takeOrDrop:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1063
    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->takeOrDrop:Z

    const/4 v1, 0x1

    .line 1066
    :goto_0
    iget-object v2, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->s:Ljava8/util/Spliterator;

    check-cast v2, Ljava8/util/Spliterator$OfLong;

    invoke-interface {v2, p0}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1067
    invoke-virtual {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->checkCancelOnCount()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->p:Ljava8/util/function/LongPredicate;

    iget-wide v4, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->t:J

    .line 1068
    invoke-interface {v3, v4, v5}, Ljava8/util/function/LongPredicate;->test(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1078
    :cond_1
    iget-wide v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->t:J

    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    :cond_2
    return v2

    .line 1083
    :cond_3
    iget-object v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;->s:Ljava8/util/Spliterator;

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 1051
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1051
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
