.class public final Lio/reactivex2/internal/schedulers/TrampolineScheduler;
.super Lio/reactivex2/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/schedulers/TrampolineScheduler$SleepingRunnable;,
        Lio/reactivex2/internal/schedulers/TrampolineScheduler$TimedRunnable;,
        Lio/reactivex2/internal/schedulers/TrampolineScheduler$TrampolineWorker;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lio/reactivex2/internal/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lio/reactivex2/internal/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lio/reactivex2/internal/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lio/reactivex2/internal/schedulers/TrampolineScheduler;->INSTANCE:Lio/reactivex2/internal/schedulers/TrampolineScheduler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lio/reactivex2/Scheduler;-><init>()V

    return-void
.end method

.method public static instance()Lio/reactivex2/internal/schedulers/TrampolineScheduler;
    .locals 1

    .line 37
    sget-object v0, Lio/reactivex2/internal/schedulers/TrampolineScheduler;->INSTANCE:Lio/reactivex2/internal/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lio/reactivex2/Scheduler$Worker;
    .locals 1

    .line 43
    new-instance v0, Lio/reactivex2/internal/schedulers/TrampolineScheduler$TrampolineWorker;

    invoke-direct {v0}, Lio/reactivex2/internal/schedulers/TrampolineScheduler$TrampolineWorker;-><init>()V

    return-object v0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;
    .locals 0

    .line 52
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 53
    sget-object p1, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 0

    .line 60
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 61
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 64
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 66
    :goto_0
    sget-object p1, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p1
.end method
