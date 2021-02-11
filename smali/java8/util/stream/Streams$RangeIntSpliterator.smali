.class final Ljava8/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 73
    iput p2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 74
    iput p3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    return-void
.end method

.method private splitPoint(J)I
    .locals 2

    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    int-to-long v0, v0

    .line 190
    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 126
    iget v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 4

    .line 102
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 105
    iget v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 106
    iget v2, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 107
    iput v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v3, 0x0

    .line 108
    iput v3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v0, 0x1

    .line 110
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    move v0, v3

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    .line 114
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 138
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 143
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 56
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 97
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 4

    .line 79
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 82
    iget v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->upTo:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 83
    iput v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 84
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v2

    .line 87
    :cond_0
    iget v1, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 88
    iput v3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 89
    invoke-interface {p1, v0}, Ljava8/util/function/IntConsumer;->accept(I)V

    return v2

    :cond_1
    return v3
.end method

.method public trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 4

    .line 153
    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v2, Ljava8/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 157
    invoke-direct {p0, v0, v1}, Ljava8/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Ljava8/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, v1}, Ljava8/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 56
    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 56
    invoke-virtual {p0}, Ljava8/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
