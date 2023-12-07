.class Landroidx/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mObserver:Landroidx/room/InvalidationTracker$Observer;

.field private final mSingleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTableIds:[I

.field private final mTableNames:[Ljava/lang/String;

.field private final mVersions:[J


# direct methods
.method constructor <init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    iput-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    iput-object p3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    array-length p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iget-object p2, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    :goto_0
    return-void
.end method


# virtual methods
.method checkForInvalidation([J)V
    .locals 8

    iget-object v0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    aget v3, v3, v2

    aget-wide v3, p1, v3

    iget-object v5, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aget-wide v6, v5, v2

    cmp-long v6, v6, v3

    if-gez v6, :cond_2

    aput-wide v3, v5, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1, v0}, Landroidx/collection/ArraySet;-><init>(I)V

    :cond_1
    iget-object v3, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object p0, p0, Landroidx/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {p0, v1}, Landroidx/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    :cond_4
    return-void
.end method
