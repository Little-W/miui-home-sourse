.class Ljava8/util/Spliterators$3Adapter;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator$OfLong;
.implements Ljava8/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->iterator(Ljava8/util/Spliterator$OfLong;)Ljava8/util/PrimitiveIterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field nextElement:J

.field final synthetic val$spliterator:Ljava8/util/Spliterator$OfLong;

.field valueReady:Z


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfLong;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1473
    iput-object p1, p0, Ljava8/util/Spliterators$3Adapter;->val$spliterator:Ljava8/util/Spliterator$OfLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1474
    iput-boolean p1, p0, Ljava8/util/Spliterators$3Adapter;->valueReady:Z

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    const/4 v0, 0x1

    .line 1479
    iput-boolean v0, p0, Ljava8/util/Spliterators$3Adapter;->valueReady:Z

    .line 1480
    iput-wide p1, p0, Ljava8/util/Spliterators$3Adapter;->nextElement:J

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1473
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$3Adapter;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 0

    .line 1507
    invoke-static {p0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava8/util/PrimitiveIterator$OfLong;Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1485
    iget-boolean v0, p0, Ljava8/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_0

    .line 1486
    iget-object v0, p0, Ljava8/util/Spliterators$3Adapter;->val$spliterator:Ljava8/util/Spliterator$OfLong;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    .line 1487
    :cond_0
    iget-boolean v0, p0, Ljava8/util/Spliterators$3Adapter;->valueReady:Z

    return v0
.end method

.method public next()Ljava/lang/Long;
    .locals 2

    .line 1502
    invoke-virtual {p0}, Ljava8/util/Spliterators$3Adapter;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1473
    invoke-virtual {p0}, Ljava8/util/Spliterators$3Adapter;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public nextLong()J
    .locals 2

    .line 1492
    iget-boolean v0, p0, Ljava8/util/Spliterators$3Adapter;->valueReady:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava8/util/Spliterators$3Adapter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1493
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1495
    iput-boolean v0, p0, Ljava8/util/Spliterators$3Adapter;->valueReady:Z

    .line 1496
    iget-wide v0, p0, Ljava8/util/Spliterators$3Adapter;->nextElement:J

    return-wide v0
.end method

.method public remove()V
    .locals 2

    .line 1512
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
