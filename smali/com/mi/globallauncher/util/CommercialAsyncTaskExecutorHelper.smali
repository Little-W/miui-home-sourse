.class public Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;
.super Ljava/lang/Object;
.source "CommercialAsyncTaskExecutorHelper.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->CPU_COUNT:I

    .line 17
    sget v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->CORE_POOL_SIZE:I

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 19
    new-instance v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper$1;

    invoke-direct {v0}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper$1;-><init>()V

    sput-object v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 28
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->CORE_POOL_SIZE:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v4, 0x0

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 32
    sput-object v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->builder()Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    sget-object v1, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->LAUNCHER_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBusBuilder;->executorService(Ljava/util/concurrent/ExecutorService;)Lorg/greenrobot/eventbus/EventBusBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/EventBusBuilder;->build()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    sput-object v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->sEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    .line 38
    sget-object v0, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->sEventBus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method
