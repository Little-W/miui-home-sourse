.class final Lio/reactivex2/Scheduler$DisposeTask;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex2/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DisposeTask"
.end annotation


# instance fields
.field final decoratedRun:Ljava/lang/Runnable;

.field runner:Ljava/lang/Thread;

.field final w:Lio/reactivex2/Scheduler$Worker;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Lio/reactivex2/Scheduler$Worker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex2/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/reactivex2/Scheduler$DisposeTask;->w:Lio/reactivex2/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lio/reactivex2/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex2/Scheduler$DisposeTask;->w:Lio/reactivex2/Scheduler$Worker;

    instance-of v1, v0, Lio/reactivex2/internal/schedulers/NewThreadWorker;

    if-eqz v1, :cond_0

    check-cast v0, Lio/reactivex2/internal/schedulers/NewThreadWorker;

    invoke-virtual {v0}, Lio/reactivex2/internal/schedulers/NewThreadWorker;->shutdown()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/reactivex2/Scheduler$DisposeTask;->w:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->dispose()V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex2/Scheduler$DisposeTask;->w:Lio/reactivex2/Scheduler$Worker;

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$Worker;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lio/reactivex2/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/reactivex2/Scheduler$DisposeTask;->decoratedRun:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$DisposeTask;->dispose()V

    iput-object v0, p0, Lio/reactivex2/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lio/reactivex2/Scheduler$DisposeTask;->dispose()V

    iput-object v0, p0, Lio/reactivex2/Scheduler$DisposeTask;->runner:Ljava/lang/Thread;

    throw v1
.end method
