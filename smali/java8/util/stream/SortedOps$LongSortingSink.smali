.class final Ljava8/util/stream/SortedOps$LongSortingSink;
.super Ljava8/util/stream/SortedOps$AbstractLongSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSortingSink"
.end annotation


# instance fields
.field private b:Ljava8/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava8/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 574
    invoke-direct {p0, p1}, Ljava8/util/stream/SortedOps$AbstractLongSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1

    .line 604
    iget-object v0, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->b:Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfLong;->accept(J)V

    return-void
.end method

.method public begin(J)V
    .locals 2

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 581
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfLong;

    long-to-int p1, p1

    invoke-direct {v0, p1}, Ljava8/util/stream/SpinedBuffer$OfLong;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer$OfLong;-><init>()V

    :goto_0
    iput-object v0, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->b:Ljava8/util/stream/SpinedBuffer$OfLong;

    return-void

    .line 580
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public end()V
    .locals 6

    .line 586
    iget-object v0, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->b:Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0}, Ljava8/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 587
    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 588
    iget-object v1, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->downstream:Ljava8/util/stream/Sink;

    array-length v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Ljava8/util/stream/Sink;->begin(J)V

    .line 589
    iget-boolean v1, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->cancellationWasRequested:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 590
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 591
    iget-object v5, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava8/util/stream/Sink;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :cond_0
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-wide v3, v0, v2

    .line 595
    iget-object v5, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v5}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 596
    :cond_1
    iget-object v5, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v5, v3, v4}, Ljava8/util/stream/Sink;->accept(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    :cond_2
    :goto_2
    iget-object v0, p0, Ljava8/util/stream/SortedOps$LongSortingSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->end()V

    return-void
.end method
