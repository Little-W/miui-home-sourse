.class public Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;
.super Ljava/lang/Object;
.source "TaskRunner.java"


# static fields
.field public static final CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MINIMUM_CPU_COUNT:I

.field public static final SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->CPU_COUNT:I

    .line 14
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->CPU_COUNT:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    sput v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->MINIMUM_CPU_COUNT:I

    .line 16
    sget v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->MINIMUM_CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 18
    sput v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->MAXIMUM_POOL_SIZE:I

    .line 20
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->CORE_POOL_SIZE:I

    sget v3, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v7, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->CACHED_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/msa/internal/preinstall/v2/utils/TaskRunner;->SINGLE_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 32
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lcom/miui/msa/internal/preinstall/v2/utils/GlobalHolder;->getUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
