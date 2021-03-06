.class Ljava8/util/Spliterators$IteratorSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IteratorSpliterator"
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

.field private final collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private est:J

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 2784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2785
    iput-object p1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    const/4 p1, 0x0

    .line 2786
    iput-object p1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    and-int/lit16 p1, p2, 0x1000

    if-nez p1, :cond_0

    or-int/lit8 p1, p2, 0x40

    or-int/lit16 p2, p1, 0x4000

    .line 2787
    :cond_0
    iput p2, p0, Ljava8/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 2820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2821
    iput-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 2822
    iput-object p1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    const-wide v0, 0x7fffffffffffffffL

    .line 2823
    iput-wide v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    and-int/lit16 p1, p2, -0x4041

    .line 2824
    iput p1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;JI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TT;>;JI)V"
        }
    .end annotation

    .line 2802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2803
    iput-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    .line 2804
    iput-object p1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2805
    iput-wide p2, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    and-int/lit16 p1, p4, 0x1000

    if-nez p1, :cond_0

    or-int/lit8 p1, p4, 0x40

    or-int/lit16 p4, p1, 0x4000

    .line 2806
    :cond_0
    iput p4, p0, Ljava8/util/Spliterators$IteratorSpliterator;->characteristics:I

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 2907
    iget v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 2899
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 2900
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2901
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0

    .line 2903
    :cond_0
    iget-wide v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2874
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2876
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 2877
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2878
    iget-object v1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    .line 2880
    :cond_0
    invoke-static {v0, p1}, Ljava8/util/Iterators;->forEachRemaining(Ljava/util/Iterator;Ljava8/util/function/Consumer;)V

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

    const/4 v0, 0x4

    .line 2921
    invoke-virtual {p0, v0}, Ljava8/util/Spliterators$IteratorSpliterator;->hasCharacteristics(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2924
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 2911
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 2916
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 2885
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2886
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 2887
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2888
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    .line 2890
    :cond_0
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2891
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

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

    .line 2844
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 2845
    iget-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->it:Ljava/util/Iterator;

    .line 2846
    iget-object v1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    goto :goto_0

    .line 2848
    :cond_0
    iget-wide v1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_6

    .line 2850
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2851
    iget v3, p0, Ljava8/util/Spliterators$IteratorSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    long-to-int v3, v1

    :cond_1
    const/high16 v1, 0x2000000

    if-le v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 2858
    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move v4, v3

    .line 2861
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v1, :cond_4

    .line 2862
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2863
    :cond_4
    iput v4, p0, Ljava8/util/Spliterators$IteratorSpliterator;->batch:I

    .line 2864
    iget-wide v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v0, v5

    if-eqz v5, :cond_5

    int-to-long v5, v4

    sub-long/2addr v0, v5

    .line 2865
    iput-wide v0, p0, Ljava8/util/Spliterators$IteratorSpliterator;->est:J

    .line 2867
    :cond_5
    new-instance v0, Ljava8/util/Spliterators$ArraySpliterator;

    iget v1, p0, Ljava8/util/Spliterators$IteratorSpliterator;->characteristics:I

    invoke-direct {v0, v2, v3, v4, v1}, Ljava8/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
