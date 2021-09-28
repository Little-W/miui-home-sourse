.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,943:1\n288#2:944\n289#2:947\n276#2:948\n290#2,4:949\n295#2:953\n285#2,2:955\n280#2:958\n274#2:959\n387#3,2:945\n85#4:954\n20#5:957\n*E\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n636#1:944\n636#1:947\n636#1:948\n636#1,4:949\n650#1:953\n741#1,2:955\n785#1:958\n785#1:959\n636#1,2:945\n724#1:954\n785#1:957\n*E\n"
.end annotation


# static fields
.field static final workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field public final localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

.field public mayHaveLocalTasks:Z

.field private minDelayUntilStealableTaskNs:J

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private rngState:I

.field public state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field private terminationDeadline:J

.field final synthetic this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const-string/jumbo v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 570
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 572
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setDaemon(Z)V

    .line 590
    new-instance p1, Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 598
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    .line 607
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:I

    .line 621
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    .line 628
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 583
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    .line 584
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    return-void
.end method

.method private final afterTask(Lkotlinx/coroutines/scheduling/TaskMode;)V
    .locals 3

    .line 740
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 741
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 955
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 742
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 744
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq p1, v0, :cond_4

    .line 745
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 746
    :cond_3
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_4
    return-void
.end method

.method private final beforeTask(Lkotlinx/coroutines/scheduling/TaskMode;)V
    .locals 1

    .line 732
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 734
    :cond_0
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 735
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalCpuWork$kotlinx_coroutines_core()V

    :cond_1
    return-void
.end method

.method private final executeTask(Lkotlinx/coroutines/scheduling/Task;)V
    .locals 2

    .line 954
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()Lkotlinx/coroutines/scheduling/TaskMode;

    move-result-object v0

    .line 725
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->idleReset(Lkotlinx/coroutines/scheduling/TaskMode;)V

    .line 726
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->beforeTask(Lkotlinx/coroutines/scheduling/TaskMode;)V

    .line 727
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->runSafely(Lkotlinx/coroutines/scheduling/Task;)V

    .line 728
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->afterTask(Lkotlinx/coroutines/scheduling/TaskMode;)V

    return-void
.end method

