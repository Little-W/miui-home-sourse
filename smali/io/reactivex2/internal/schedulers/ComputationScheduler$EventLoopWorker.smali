.class final Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;
.super Lio/reactivex2/Scheduler$Worker;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EventLoopWorker"
.end annotation


# instance fields
.field private final both:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

.field volatile disposed:Z

.field private final poolWorker:Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

.field private final serial:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

.field private final timed:Lio/reactivex2/disposables/CompositeDisposable;


# direct methods
.method constructor <init>(Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lio/reactivex2/Scheduler$Worker;-><init>()V

    .line 199
    iput-object p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 200
    new-instance p1, Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    invoke-direct {p1}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    .line 201
    new-instance p1, Lio/reactivex2/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex2/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex2/disposables/CompositeDisposable;

    .line 202
    new-instance p1, Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    invoke-direct {p1}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    .line 203
    iget-object p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    iget-object v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    invoke-virtual {p1, v0}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex2/disposables/Disposable;)Z

    .line 204
    iget-object p1, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    iget-object v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex2/disposables/CompositeDisposable;

    invoke-virtual {p1, v0}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    .line 211
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->both:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;
    .locals 6

    .line 223
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object p1, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p1

    .line 227
    :cond_0
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->serial:Lio/reactivex2/internal/disposables/ListCompositeDisposable;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex2/internal/disposables/DisposableContainer;)Lio/reactivex2/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 6

    .line 233
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object p1, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p1

    .line 237
    :cond_0
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->poolWorker:Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-object v5, p0, Lio/reactivex2/internal/schedulers/ComputationScheduler$EventLoopWorker;->timed:Lio/reactivex2/disposables/CompositeDisposable;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex2/internal/disposables/DisposableContainer;)Lio/reactivex2/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method
