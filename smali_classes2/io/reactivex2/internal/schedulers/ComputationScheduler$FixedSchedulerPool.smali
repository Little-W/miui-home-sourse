.class final Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    new-array v0, p1, [Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    iput-object v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    new-instance v2, Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    invoke-direct {v2, p2}, Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventLoop()Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;
    .locals 6

    iget v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    if-nez v0, :cond_0

    sget-object p0, Lio/reactivex2/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    return-object p0

    :cond_0
    iget-object v1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-wide v2, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int p0, v2

    aget-object p0, v1, p0

    return-object p0
.end method

.method public shutdown()V
    .locals 3

    iget-object p0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