.method private final findAnyTask(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 863
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt$kotlinx_coroutines_core(I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 864
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 865
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->poll()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez p1, :cond_4

    .line 866
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 868
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    .line 870
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    return-object p1
.end method

.method private final idleReset(Lkotlinx/coroutines/scheduling/TaskMode;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 839
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 840
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_3

    .line 841
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 842
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_3
    return-void
.end method

.method private final inStack()Z
    .locals 2

    .line 721
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final park()V
    .locals 6

    .line 770
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 772
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 775
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 776
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->terminationDeadline:J

    .line 777
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryTerminateWorker()V

    :cond_1
    return-void
.end method

.method private final pollGlobalQueues()Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    const/4 v0, 0x2

    .line 874
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt$kotlinx_coroutines_core(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 875
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    return-object v0

    .line 876
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    return-object v0

    .line 878
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_2

    return-object v0

    .line 879
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    return-object v0
.end method

.method private final runWorker()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 661
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v2, v3, :cond_3

    .line 662
    iget-boolean v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    .line 666
    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    .line 667
    invoke-direct {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->executeTask(Lkotlinx/coroutines/scheduling/Task;)V

    move v1, v0

    goto :goto_0

    .line 670
    :cond_0
    iput-boolean v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 683
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 688
    :cond_1
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 689
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 690
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    invoke-static {v1, v2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 691
    iput-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    move v1, v0

    goto :goto_0

    .line 700
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryPark()V

    goto :goto_0

    .line 702
    :cond_3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method

.method private final tryAcquireCpuPermit()Z
    .locals 10

    .line 635
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 636
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 946
    :cond_1
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    .line 951
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 637
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    return v3
.end method

.method private final tryPark()V
    .locals 2

    .line 707
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->inStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackPush$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z

    return-void

    .line 711
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 712
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl:I

    .line 713
    :goto_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->inStack()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 715
    :cond_4
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 716
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 717
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->park()V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private final trySteal(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 17

    move-object/from16 v0, p0

    .line 884
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 885
    :cond_2
    :goto_1
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getCreatedWorkers$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v1, v4, :cond_3

    return-object v5

    .line 891
    :cond_3
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextInt$kotlinx_coroutines_core(I)I

    move-result v4

    const-wide v6, 0x7fffffffffffffffL

    move v10, v4

    move-wide v8, v6

    move v4, v2

    :goto_2
    const-wide/16 v11, 0x0

    if-ge v4, v1, :cond_b

    add-int/2addr v10, v3

    if-le v10, v1, :cond_4

    move v10, v3

    .line 896
    :cond_4
    iget-object v13, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v13, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eqz v13, :cond_a

    .line 897
    move-object v14, v0

    check-cast v14, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eq v13, v14, :cond_a

    .line 898
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v14}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v14

    if-nez v14, :cond_5

    move v14, v3

    goto :goto_3

    :cond_5
    move v14, v2

    :goto_3
    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_7
    :goto_4
    if-eqz p1, :cond_8

    .line 900
    iget-object v14, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v13, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealBlockingFrom(Lkotlinx/coroutines/scheduling/WorkQueue;)J

    move-result-wide v13

    goto :goto_5

    .line 902
    :cond_8
    iget-object v14, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v13, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v14, v13}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealFrom(Lkotlinx/coroutines/scheduling/WorkQueue;)J

    move-result-wide v13

    :goto_5
    const-wide/16 v15, -0x1

    cmp-long v15, v13, v15

    if-nez v15, :cond_9

    .line 905
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->poll()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    return-object v1

    :cond_9
    cmp-long v11, v13, v11

    if-lez v11, :cond_a

    .line 907
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    cmp-long v1, v8, v6

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move-wide v8, v11

    .line 911
    :goto_6
    iput-wide v8, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->minDelayUntilStealableTaskNs:J

    return-object v5
.end method

.method private final tryTerminateWorker()V
    .locals 6

    .line 785
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 957
    monitor-enter v0

    .line 787
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 789
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getCreatedWorkers$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I

    move-result v1

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget v2, v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 794
    :cond_1
    :try_start_2
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->workerCtl$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 801
    :cond_2
    :try_start_3
    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    const/4 v2, 0x0

    .line 802
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 810
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v3, p0, v1, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 815
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 958
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v2, v1, :cond_4

    .line 817
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v3, v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 818
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 819
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setIndexInArray(I)V

    .line 827
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v4, v3, v2, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackTopUpdate$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 832
    :cond_4
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 833
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    .line 834
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-void

    :catchall_0
    move-exception v1

    .line 833
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final findTask(Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    .line 847
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryAcquireCpuPermit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findAnyTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 850
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->poll()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    goto :goto_0

    .line 852
    :cond_2
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 854
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->trySteal(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final getIndexInArray()I
    .locals 1

    .line 577
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    return v0
.end method

.method public final getNextParkedWorker()Ljava/lang/Object;
    .locals 1

    .line 621
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final nextInt$kotlinx_coroutines_core(I)I
    .locals 3

    .line 755
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    .line 759
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->rngState:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_0

    and-int p1, v0, v1

    return p1

    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 765
    rem-int/2addr v0, p1

    return v0
.end method

.method public run()V
    .locals 0

    .line 655
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->runWorker()V

    return-void
.end method

.method public final setIndexInArray(I)V
    .locals 2

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setName(Ljava/lang/String;)V

    .line 580
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->indexInArray:I

    return-void
.end method

.method public final setNextParkedWorker(Ljava/lang/Object;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final tryReleaseCpu$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 6

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 649
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 650
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->this$0:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 953
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    .line 651
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method
