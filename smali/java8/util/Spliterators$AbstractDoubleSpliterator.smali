.class public abstract Ljava8/util/Spliterators$AbstractDoubleSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDoubleSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 0

    .line 2642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2643
    iput-wide p1, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->est:J

    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_0

    or-int/lit16 p3, p3, 0x4000

    .line 2644
    :cond_0
    iput p3, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2706
    iget v0, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2694
    iget-wide v0, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->est:J

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 2625
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 2746
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 1

    .line 2738
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2730
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 2714
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1

    .line 2722
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->characteristics()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 2754
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 7

    .line 2665
    new-instance v0, Ljava8/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;

    invoke-direct {v0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;-><init>()V

    .line 2666
    iget-wide v1, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 2667
    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2668
    iget v3, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    long-to-int v3, v1

    :cond_0
    const/high16 v1, 0x2000000

    if-le v3, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2673
    :goto_0
    new-array v2, v1, [D

    const/4 v3, 0x0

    move v4, v3

    .line 2675
    :cond_2
    iget-wide v5, v0, Ljava8/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2676
    :cond_3
    iput v4, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    .line 2677
    iget-wide v0, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->est:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-eqz v5, :cond_4

    int-to-long v5, v4

    sub-long/2addr v0, v5

    .line 2678
    iput-wide v0, p0, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 2679
    :cond_4
    new-instance v0, Ljava8/util/Spliterators$DoubleArraySpliterator;

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->characteristics()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Ljava8/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 2625
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 2625
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
