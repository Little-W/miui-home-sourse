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

.field public static final MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

.field private static sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

.field private static sEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private static sExecuteMonitorRunnable:Ljava/lang/Runnable;

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

.field private static sScreenSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static sUnlockSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;


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
    new-instance v0, Lcom/miui/home/library/utils/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 59
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->builder()Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService(Ljava/util/concurrent/ExecutorService;)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;->build()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sEventBus:Lorg/greenrobot/eventbus/EventBus;

    .line 71
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$2;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$2;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sExecuteMonitorRunnable:Ljava/lang/Runnable;

    .line 172
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->DEBUG_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 174
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sScreenSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 175
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-direct {v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>()V

    sput-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sUnlockSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

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

    .line 126
    new-instance v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;-><init>(Ljava/util/function/Function;Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 149
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

    .line 122
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

    .line 157
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, p1, p3, v0, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
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

    .line 161
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

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

    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    .line 62
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public static getParallelExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 165
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getUnlockSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;
    .locals 1

    .line 182
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sUnlockSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    return-object v0
.end method

.method public static initDefaultExecutor()V
    .locals 3

    .line 66
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sRejectedPolicy:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$RejectedExecutionPolicy;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 67
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0}, Lcom/miui/launcher/utils/LauncherUtils;->setAsyncTaskDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 68
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/library/utils/DeferredHandler;->setDeferedDelay(J)V

    return-void
.end method

.method static synthetic lambda$waitForUnlockAndRun$0(Landroid/os/UserHandle;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 226
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->waitForUserUnlock(Landroid/os/UserHandle;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    .line 234
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x1

    .line 236
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    if-eqz p2, :cond_1

    .line 229
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    .line 231
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$waitForUnlockAndRun$1(Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 0

    .line 238
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 239
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static startExectueMonitor()V
    .locals 2

    .line 82
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->sDeferredHandler:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/DeferredHandler;->cancel()V

    .line 83
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

    .line 224
    new-instance v0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$EcOBHI4-sv299GWXXf7fN3nCIPA;

    invoke-direct {v0, p3, p4, p2, p0}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$EcOBHI4-sv299GWXXf7fN3nCIPA;-><init>(Landroid/os/UserHandle;Landroid/content/Context;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    new-instance p0, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$rfBMzO1mHVO1vtWRKSZgUclLNew;

    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/-$$Lambda$AsyncTaskExecutorHelper$rfBMzO1mHVO1vtWRKSZgUclLNew;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getUnlockSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    const/4 p2, 0x0

    .line 224
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

    .line 254
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

    .line 245
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

    .line 214
    invoke-static {}, Lcom/miui/home/library/utils/Preconditions;->assertNonUiThread()V

    .line 215
    :goto_0
    invoke-static {p1}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/library/compat/UserManagerCompat;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    .line 216
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

    .line 250
    invoke-static {p0, v0, p1, p2, p3}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->waitForUnlockAndRun(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/UserHandle;Landroid/content/Context;)V

    return-void
.end method
