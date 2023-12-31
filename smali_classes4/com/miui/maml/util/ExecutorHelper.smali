.class public Lcom/miui/maml/util/ExecutorHelper;
.super Ljava/lang/Object;
.source "ExecutorHelper.java"


# static fields
.field private static final MUTEX_LOCK:Ljava/lang/Object;

.field private static volatile sBigOnlineTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile sLocalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/maml/util/ExecutorHelper;->MUTEX_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 19
    sget-object v0, Lcom/miui/maml/util/ExecutorHelper;->sLocalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 20
    sget-object v0, Lcom/miui/maml/util/ExecutorHelper;->MUTEX_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/miui/maml/util/ExecutorHelper;->sLocalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    const/16 v4, 0xa

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v9, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;->INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$Ai2AmxYwjtdsda6hu1tHECIa8Jg;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 25
    sget-object v2, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;->INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$eEYabI--kvv-9oThTYzAKkAdFK8;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 29
    sput-object v1, Lcom/miui/maml/util/ExecutorHelper;->sLocalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/maml/util/ExecutorHelper;->sLocalExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static getLongOnlineTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 40
    sget-object v0, Lcom/miui/maml/util/ExecutorHelper;->sBigOnlineTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 41
    sget-object v0, Lcom/miui/maml/util/ExecutorHelper;->MUTEX_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/miui/maml/util/ExecutorHelper;->sBigOnlineTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x5

    const/4 v4, 0x5

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v9, Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$1HMhUVf2KoNXxNTJGLPCloTASc4;->INSTANCE:Lcom/miui/maml/util/-$$Lambda$ExecutorHelper$1HMhUVf2KoNXxNTJGLPCloTASc4;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v2, 0x1

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 46
    sput-object v1, Lcom/miui/maml/util/ExecutorHelper;->sBigOnlineTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/maml/util/ExecutorHelper;->sBigOnlineTaskExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic lambda$getLocalTaskExecutor$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MAML-LocalTask"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getLocalTaskExecutor$1(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const-string p1, "ExecutorHelper"

    const-string v0, "Exceeded Local ThreadPoolExecutor pool size. useOnline"

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {}, Lcom/miui/maml/util/ExecutorHelper;->getLongOnlineTaskExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$getLongOnlineTaskExecutor$2(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MAML-OnlineTask"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
