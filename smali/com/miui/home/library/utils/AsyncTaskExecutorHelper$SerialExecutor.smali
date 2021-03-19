.class public Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTaskExecutorHelper.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 188
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor$1;-><init>(Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
