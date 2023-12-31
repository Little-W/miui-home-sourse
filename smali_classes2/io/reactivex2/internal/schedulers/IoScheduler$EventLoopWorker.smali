.class final Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;
.super Lio/reactivex2/Scheduler$Worker;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/schedulers/IoScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

.field private final tasks:Lio/reactivex2/disposables/CompositeDisposable;

.field private final threadWorker:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;


# direct methods
.method constructor <init>(Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;)V
    .locals 1

    .line 210
    invoke-direct {p0}, Lio/reactivex2/Scheduler$Worker;-><init>()V

    .line 208
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    iput-object p1, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    .line 212
    new-instance v0, Lio/reactivex2/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex2/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex2/disposables/CompositeDisposable;

    .line 213
    invoke-virtual {p1}, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;->get()Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 218
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex2/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex2/disposables/CompositeDisposable;->dispose()V

    .line 222
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->pool:Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;

    iget-object p0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    invoke-virtual {v0, p0}, Lio/reactivex2/internal/schedulers/IoScheduler$CachedWorkerPool;->release(Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    .line 228
    iget-object p0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 6

    .line 234
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex2/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex2/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    sget-object p0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p0

    .line 239
    :cond_0
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->threadWorker:Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;

    iget-object v5, p0, Lio/reactivex2/internal/schedulers/IoScheduler$EventLoopWorker;->tasks:Lio/reactivex2/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex2/internal/schedulers/IoScheduler$ThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex2/internal/disposables/DisposableContainer;)Lio/reactivex2/internal/schedulers/ScheduledRunnable;

    move-result-object p0

    return-object p0
.end method
