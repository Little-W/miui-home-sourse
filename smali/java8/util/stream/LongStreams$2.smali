.class final Ljava8/util/stream/LongStreams$2;
.super Ljava8/util/Spliterators$AbstractLongSpliterator;
.source "LongStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongStreams;->iterate(JLjava8/util/function/LongPredicate;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field finished:Z

.field prev:J

.field started:Z

.field final synthetic val$hasNext:Ljava8/util/function/LongPredicate;

.field final synthetic val$next:Ljava8/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JILjava8/util/function/LongUnaryOperator;JLjava8/util/function/LongPredicate;)V
    .locals 0

    .line 224
    iput-object p4, p0, Ljava8/util/stream/LongStreams$2;->val$next:Ljava8/util/function/LongUnaryOperator;

    iput-wide p5, p0, Ljava8/util/stream/LongStreams$2;->val$seed:J

    iput-object p7, p0, Ljava8/util/stream/LongStreams$2;->val$hasNext:Ljava8/util/function/LongPredicate;

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongStreams$2;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 3

    .line 251
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-boolean v0, p0, Ljava8/util/stream/LongStreams$2;->finished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Ljava8/util/stream/LongStreams$2;->finished:Z

    .line 256
    iget-boolean v0, p0, Ljava8/util/stream/LongStreams$2;->started:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/LongStreams$2;->val$next:Ljava8/util/function/LongUnaryOperator;

    iget-wide v1, p0, Ljava8/util/stream/LongStreams$2;->prev:J

    invoke-interface {v0, v1, v2}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Ljava8/util/stream/LongStreams$2;->val$seed:J

    .line 257
    :goto_0
    iget-object v2, p0, Ljava8/util/stream/LongStreams$2;->val$hasNext:Ljava8/util/function/LongPredicate;

    invoke-interface {v2, v0, v1}, Ljava8/util/function/LongPredicate;->test(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-interface {p1, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    .line 259
    iget-object v2, p0, Ljava8/util/stream/LongStreams$2;->val$next:Ljava8/util/function/LongUnaryOperator;

    invoke-interface {v2, v0, v1}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 224
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongStreams$2;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 5

    .line 230
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-boolean v0, p0, Ljava8/util/stream/LongStreams$2;->finished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 235
    :cond_0
    iget-boolean v0, p0, Ljava8/util/stream/LongStreams$2;->started:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Ljava8/util/stream/LongStreams$2;->val$next:Ljava8/util/function/LongUnaryOperator;

    iget-wide v3, p0, Ljava8/util/stream/LongStreams$2;->prev:J

    invoke-interface {v0, v3, v4}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v3

    goto :goto_0

    .line 238
    :cond_1
    iget-wide v3, p0, Ljava8/util/stream/LongStreams$2;->val$seed:J

    .line 239
    iput-boolean v2, p0, Ljava8/util/stream/LongStreams$2;->started:Z

    .line 241
    :goto_0
    iget-object v0, p0, Ljava8/util/stream/LongStreams$2;->val$hasNext:Ljava8/util/function/LongPredicate;

    invoke-interface {v0, v3, v4}, Ljava8/util/function/LongPredicate;->test(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iput-boolean v2, p0, Ljava8/util/stream/LongStreams$2;->finished:Z

    return v1

    .line 245
    :cond_2
    iput-wide v3, p0, Ljava8/util/stream/LongStreams$2;->prev:J

    invoke-interface {p1, v3, v4}, Ljava8/util/function/LongConsumer;->accept(J)V

    return v2
.end method
