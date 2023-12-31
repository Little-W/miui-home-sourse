.class public final Lkotlinx/coroutines/ThreadPoolDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;
.source "ThreadPoolDispatcher.kt"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final nThreads:I

.field private final name:Ljava/lang/String;

.field private final threadNo:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->nThreads:I

    iput-object p2, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->name:Ljava/lang/String;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->threadNo:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    iget p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->nThreads:I

    new-instance p2, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;

    invoke-direct {p2, p0}, Lkotlinx/coroutines/ThreadPoolDispatcher$executor$1;-><init>(Lkotlinx/coroutines/ThreadPoolDispatcher;)V

    check-cast p2, Ljava/util/concurrent/ThreadFactory;

    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->executor:Ljava/util/concurrent/Executor;

    .line 89
    invoke-virtual {p0}, Lkotlinx/coroutines/ThreadPoolDispatcher;->initFutureCancellation$kotlinx_coroutines_core()V

    return-void
.end method

.method public static final synthetic access$getNThreads$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)I
    .locals 0

    .line 78
    iget p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->nThreads:I

    return p0
.end method

.method public static final synthetic access$getName$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getThreadNo$p(Lkotlinx/coroutines/ThreadPoolDispatcher;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 78
    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->threadNo:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lkotlinx/coroutines/ThreadPoolDispatcher;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.util.concurrent.ExecutorService"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 84
    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadPoolDispatcher["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->nThreads:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/coroutines/ThreadPoolDispatcher;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
