.class final Ljava8/util/stream/SortedOps$SizedIntSortingSink;
.super Ljava8/util/stream/SortedOps$AbstractIntSortingSink;
.source "SortedOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SortedOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizedIntSortingSink"
.end annotation


# instance fields
.field private array:[I

.field private offset:I


# direct methods
.method constructor <init>(Ljava8/util/stream/Sink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/Sink<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1}, Ljava8/util/stream/SortedOps$AbstractIntSortingSink;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    .line 465
    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    iget v1, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    aput p1, v0, v1

    return-void
.end method

.method public begin(J)V
    .locals 2

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 444
    new-array p1, p1, [I

    iput-object p1, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    return-void

    .line 443
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public end()V
    .locals 5

    .line 449
    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    iget v1, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->sort([III)V

    .line 450
    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava8/util/stream/Sink;

    iget v1, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Ljava8/util/stream/Sink;->begin(J)V

    .line 451
    iget-boolean v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->cancellationWasRequested:Z

    if-nez v0, :cond_0

    .line 452
    :goto_0
    iget v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v2, v0, :cond_1

    .line 453
    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava8/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    :cond_0
    :goto_1
    iget v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->offset:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Ljava8/util/stream/Sink;->accept(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->end()V

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Ljava8/util/stream/SortedOps$SizedIntSortingSink;->array:[I

    return-void
.end method
