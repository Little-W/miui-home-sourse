.class public Lcom/market/sdk/ThreadExecutors;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market/sdk/ThreadExecutors$MyThreadFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadExecutors"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCachedThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/market/sdk/ThreadExecutors$MyThreadFactory;

    invoke-direct {v7, p3, p2}, Lcom/market/sdk/ThreadExecutors$MyThreadFactory;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    move-object v0, p1

    move v1, p0

    move v2, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object p1
.end method

.method public static newFixedThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/market/sdk/ThreadExecutors$MyThreadFactory;

    invoke-direct {v7, p3, p2}, Lcom/market/sdk/ThreadExecutors$MyThreadFactory;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    move-object v0, p2

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object p2
.end method

.method public static newFixedThreadPool(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, p0, v0, p1}, Lcom/market/sdk/ThreadExecutors;->newFixedThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method

.method public static newLowPriorityCachedThreadPool(IILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/market/sdk/ThreadExecutors;->newCachedThreadPool(IIILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p0

    return-object p0
.end method
