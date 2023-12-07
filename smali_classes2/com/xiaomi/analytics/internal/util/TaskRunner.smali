.class public Lcom/xiaomi/analytics/internal/util/TaskRunner;
.super Ljava/lang/Object;


# static fields
.field private static NUMBER_OF_CORES:I

.field public static final SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->NUMBER_OF_CORES:I

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, Lcom/xiaomi/analytics/internal/util/TaskRunner;->NUMBER_OF_CORES:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x1

    move-object v1, v0

    move v2, v3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/xiaomi/analytics/internal/util/TaskRunner;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TaskRunner"

    invoke-static {v0}, Lcom/xiaomi/analytics/internal/util/ALog;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute e"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
