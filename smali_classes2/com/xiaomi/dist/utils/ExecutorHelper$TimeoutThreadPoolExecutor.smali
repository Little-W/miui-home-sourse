.class Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/dist/utils/ExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeoutThreadPoolExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mWorkerInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private declared-synchronized processTimeout(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    iget v1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    iget v1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    iget v1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected declared-synchronized afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    iget-object p2, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    new-instance v1, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;

    invoke-direct {v1, p1, p2, v0}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;-><init>(Ljava/lang/Thread;Ljava/lang/Runnable;I)V

    iget-object p1, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mWorkerInfoMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;

    invoke-interface {p2}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;->getTimeout()J

    move-result-wide p1

    iget-object v0, p0, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;-><init>(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic lambda$beforeExecute$0$ExecutorHelper$TimeoutThreadPoolExecutor(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->processTimeout(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    return-void
.end method
