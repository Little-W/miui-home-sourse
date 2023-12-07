.class public final Lio/branch/search/internal/services/PingService$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/services/PingService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.services.PingService$onStartJob$1"
    f = "PingService.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/internal/services/PingService;

.field public final synthetic c:Lio/branch/search/l;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lio/branch/search/internal/services/PingService;Lio/branch/search/l;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/services/PingService$b;->b:Lio/branch/search/internal/services/PingService;

    iput-object p2, p0, Lio/branch/search/internal/services/PingService$b;->c:Lio/branch/search/l;

    iput-object p3, p0, Lio/branch/search/internal/services/PingService$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/internal/services/PingService$b;->e:Landroid/app/job/JobParameters;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/internal/services/PingService$b;

    iget-object v1, p0, Lio/branch/search/internal/services/PingService$b;->b:Lio/branch/search/internal/services/PingService;

    iget-object v2, p0, Lio/branch/search/internal/services/PingService$b;->c:Lio/branch/search/l;

    iget-object v3, p0, Lio/branch/search/internal/services/PingService$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/internal/services/PingService$b;->e:Landroid/app/job/JobParameters;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/branch/search/internal/services/PingService$b;-><init>(Lio/branch/search/internal/services/PingService;Lio/branch/search/l;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/services/PingService$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/internal/services/PingService$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/services/PingService$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/internal/services/PingService$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lio/branch/search/internal/services/PingService$b;->c:Lio/branch/search/l;

    invoke-virtual {p1}, Lio/branch/search/l;->f()Lio/branch/search/c1;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/internal/services/PingService$b;->d:Ljava/lang/String;

    iput v2, p0, Lio/branch/search/internal/services/PingService$b;->a:I

    invoke-virtual {p1, v1, p0}, Lio/branch/search/c1;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lio/branch/search/e5;

    invoke-virtual {p1}, Lio/branch/search/e5;->a()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/2addr v2, p1

    :catch_0
    iget-object p1, p0, Lio/branch/search/internal/services/PingService$b;->b:Lio/branch/search/internal/services/PingService;

    iget-object p0, p0, Lio/branch/search/internal/services/PingService$b;->e:Landroid/app/job/JobParameters;

    invoke-virtual {p1, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
