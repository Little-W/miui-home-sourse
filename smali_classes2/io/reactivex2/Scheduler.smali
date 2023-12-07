.class public abstract Lio/reactivex2/Scheduler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/Scheduler$DisposeTask;,
        Lio/reactivex2/Scheduler$Worker;
    }
.end annotation


# static fields
.field static final CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/reactivex2/Scheduler;->CLOCK_DRIFT_TOLERANCE_NANOSECONDS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createWorker()Lio/reactivex2/Scheduler$Worker;
.end method

.method public scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lio/reactivex2/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;
    .locals 1

    invoke-virtual {p0}, Lio/reactivex2/Scheduler;->createWorker()Lio/reactivex2/Scheduler$Worker;

    move-result-object p0

    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Lio/reactivex2/Scheduler$DisposeTask;

    invoke-direct {v0, p1, p0}, Lio/reactivex2/Scheduler$DisposeTask;-><init>(Ljava/lang/Runnable;Lio/reactivex2/Scheduler$Worker;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lio/reactivex2/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex2/disposables/Disposable;

    return-object v0
.end method

.method public start()V
    .locals 0

    return-void
.end method
