.class abstract Ljava8/util/stream/Streams$ConcatSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConcatSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Streams$ConcatSpliterator$OfDouble;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfLong;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfInt;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfPrimitive;,
        Ljava8/util/stream/Streams$ConcatSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final aSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field protected final bSpliterator:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field beforeSplit:Z

.field final unsized:Z


# direct methods
.method public constructor <init>(Ljava8/util/Spliterator;Ljava8/util/Spliterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "TT_SP",
            "LITR;",
            ")V"
        }
    .end annotation

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-object p1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    .line 807
    iput-object p2, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    const/4 v0, 0x1

    .line 808
    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 811
    invoke-interface {p1}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v1

    invoke-interface {p2}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide p1

    add-long/2addr v1, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v1, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->unsized:Z

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .line 859
    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    iget-object v1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v1}, Ljava8/util/Spliterator;->characteristics()I

    move-result v1

    and-int/2addr v0, v1

    iget-boolean v1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->unsized:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4040

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/lit8 v1, v1, 0x5

    not-int v1, v1

    and-int/2addr v0, v1

    return v0

    .line 866
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 846
    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    iget-object v2, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v2}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    .line 853
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

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

    .line 839
    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    .line 841
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

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

    .line 872
    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 825
    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 828
    iput-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    .line 829
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    goto :goto_0

    .line 833
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 817
    iget-boolean v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->aSpliterator:Ljava8/util/Spliterator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->bSpliterator:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 818
    iput-boolean v1, p0, Ljava8/util/stream/Streams$ConcatSpliterator;->beforeSplit:Z

    return-object v0
.end method
