.class final Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
.super Lio/reactivex2/internal/observers/BasicIntQueueDisposable;

# interfaces
.implements Lio/reactivex2/Observer;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableObserveOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ObserveOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/internal/observers/BasicIntQueueDisposable<",
        "TT;>;",
        "Lio/reactivex2/Observer<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5b45d4a143741ca0L


# instance fields
.field final bufferSize:I

.field final delayError:Z

.field volatile disposed:Z

.field volatile done:Z

.field final downstream:Lio/reactivex2/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field error:Ljava/lang/Throwable;

.field outputFused:Z

.field queue:Lio/reactivex2/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field sourceMode:I

.field upstream:Lio/reactivex2/disposables/Disposable;

.field final worker:Lio/reactivex2/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;Lio/reactivex2/Scheduler$Worker;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;",
            "Lio/reactivex2/Scheduler$Worker;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/internal/observers/BasicIntQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    iput-boolean p3, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    iput p4, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->bufferSize:I

    return-void
.end method


# virtual methods
.method checkTerminated(ZZLio/reactivex2/Observer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lio/reactivex2/Observer<",
            "-TT;>;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lio/reactivex2/Observer;->onComplete()V

    :goto_0
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    iget-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {p2}, Lio/reactivex2/internal/fuseable/SimpleQueue;->clear()V

    invoke-interface {p3, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    invoke-interface {p3}, Lio/reactivex2/Observer;->onComplete()V

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {v0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->clear()V

    :cond_0
    return-void
.end method

.method drainFused()V
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    iget-boolean v2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget-boolean v2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    iget-object v3, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    iget-boolean v4, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->delayError:Z

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0, v3}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    return-void

    :cond_2
    iget-object v3, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v1, v0}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0}, Lio/reactivex2/Observer;->onComplete()V

    :goto_0
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    return-void

    :cond_4
    neg-int v1, v1

    invoke-virtual {p0, v1}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method drainNormal()V
    .locals 7

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    const/4 v2, 0x1

    move v3, v2

    :cond_0
    iget-boolean v4, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    invoke-interface {v0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->checkTerminated(ZZLio/reactivex2/Observer;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-boolean v4, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    :try_start_0
    invoke-interface {v0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0, v4, v6, v1}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->checkTerminated(ZZLio/reactivex2/Observer;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    if-eqz v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    invoke-interface {v1, v5}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    iget-object v2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex2/disposables/Disposable;->dispose()V

    invoke-interface {v0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->clear()V

    invoke-interface {v1, v3}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->disposed:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex2/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->validate(Lio/reactivex2/disposables/Disposable;Lio/reactivex2/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    instance-of v0, p1, Lio/reactivex2/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_1

    check-cast p1, Lio/reactivex2/internal/fuseable/QueueDisposable;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lio/reactivex2/internal/fuseable/QueueDisposable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    iput-boolean v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->done:Z

    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p1, p0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->schedule()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->sourceMode:I

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p1, p0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    return-void

    :cond_1
    new-instance p1, Lio/reactivex2/internal/queue/SpscLinkedArrayQueue;

    iget v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->bufferSize:I

    invoke-direct {p1, v0}, Lio/reactivex2/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p1, p0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    :cond_2
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->queue:Lio/reactivex2/internal/fuseable/SimpleQueue;

    invoke-interface {p0}, Lio/reactivex2/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->outputFused:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->outputFused:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->drainFused()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->drainNormal()V

    :goto_0
    return-void
.end method

.method schedule()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;->worker:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {v0, p0}, Lio/reactivex2/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;

    :cond_0
    return-void
.end method
