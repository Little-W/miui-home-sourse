.class public final Lcom/xiaomi/dist/utils/ExecutorHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;,
        Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutRunnable;,
        Lcom/xiaomi/dist/utils/ExecutorHelper$ExceptionHandler;,
        Lcom/xiaomi/dist/utils/ExecutorHelper$Timeout;,
        Lcom/xiaomi/dist/utils/ExecutorHelper$TaskHolder;,
        Lcom/xiaomi/dist/utils/ExecutorHelper$Task;
    }
.end annotation


# static fields
.field private static final sExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x80

    const/4 v1, 0x1

    invoke-direct {v6, v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x5

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v8, Lcom/xiaomi/dist/utils/ExecutorHelper;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static post(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V
    .locals 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$Task;->getTimeout()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/xiaomi/dist/utils/ExecutorHelper;->sExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/dist/utils/ExecutorHelper$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$1;-><init>(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/dist/utils/ExecutorHelper;->sExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xiaomi/dist/utils/-$$Lambda$IxGBakSdaMrA22tdmvBvIHqaV-s;

    invoke-direct {v1, p0}, Lcom/xiaomi/dist/utils/-$$Lambda$IxGBakSdaMrA22tdmvBvIHqaV-s;-><init>(Lcom/xiaomi/dist/utils/ExecutorHelper$Task;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
