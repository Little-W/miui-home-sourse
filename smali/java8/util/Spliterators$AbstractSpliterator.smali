.class public abstract Ljava8/util/Spliterators$AbstractSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/Spliterators$AbstractSpliterator$HoldingConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
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

    .line 2171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2172
    iput-wide p1, p0, Ljava8/util/Spliterators$AbstractSpliterator;->est:J

    and-int/lit8 p1, p3, 0x40

    if-eqz p1, :cond_0

    or-int/lit16 p3, p3, 0x4000

    .line 2173
    :cond_0
    iput p3, p0, Ljava8/util/Spliterators$AbstractSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2248
    iget v0, p0, Ljava8/util/Spliterators$AbstractSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2236
    iget-wide v0, p0, Ljava8/util/Spliterators$AbstractSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2280
    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

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
            "-TT;>;"
        }
    .end annotation

    .line 2272
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 2256
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractSpliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractSpliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1

    .line 2264
    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractSpliterator;->characteristics()I

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

.method public trySplit()Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 2207
    new-instance v0, Ljava8/util/Spliterators$AbstractSpliterator$HoldingConsumer;

    invoke-direct {v0}, Ljava8/util/Spliterators$AbstractSpliterator$HoldingConsumer;-><init>()V

    .line 2208
    iget-wide v1, p0, Ljava8/util/Spliterators$AbstractSpliterator;->est:J

    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    .line 2209
    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2210
    iget v3, p0, Ljava8/util/Spliterators$AbstractSpliterator;->batch:I

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

    .line 2215
    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    .line 2217
    :cond_2
    iget-object v5, v0, Ljava8/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2218
    :cond_3
    iput v4, p0, Ljava8/util/Spliterators$AbstractSpliterator;->batch:I

    .line 2219
    iget-wide v0, p0, Ljava8/util/Spliterators$AbstractSpliterator;->est:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-eqz v5, :cond_4

    int-to-long v5, v4

    sub-long/2addr v0, v5

    .line 2220
    iput-wide v0, p0, Ljava8/util/Spliterators$AbstractSpliterator;->est:J

    .line 2221
    :cond_4
    new-instance v0, Ljava8/util/Spliterators$ArraySpliterator;

    invoke-virtual {p0}, Ljava8/util/Spliterators$AbstractSpliterator;->characteristics()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Ljava8/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
