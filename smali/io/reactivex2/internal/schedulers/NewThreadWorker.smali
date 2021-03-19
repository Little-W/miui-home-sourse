.class public Lio/reactivex2/internal/schedulers/NewThreadWorker;
.super Lio/reactivex2/Scheduler$Worker;
.source "NewThreadWorker.java"

# interfaces
.implements Lio/reactivex2/disposables/Disposable;


# instance fields
.field volatile disposed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/reactivex2/Scheduler$Worker;-><init>()V

    .line 36
    invoke-static {p1}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->disposed:Z

    .line 164
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->disposed:Z

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex2/internal/schedulers/NewThreadWorker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 6

    .line 48
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->disposed:Z

    if-eqz v0, :cond_0

    .line 49
    sget-object p1, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 51
    invoke-virtual/range {v0 .. v5}, Lio/reactivex2/internal/schedulers/NewThreadWorker;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex2/internal/disposables/DisposableContainer;)Lio/reactivex2/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex2/internal/disposables/DisposableContainer;)Lio/reactivex2/internal/schedulers/ScheduledRunnable;
    .locals 3

    .line 132
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 134
    new-instance v0, Lio/reactivex2/internal/schedulers/ScheduledRunnable;

    invoke-direct {v0, p1, p5}, Lio/reactivex2/internal/schedulers/ScheduledRunnable;-><init>(Ljava/lang/Runnable;Lio/reactivex2/internal/disposables/DisposableContainer;)V

    if-eqz p5, :cond_0

    .line 137
    invoke-interface {p5, v0}, Lio/reactivex2/internal/disposables/DisposableContainer;->add(Lio/reactivex2/disposables/Disposable;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 145
    :try_start_0
    iget-object p1, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 149
    :goto_0
    invoke-virtual {v0, p1}, Lio/reactivex2/internal/schedulers/ScheduledRunnable;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p5, :cond_2

    .line 152
    invoke-interface {p5, v0}, Lio/reactivex2/internal/disposables/DisposableContainer;->remove(Lio/reactivex2/disposables/Disposable;)Z

    .line 154
    :cond_2
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 3

    .line 63
    new-instance v0, Lio/reactivex2/internal/schedulers/ScheduledDirectTask;

    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/reactivex2/internal/schedulers/ScheduledDirectTask;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    .line 67
    :try_start_0
    iget-object p1, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 71
    :goto_0
    invoke-virtual {v0, p1}, Lio/reactivex2/internal/schedulers/ScheduledDirectTask;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 75
    sget-object p1, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->disposed:Z

    .line 174
    iget-object v0, p0, Lio/reactivex2/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
