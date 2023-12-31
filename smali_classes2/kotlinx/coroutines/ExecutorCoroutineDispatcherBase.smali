.class public abstract Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "Executors.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# instance fields
.field private removesFutureOnCancellation:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;-><init>()V

    return-void
.end method

.method private final cancelJobOnRejection(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 0

    .line 144
    check-cast p2, Ljava/lang/Throwable;

    const-string p0, "The task was rejected"

    invoke-static {p0, p2}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method private final scheduleBlock(Ljava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/coroutines/CoroutineContext;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->cancelJobOnRejection(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/RejectedExecutionException;)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    instance-of v0, p0, Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lkotlinx/coroutines/TimeSource;->wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->getTimeSource()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->unTrackTask()V

    .line 97
    :cond_1
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->cancelJobOnRejection(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/RejectedExecutionException;)V

    .line 98
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 152
    instance-of v0, p1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;

    invoke-virtual {p1}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 153
    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final initFutureCancellation$kotlinx_coroutines_core()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/ConcurrentKt;->removeFutureOnCancel(Ljava/util/concurrent/Executor;)Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->removesFutureOnCancellation:Z

    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 123
    iget-boolean v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->removesFutureOnCancellation:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p3, p4, p1, p2}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->scheduleBlock(Ljava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 129
    new-instance p1, Lkotlinx/coroutines/DisposableFutureHandle;

    check-cast p0, Ljava/util/concurrent/Future;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/DisposableFutureHandle;-><init>(Ljava/util/concurrent/Future;)V

    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    goto :goto_1

    .line 130
    :cond_1
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/DefaultExecutor;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 108
    iget-boolean v0, p0, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->removesFutureOnCancellation:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-direct {v0, v1, p3}, Lkotlinx/coroutines/ResumeUndispatchedRunnable;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {p3}, Lkotlinx/coroutines/CancellableContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->scheduleBlock(Ljava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 115
    check-cast p0, Ljava/util/concurrent/Future;

    invoke-static {p3, p0}, Lkotlinx/coroutines/JobKt;->cancelFutureOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Ljava/util/concurrent/Future;)V

    return-void

    .line 119
    :cond_1
    sget-object p0, Lkotlinx/coroutines/DefaultExecutor;->INSTANCE:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/DefaultExecutor;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 151
    invoke-virtual {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
