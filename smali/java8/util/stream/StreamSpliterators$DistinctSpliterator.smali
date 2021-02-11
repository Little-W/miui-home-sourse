.class final Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinctSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Ljava/lang/Object;


# instance fields
.field private final s:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final seen:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tmpSlot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1638
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 1651
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava8/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x200

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-direct {p0, p1, v0}, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava8/util/Spliterator;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private constructor <init>(Ljava8/util/Spliterator;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator<",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

    .line 1656
    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic lambda$forEachRemaining$42(Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;Ljava8/util/function/Consumer;Ljava/lang/Object;)V
    .locals 2

    .line 1694
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p2}, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1695
    invoke-interface {p1, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private mapNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1676
    :cond_0
    sget-object p1, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->NULL_VALUE:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1671
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    return-void
.end method

.method public characteristics()I
    .locals 1

    .line 1713
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4055

    or-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1708
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

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

    .line 1693
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

    invoke-static {p0, p1}, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;Ljava8/util/function/Consumer;)Ljava8/util/function/Consumer;

    move-result-object p1

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

    .line 1720
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1661
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1666
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1681
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0, p0}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1682
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-direct {p0, v1}, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->mapNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1683
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1684
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->tmpSlot:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1702
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->s:Ljava8/util/Spliterator;

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1703
    new-instance v1, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;

    iget-object v2, p0, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;->seen:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v1, v0, v2}, Ljava8/util/stream/StreamSpliterators$DistinctSpliterator;-><init>(Ljava8/util/Spliterator;Ljava/util/concurrent/ConcurrentMap;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
