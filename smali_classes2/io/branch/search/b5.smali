.class public final Lio/branch/search/b5;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlinx/coroutines/CoroutineScope;

.field public static final b:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

.field public static final c:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "BNCScope"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineName;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lio/branch/search/b5$a;

    sget-object v2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {v1, v2}, Lio/branch/search/b5$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/b5;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lio/branch/search/b5;->a:Lkotlinx/coroutines/CoroutineScope;

    const/16 v0, 0x8

    const-string v1, "BncSqlite"

    invoke-static {v0, v1}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lio/branch/search/b5;->b:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    sget-object v0, Lio/branch/search/b5$b;->a:Lio/branch/search/b5$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/branch/search/b5;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method

.method public static final a()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lio/branch/search/b5;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final a(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper.getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/branch/search/b5$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/branch/search/b5$c;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final b()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    sget-object v0, Lio/branch/search/b5;->a:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
    .locals 1

    sget-object v0, Lio/branch/search/b5;->b:Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    return-object v0
.end method
