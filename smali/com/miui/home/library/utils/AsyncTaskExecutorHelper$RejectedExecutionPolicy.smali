.class public Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;
.super Ljava/lang/Object;
.source "AsyncTaskExecutorHelper.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RejectedExecutionPolicy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeRejectedTaskIfNeeded()V
    .locals 3

    .line 107
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 109
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 111
    sget-object v2, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 114
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$100()V

    .line 117
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 100
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object p2

    monitor-enter p2

    .line 101
    :try_start_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$100()V

    .line 103
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
