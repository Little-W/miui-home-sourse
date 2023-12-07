.class public Lcom/android/systemui/shared/recents/system/BackgroundExecutor;
.super Ljava/lang/Object;


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->sInstance:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/system/BackgroundExecutor$1;-><init>(Lcom/android/systemui/shared/recents/system/BackgroundExecutor;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static get()Lcom/android/systemui/shared/recents/system/BackgroundExecutor;
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->sInstance:Lcom/android/systemui/shared/recents/system/BackgroundExecutor;

    return-object v0
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
