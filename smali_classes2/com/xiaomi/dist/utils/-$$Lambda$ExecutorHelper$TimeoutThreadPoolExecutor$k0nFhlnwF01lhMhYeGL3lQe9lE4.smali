.class public final synthetic Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

.field private final synthetic f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;->f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

    iput-object p2, p0, Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;->f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;->f$0:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;

    iget-object p0, p0, Lcom/xiaomi/dist/utils/-$$Lambda$ExecutorHelper$TimeoutThreadPoolExecutor$k0nFhlnwF01lhMhYeGL3lQe9lE4;->f$1:Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;

    invoke-virtual {v0, p0}, Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor;->lambda$beforeExecute$0$ExecutorHelper$TimeoutThreadPoolExecutor(Lcom/xiaomi/dist/utils/ExecutorHelper$TimeoutThreadPoolExecutor$WorkerInfo;)V

    return-void
.end method
