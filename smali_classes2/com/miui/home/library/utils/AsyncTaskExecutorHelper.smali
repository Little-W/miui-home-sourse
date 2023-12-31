.class public Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;
.super Ljava/lang/Object;
.source "AsyncTaskExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;,
        Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final DEBUG_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

.field private static sEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private static sExecuteMonitorRunnable:Ljava/lang/Runnable;

.field private static final sFolderRecommendSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sRejectedPolicy:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;

.field private static final sRejectedTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sScreenSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sUnlockSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sRejectedPolicy:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;

    .line 32
    new-instance v0, Lcom/miui/home/library/utils/DeferredHandler;

    invoke-direct {v0}, Lcom/miui/home/library/utils/DeferredHandler;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sRejectedTaskList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->CPU_COUNT:I

    .line 40
    sget v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->CORE_POOL_SIZE:I

    .line 41
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$1;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$1;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 50
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->CORE_POOL_SIZE:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x0

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 54
    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->builder()Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService(Ljava/util/concurrent/ExecutorService;)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;->build()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sEventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 69
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$2;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$2;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sExecuteMonitorRunnable:Ljava/lang/Runnable;

    .line 181
    sget-object v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;->INSTANCE:Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$C96piRw8KZ4GI0zY33orgPv_BAc;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->DEBUG_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 183
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string v1, "Screen Task"

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sScreenSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 184
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string v1, "Unlock Task"

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sUnlockSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 185
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string v1, "Recommend Task"

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sFolderRecommendSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .line 30
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sRejectedTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 30
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->startExectueMonitor()V

    return-void
.end method

.method public static doUIConsumerSerialized(Ljava/util/function/Consumer;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TR;>;",
            "Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 178
    invoke-static {v0, p0, v0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;TT;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "TR;>;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;-><init>(Ljava/util/function/Function;Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 147
    invoke-virtual {v0, p3, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;TT;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static execCancelableTaskParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;TT;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, p1, p3, v0, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static execParallel(Ljava/lang/Runnable;)V
    .locals 2

    .line 167
    new-instance v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$vBFHPCvEanyGhA_kZvQ_nT2fPFE;

    invoke-direct {v0, p0}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$vBFHPCvEanyGhA_kZvQ_nT2fPFE;-><init>(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;TT;)V"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static execParallel(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 163
    new-instance v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$7GTDnyZxhJwClQU2CgG8PIQqIag;

    invoke-direct {v0, p0}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$7GTDnyZxhJwClQU2CgG8PIQqIag;-><init>(Ljava/util/function/Supplier;)V

    sget-object p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;TR;>;",
            "Ljava/util/function/Consumer<",
            "TR;>;TT;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    .line 60
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public static getFolderRecommendSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;
    .locals 1

    .line 196
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sFolderRecommendSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    return-object v0
.end method

.method public static getParallelExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 174
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getScreenSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;
    .locals 1

    .line 188
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sScreenSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    return-object v0
.end method

.method public static getUnlockSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;
    .locals 1

    .line 192
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sUnlockSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    return-object v0
.end method

.method public static initDefaultExecutor()V
    .locals 3

    .line 64
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sRejectedPolicy:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 65
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->setAsyncTaskDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 66
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/library/utils/DeferredHandler;->setDeferedDelay(J)V

    return-void
.end method

.method static synthetic lambda$execParallel$0(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    .line 163
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$execParallel$1(Ljava/lang/Runnable;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 168
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$static$2(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Debug Task"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$waitForUnlockAndRun$3(Landroid/os/UserHandle;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 244
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->waitForUserUnlock(Landroid/os/UserHandle;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    .line 252
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x1

    .line 254
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 247
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    .line 249
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$waitForUnlockAndRun$4(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 256
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 257
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static startExectueMonitor()V
    .locals 2

    .line 80
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 81
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

    sget-object v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sExecuteMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected static waitForUnlockAndRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;

    invoke-direct {v0, p3, p4, p2, p0}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$pXkZ2OXEW7ZLuVYKwHuNkBHY5cs;-><init>(Landroid/os/UserHandle;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    new-instance p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$StQZseL_6LFh44XXo6x8S-V6C6Y;

    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$StQZseL_6LFh44XXo6x8S-V6C6Y;-><init>(Ljava/lang/Runnable;)V

    .line 259
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getUnlockSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    const/4 p2, 0x0

    .line 242
    invoke-static {v0, p0, p2, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execSerial(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static waitForUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 272
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V

    return-void
.end method

.method public static waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p0, p1, v0, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->waitForUnlockAndRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V

    return-void
.end method

.method private static waitForUserUnlock(Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 232
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 233
    :goto_0
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static waitForUserUnlockAndRunOnNonUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/InterruptedException;",
            ">;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    invoke-static {p0, v0, p1, p2, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->waitForUnlockAndRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V

    return-void
.end method
