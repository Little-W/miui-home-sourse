.class final Ljava8/util/stream/LongStreams$1;
.super Ljava8/util/Spliterators$AbstractLongSpliterator;
.source "LongStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongStreams;->iterate(JLjava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field prev:J

.field started:Z

.field final synthetic val$f:Ljava8/util/function/LongUnaryOperator;

.field final synthetic val$seed:J


# direct methods
.method constructor <init>(JILjava8/util/function/LongUnaryOperator;J)V
    .locals 0

    .line 162
    iput-object p4, p0, Ljava8/util/stream/LongStreams$1;->val$f:Ljava8/util/function/LongUnaryOperator;

    iput-wide p5, p0, Ljava8/util/stream/LongStreams$1;->val$seed:J

    invoke-direct {p0, p1, p2, p3}, Ljava8/util/Spliterators$AbstractLongSpliterator;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 162
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/LongStreams$1;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 4

    .line 168
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-boolean v0, p0, Ljava8/util/stream/LongStreams$1;->started:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Ljava8/util/stream/LongStreams$1;->val$f:Ljava8/util/function/LongUnaryOperator;

    iget-wide v2, p0, Ljava8/util/stream/LongStreams$1;->prev:J

    invoke-interface {v0, v2, v3}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v2

    goto :goto_0

    .line 173
    :cond_0
    iget-wide v2, p0, Ljava8/util/stream/LongStreams$1;->val$seed:J

    .line 174
    iput-boolean v1, p0, Ljava8/util/stream/LongStreams$1;->started:Z

    .line 176
    :goto_0
    iput-wide v2, p0, Ljava8/util/stream/LongStreams$1;->prev:J

    invoke-interface {p1, v2, v3}, Ljava8/util/function/LongConsumer;->accept(J)V

    return v1
.end method
