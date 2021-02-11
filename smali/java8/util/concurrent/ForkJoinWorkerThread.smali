.class public Ljava8/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final NAME_PLACEHOLDER:Ljava/lang/String; = "aForkJoinWorkerThread"


# instance fields
.field final pool:Ljava8/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Ljava8/util/concurrent/ForkJoinPool;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 62
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 64
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 73
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0, p2}, Ljava8/util/concurrent/TLRandom;->setContextClassLoader(Ljava/lang/Thread;Ljava/lang/ClassLoader;)V

    .line 75
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 76
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method

.method constructor <init>(Ljava8/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 1

    const-string v0, "aForkJoinWorkerThread"

    .line 87
    invoke-direct {p0, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 89
    invoke-static {p0, p4}, Ljava8/util/concurrent/TLRandom;->setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 90
    invoke-static {p0}, Ljava8/util/concurrent/TLRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    .line 91
    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    .line 92
    invoke-virtual {p1, p0}, Ljava8/util/concurrent/ForkJoinPool;->registerWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;)Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    return-void
.end method

.method public getPool()Ljava8/util/concurrent/ForkJoinPool;
    .locals 1

    .line 101
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .line 115
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v0, v0, Ljava8/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava8/util/concurrent/ForkJoinTask;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 151
    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava8/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v2}, Ljava8/util/concurrent/ForkJoinPool;->runWorker(Ljava8/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :catch_0
    :goto_0
    iget-object v1, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 156
    :try_start_2
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    :goto_1
    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v1

    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :goto_2
    throw v1

    :catch_3
    move-exception v0

    .line 156
    :try_start_3
    invoke-virtual {p0, v0}, Ljava8/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v1

    .line 162
    iget-object v2, p0, Ljava8/util/concurrent/ForkJoinWorkerThread;->pool:Ljava8/util/concurrent/ForkJoinPool;

    invoke-virtual {v2, p0, v0}, Ljava8/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava8/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_3
    return-void
.end method
