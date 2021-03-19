.class final Lio/reactivex2/android/schedulers/HandlerScheduler;
.super Lio/reactivex2/Scheduler;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/android/schedulers/HandlerScheduler$ScheduledRunnable;,
        Lio/reactivex2/android/schedulers/HandlerScheduler$HandlerWorker;
    }
.end annotation


# instance fields
.field private final async:Z

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/reactivex2/Scheduler;-><init>()V

    .line 30
    iput-object p1, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    .line 31
    iput-boolean p2, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->async:Z

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex2/Scheduler$Worker;
    .locals 3

    .line 52
    new-instance v0, Lio/reactivex2/android/schedulers/HandlerScheduler$HandlerWorker;

    iget-object v1, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    iget-boolean v2, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->async:Z

    invoke-direct {v0, v1, v2}, Lio/reactivex2/android/schedulers/HandlerScheduler$HandlerWorker;-><init>(Landroid/os/Handler;Z)V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p4, :cond_1

    .line 40
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 41
    new-instance v0, Lio/reactivex2/android/schedulers/HandlerScheduler$ScheduledRunnable;

    iget-object v1, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Lio/reactivex2/android/schedulers/HandlerScheduler$ScheduledRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 42
    iget-object p1, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 43
    iget-boolean v1, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->async:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 46
    :cond_0
    iget-object v1, p0, Lio/reactivex2/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object v0

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "run == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
