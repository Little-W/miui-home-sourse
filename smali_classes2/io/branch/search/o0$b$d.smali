.class public final Lio/branch/search/o0$b$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o0$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lio/branch/search/s4<",
        "+",
        "Lio/branch/search/BranchSearchError;",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$4"
    f = "KCompositeInterface.kt"
    l = {
        0xcd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/o0$b;

.field public final synthetic d:Lio/branch/search/BranchSearchRequest;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/o0$b;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iput-object p2, p0, Lio/branch/search/o0$b$d;->d:Lio/branch/search/BranchSearchRequest;

    iput-object p3, p0, Lio/branch/search/o0$b$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lio/branch/search/o0$b$d;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/o0$b$d;

    iget-object v2, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v3, p0, Lio/branch/search/o0$b$d;->d:Lio/branch/search/BranchSearchRequest;

    iget-object v4, p0, Lio/branch/search/o0$b$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lio/branch/search/o0$b$d;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/branch/search/o0$b$d;-><init>(Lio/branch/search/o0$b;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/o0$b$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/o0$b$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/o0$b$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/o0$b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/o0$b$d;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/branch/search/o0$b$d;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/o0$b$d;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v1, v1, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v1}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->f()Lio/branch/search/p0;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/o0$b$d;->d:Lio/branch/search/BranchSearchRequest;

    iput-object p1, p0, Lio/branch/search/o0$b$d;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/o0$b$d;->b:I

    invoke-virtual {v1, v3, p0}, Lio/branch/search/p0;->a(Lio/branch/search/BranchSearchRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lio/branch/search/s4;

    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_3

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/search/o0$b$d;->d:Lio/branch/search/BranchSearchRequest;

    invoke-static {v0, p1}, Lio/branch/search/BranchSearchResult;->a(Lio/branch/search/BranchSearchRequest;Lorg/json/JSONObject;)Lkotlin/Pair;

    move-result-object p1

    new-instance v0, Lio/branch/search/s4$b;

    invoke-direct {v0, p1}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_f

    :goto_1
    iget-object v0, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v0, v0, Lio/branch/search/o0$b;->j:Lio/branch/search/ui/KBranchSearchEvents;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lio/branch/search/s4$b;

    invoke-virtual {v0}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/branch/search/BranchSearchResult;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/c0;

    iget-object v5, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v5, v5, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v5}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v5

    invoke-virtual {v5}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lio/branch/search/KBranchRemoteConfiguration;->m()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v5

    iget-object v6, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v6, v6, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v6}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v6

    const-string v7, "it"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/branch/search/d;->getResults()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v8, "virtualRequest"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6, v7, v0, v2}, Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/c0;Z)Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v5, v5, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v5}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v5

    invoke-static {v5, v0}, Lio/branch/search/z4;->b(Lio/branch/search/l;Ljava/util/List;)V

    new-instance v5, Lio/branch/search/ui/KBranchSearchResult;

    invoke-virtual {v4}, Lio/branch/search/BranchSearchResult;->getBranchSearchRequest()Lio/branch/search/BranchSearchRequest;

    move-result-object v4

    const-string v6, "it.branchSearchRequest"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lio/branch/search/BranchSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v4

    const-string v6, "it.branchSearchRequest.query"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4, v0}, Lio/branch/search/ui/KBranchSearchResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Lio/branch/search/s4$b;

    invoke-direct {v0, v5}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<io.branch.search.BranchBaseAppResult<out io.branch.search.BranchBaseLinkResult>>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_8

    move-object v0, p1

    :goto_2
    instance-of v4, v0, Lio/branch/search/s4$b;

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    instance-of v4, v0, Lio/branch/search/s4$a;

    if-eqz v4, :cond_7

    check-cast v0, Lio/branch/search/s4$a;

    invoke-virtual {v0}, Lio/branch/search/s4$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchSearchError;

    sget-object v4, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v4, v0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object v0

    new-instance v4, Lio/branch/search/s4$a;

    invoke-direct {v4, v0}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    move-object v0, v4

    :goto_3
    iget-object v4, p0, Lio/branch/search/o0$b$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lio/branch/search/o0$b$d$a;

    invoke-direct {v6, p0, v0, v1}, Lio/branch/search/o0$b$d$a;-><init>(Lio/branch/search/o0$b$d;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V

    goto :goto_5

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    iget-object v0, p0, Lio/branch/search/o0$b$d;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lio/branch/search/o0$b$d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_c

    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lio/branch/search/s4$b;

    invoke-virtual {v0}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    iget-object v2, p0, Lio/branch/search/o0$b$d;->c:Lio/branch/search/o0$b;

    iget-object v2, v2, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v2}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "it.first"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/branch/search/BranchSearchResult;

    invoke-virtual {v0}, Lio/branch/search/d;->getResults()Ljava/util/List;

    move-result-object v0

    const-string v4, "it.first.results"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lio/branch/search/z4;->a(Lio/branch/search/l;Ljava/util/List;)V

    goto :goto_4

    :cond_a
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_b

    :goto_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lio/branch/search/o0$b$d$b;

    invoke-direct {v6, p0, p1, v1}, Lio/branch/search/o0$b$d$b;-><init>(Lio/branch/search/o0$b$d;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V

    :goto_5
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_6

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_c
    :goto_6
    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_d

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/c0;

    invoke-virtual {p1}, Lio/branch/search/c0;->d()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v0, Lio/branch/search/s4$b;

    invoke-direct {v0, p1}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_7

    :cond_d
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_e

    :goto_7
    return-object p1

    :cond_e
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
