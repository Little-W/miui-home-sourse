.class public final Lio/branch/search/b1$b$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$localSearchJob$1"
    f = "KCompositeInterface.kt"
    l = {
        0x89
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/b1$b;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

.field public final synthetic g:Lio/branch/search/BranchSearchRequest;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/branch/search/b1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iput-object p2, p0, Lio/branch/search/b1$b$e;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lio/branch/search/b1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lio/branch/search/b1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iput-object p5, p0, Lio/branch/search/b1$b$e;->g:Lio/branch/search/BranchSearchRequest;

    iput-object p6, p0, Lio/branch/search/b1$b$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lio/branch/search/b1$b$e;

    iget-object v2, p0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iget-object v3, p0, Lio/branch/search/b1$b$e;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lio/branch/search/b1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lio/branch/search/b1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iget-object v6, p0, Lio/branch/search/b1$b$e;->g:Lio/branch/search/BranchSearchRequest;

    iget-object v7, p0, Lio/branch/search/b1$b$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lio/branch/search/b1$b$e;-><init>(Lio/branch/search/b1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/b1$b$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b1$b$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/b1$b$e;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/b1$b$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/b1$b$e;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lio/branch/search/b1$b$e;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object v6, v1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/branch/search/b1$b$e;->a:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iget-object v5, v5, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    invoke-static {v5}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v5

    iget-object v6, v0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iget-object v6, v6, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {v6}, Lio/branch/search/BranchCompositeSearchRequest;->getLocalRequest()Lio/branch/search/BranchLocalSearchRequest;

    move-result-object v6

    const-string v7, "request.localRequest"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v0, Lio/branch/search/b1$b$e;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lio/branch/search/m0;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lio/branch/search/m0;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v7, v4

    :goto_0
    iput-object v2, v0, Lio/branch/search/b1$b$e;->a:Ljava/lang/Object;

    iput v3, v0, Lio/branch/search/b1$b$e;->b:I

    invoke-static {v5, v6, v2, v7, v0}, Lio/branch/search/d1;->a(Lio/branch/search/l;Lio/branch/search/BranchLocalSearchRequest;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v6, v2

    :goto_1
    check-cast v5, Lio/branch/search/f1;

    invoke-virtual {v5}, Lio/branch/search/f1;->a()Lio/branch/search/e5;

    move-result-object v1

    instance-of v2, v1, Lio/branch/search/e5$b;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lio/branch/search/e5$b;

    invoke-virtual {v2}, Lio/branch/search/e5$b;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {v7}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v7

    const-string v8, "r.value.results"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lio/branch/search/e5$b;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalSearchResult;

    invoke-virtual {v2}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iget-object v3, v2, Lio/branch/search/b1$b;->j:Lio/branch/search/ui/KBranchSearchEvents;

    if-eqz v3, :cond_4

    iget-object v1, v2, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    invoke-static {v1}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->s()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v9

    iget-object v1, v0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iget-object v1, v1, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    invoke-static {v1}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v10

    invoke-virtual {v5}, Lio/branch/search/f1;->b()Lio/branch/search/m0;

    move-result-object v12

    sget-object v13, Lio/branch/search/t4;->a:Lio/branch/search/t4;

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/m0;Lio/branch/search/t4;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    new-instance v9, Lio/branch/search/b1$b$e$a;

    invoke-direct {v9, v0, v1, v4}, Lio/branch/search/b1$b$e$a;-><init>(Lio/branch/search/b1$b$e;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lio/branch/search/b1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz v2, :cond_8

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    new-instance v9, Lio/branch/search/b1$b$e$b;

    invoke-direct {v9, v0, v11, v1, v4}, Lio/branch/search/b1$b$e$b;-><init>(Lio/branch/search/b1$b$e;Ljava/util/List;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lio/branch/search/b1$b$e;->g:Lio/branch/search/BranchSearchRequest;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    new-instance v9, Lio/branch/search/b1$b$e$c;

    invoke-direct {v9, v0, v1, v4}, Lio/branch/search/b1$b$e$c;-><init>(Lio/branch/search/b1$b$e;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V

    :goto_2
    const/4 v8, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_6
    instance-of v2, v1, Lio/branch/search/e5$a;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lio/branch/search/e5$a;

    invoke-virtual {v2}, Lio/branch/search/e5$a;->b()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lio/branch/search/BranchLocalError$EmptyQuery;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lio/branch/search/b1$b$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    new-instance v9, Lio/branch/search/b1$b$e$d;

    invoke-direct {v9, v0, v1, v4}, Lio/branch/search/b1$b$e$d;-><init>(Lio/branch/search/b1$b$e;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V

    goto :goto_2

    :cond_7
    iget-object v0, v0, Lio/branch/search/b1$b$e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    :goto_3
    :try_start_0
    invoke-virtual {v5}, Lio/branch/search/f1;->b()Lio/branch/search/m0;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m0;->d()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
