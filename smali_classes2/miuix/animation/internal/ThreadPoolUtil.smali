.class public Lmiuix/animation/internal/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"


# static fields
.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1e

.field private static final KEEP_POOL_SIZE:I

.field public static final MAX_SPLIT_COUNT:I

.field private static final sCacheThread:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sSingleThread:Ljava/util/concurrent/Executor;

.field public static sThreadPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lmiuix/animation/internal/ThreadPoolUtil;->CPU_COUNT:I

    .line 23
    sget v0, Lmiuix/animation/internal/ThreadPoolUtil;->CPU_COUNT:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    sput v1, Lmiuix/animation/internal/ThreadPoolUtil;->MAX_SPLIT_COUNT:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_0
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lmiuix/animation/internal/ThreadPoolUtil;->KEEP_POOL_SIZE:I

    const/4 v0, -0x2

    .line 27
    sput v0, Lmiuix/animation/internal/ThreadPoolUtil;->sThreadPriority:I

    .line 31
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lmiuix/animation/internal/ThreadPoolUtil;->KEEP_POOL_SIZE:I

    sget v1, Lmiuix/animation/internal/ThreadPoolUtil;->MAX_SPLIT_COUNT:I

    add-int/lit8 v3, v1, 0x3

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "AnimThread"

    .line 37
    invoke-static {v1}, Lmiuix/animation/internal/ThreadPoolUtil;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    new-instance v9, Lmiuix/animation/internal/ThreadPoolUtil$1;

    invoke-direct {v9}, Lmiuix/animation/internal/ThreadPoolUtil$1;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sCacheThread:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v0, "WorkThread"

    .line 63
    invoke-static {v0}, Lmiuix/animation/internal/ThreadPoolUtil;->getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sSingleThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .line 19
    sget-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sSingleThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static getSplitCount(I[I)V
    .locals 4

    .line 70
    div-int/lit16 v0, p0, 0xfa0

    const/4 v1, 0x1

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 72
    sget v2, Lmiuix/animation/internal/ThreadPoolUtil;->MAX_SPLIT_COUNT:I

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    int-to-float p0, p0

    int-to-float v2, v0

    div-float/2addr p0, v2

    float-to-double v2, p0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    const/4 v2, 0x0

    .line 76
    aput v0, p1, v2

    .line 77
    aput p0, p1, v1

    return-void
.end method

.method private static getThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 46
    new-instance v0, Lmiuix/animation/internal/ThreadPoolUtil$2;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/ThreadPoolUtil$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 66
    sget-object v0, Lmiuix/animation/internal/ThreadPoolUtil;->sCacheThread:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setThreadPriority(I)V
    .locals 0

    .line 81
    sput p0, Lmiuix/animation/internal/ThreadPoolUtil;->sThreadPriority:I

    return-void
.end method
