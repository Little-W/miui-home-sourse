.class public Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;
.super Ljava/lang/Object;
.source "LoadingAsyncInflateManager.java"


# instance fields
.field private mJobCount:I

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v7, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$jDTNZgHD7zOOu47pguOIc5Lj8z4;

    const/4 v1, 0x4

    const/4 v2, 0x4

    const-wide/16 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method public static synthetic lambda$inflateViewAsync$1(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava/util/function/Supplier;)Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public static synthetic lambda$inflateViewAsync$2(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 38
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 40
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Launcher_AsyncInflateManager"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getWaitTime()J
    .locals 2

    .line 53
    iget v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    mul-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method public inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    .line 29
    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$RRPpmGewhafvkxl44yzL240f2AY;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$RRPpmGewhafvkxl44yzL240f2AY;-><init>(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava/util/function/Supplier;)V

    new-instance p1, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$FgJXeGIWAz2emTGqk8us9Xy8PrI;

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/common/-$$Lambda$LoadingAsyncInflateManager$FgJXeGIWAz2emTGqk8us9Xy8PrI;-><init>(Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;Ljava/util/function/Consumer;)V

    iget-object p2, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->inflateViewAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public isWorking()Z
    .locals 1

    .line 49
    iget v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mJobCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shutDownNow()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/common/LoadingAsyncInflateManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method
