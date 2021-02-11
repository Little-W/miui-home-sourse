.class public final Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SchedulerPoolFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/schedulers/SchedulerPoolFactory$ScheduledTask;,
        Lio/reactivex2/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    }
.end annotation


# static fields
.field static final POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_ENABLED:Z

.field public static final PURGE_PERIOD_SECONDS:I

.field static final PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    .line 95
    new-instance v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;

    invoke-direct {v0}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;-><init>()V

    const-string v1, "rx2.purge-enabled"

    const/4 v2, 0x1

    .line 96
    invoke-static {v2, v1, v2, v2, v0}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex2/functions/Function;)Z

    move-result v1

    sput-boolean v1, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    .line 97
    sget-boolean v1, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    const-string v3, "rx2.purge-period-seconds"

    invoke-static {v1, v3, v2, v2, v0}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->getIntProperty(ZLjava/lang/String;IILio/reactivex2/functions/Function;)I

    move-result v0

    sput v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    .line 99
    invoke-static {}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->start()V

    return-void
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const/4 v0, 0x1

    .line 145
    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    .line 146
    sget-boolean v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v0, p0}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V

    return-object p0
.end method

.method static getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex2/functions/Function;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lio/reactivex2/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 120
    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex2/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "true"

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2

    :cond_1
    return p3
.end method

.method static getIntProperty(ZLjava/lang/String;IILio/reactivex2/functions/Function;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "II",
            "Lio/reactivex2/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 105
    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex2/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    .line 109
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p2

    :cond_1
    return p3
.end method

.method public static start()V
    .locals 1

    .line 60
    sget-boolean v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v0}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->tryStart(Z)V

    return-void
.end method

.method static tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 151
    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p0, :cond_0

    .line 152
    move-object p0, p1

    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 153
    sget-object v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static tryStart(Z)V
    .locals 10

    if-eqz p0, :cond_2

    .line 66
    :goto_0
    sget-object p0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    new-instance v1, Lio/reactivex2/internal/schedulers/RxThreadFactory;

    const-string v2, "RxSchedulerPurge"

    invoke-direct {v1, v2}, Lio/reactivex2/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 71
    sget-object v0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 73
    new-instance v4, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory$ScheduledTask;

    invoke-direct {v4}, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory$ScheduledTask;-><init>()V

    sget p0, Lio/reactivex2/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    int-to-long v5, p0

    int-to-long v7, p0

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 77
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0

    :cond_2
    return-void
.end method
