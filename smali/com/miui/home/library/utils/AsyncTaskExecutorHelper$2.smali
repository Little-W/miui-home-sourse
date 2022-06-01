.class Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$2;
.super Ljava/lang/Object;
.source "AsyncTaskExecutorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;->executeRejectedTaskIfNeeded()V

    .line 75
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
