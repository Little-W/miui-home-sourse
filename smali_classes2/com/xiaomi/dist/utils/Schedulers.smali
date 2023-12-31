.class public final Lcom/xiaomi/dist/utils/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/utils/Schedulers$InnerThread;,
        Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;,
        Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;,
        Lcom/xiaomi/dist/utils/Schedulers$ExtraDiscardOldestPolicy;,
        Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;,
        Lcom/xiaomi/dist/utils/Schedulers$MasterThread;
    }
.end annotation


# static fields
.field private static final sComputationExecutor:Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIOProvider:Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;

    sget-object v1, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;->INSTANCE:Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$xpjMPW2UhDHKrhARqnmVgRvA7wA;

    invoke-direct {v0, v1}, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/xiaomi/dist/utils/Schedulers;->sIOProvider:Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;

    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 44
    new-instance v1, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;

    new-instance v2, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$8aPTgwPfxNEjQMMRICKrU_Ieyds;

    invoke-direct {v2, v0}, Lcom/xiaomi/dist/utils/-$$Lambda$Schedulers$8aPTgwPfxNEjQMMRICKrU_Ieyds;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/xiaomi/dist/utils/Schedulers$SingleInstanceProvider;-><init>(Ljava/util/function/Supplier;)V

    sput-object v1, Lcom/xiaomi/dist/utils/Schedulers;->sComputationExecutor:Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;

    return-void
.end method

.method public static computation()Ljava/util/concurrent/Executor;
    .locals 1

    .line 87
    sget-object v0, Lcom/xiaomi/dist/utils/Schedulers;->sComputationExecutor:Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;

    invoke-interface {v0}, Lcom/xiaomi/dist/utils/Schedulers$ISchedulerProvider;->provide()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static createThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaomi/dist/utils/Schedulers$1;

    invoke-direct {v0, p1, p0}, Lcom/xiaomi/dist/utils/Schedulers$1;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/util/concurrent/Executor;
    .locals 9

    .line 38
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "io"

    const/16 v1, 0xa

    .line 42
    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/Schedulers;->createThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/16 v1, 0x80

    const/16 v2, 0x200

    const-wide/16 v3, 0xa

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v8
.end method

.method static synthetic lambda$static$1(I)Ljava/util/concurrent/Executor;
    .locals 10

    .line 44
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    shl-int/lit8 v2, p0, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    const/16 v1, 0x80

    invoke-direct {v6, v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    const-string v0, "compute"

    const/4 v1, -0x1

    .line 48
    invoke-static {v0, v1}, Lcom/xiaomi/dist/utils/Schedulers;->createThreadFactory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Lcom/xiaomi/dist/utils/Schedulers$ExtraDiscardOldestPolicy;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/xiaomi/dist/utils/Schedulers$ExtraDiscardOldestPolicy;-><init>(Lcom/xiaomi/dist/utils/Schedulers$1;)V

    const-wide/16 v3, 0xa

    move-object v0, v9

    move v1, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static newMasterThread(Ljava/lang/String;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/xiaomi/dist/utils/Schedulers;->newMasterThread(Ljava/lang/String;Landroid/os/Handler$Callback;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;

    move-result-object p0

    return-object p0
.end method

.method public static newMasterThread(Ljava/lang/String;Landroid/os/Handler$Callback;)Lcom/xiaomi/dist/utils/Schedulers$MasterThread;
    .locals 1

    .line 118
    new-instance v0, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/dist/utils/Schedulers$InnerMasterThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    return-object v0
.end method
