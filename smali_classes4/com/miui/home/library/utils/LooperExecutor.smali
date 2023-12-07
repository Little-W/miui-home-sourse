.class public Lcom/miui/home/library/utils/LooperExecutor;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "LooperExecutor.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/LooperExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/miui/home/library/utils/LooperExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/miui/home/library/utils/LooperExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public executeDelay(Ljava/lang/Runnable;J)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/miui/home/library/utils/LooperExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/library/utils/LooperExecutor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public isShutdown()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTerminated()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
