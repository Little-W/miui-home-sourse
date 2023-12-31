.class public final Lio/branch/search/b1$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1;->b(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1"
    f = "KCompositeInterface.kt"
    l = {
        0xc3,
        0xcb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lio/branch/search/b1;

.field public final synthetic g:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

.field public final synthetic h:Lio/branch/search/BranchCompositeSearchRequest;

.field public final synthetic i:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

.field public final synthetic j:Lio/branch/search/ui/KBranchSearchEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/b1;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/ui/KBranchSearchEvents;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    iput-object p2, p0, Lio/branch/search/b1$b;->g:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    iput-object p3, p0, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    iput-object p4, p0, Lio/branch/search/b1$b;->i:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iput-object p5, p0, Lio/branch/search/b1$b;->j:Lio/branch/search/ui/KBranchSearchEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lio/branch/search/b1$b;

    iget-object v2, p0, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    iget-object v3, p0, Lio/branch/search/b1$b;->g:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    iget-object v4, p0, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v5, p0, Lio/branch/search/b1$b;->i:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iget-object v6, p0, Lio/branch/search/b1$b;->j:Lio/branch/search/ui/KBranchSearchEvents;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/b1$b;-><init>(Lio/branch/search/b1;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/ui/KBranchSearchEvents;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/b1$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b1$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/b1$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/b1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v8, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    iget v0, v8, Lio/branch/search/b1$b;->e:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v11, :cond_1

    if-ne v0, v10, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v8, Lio/branch/search/b1$b;->d:Ljava/lang/Object;

    check-cast v0, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    iget-object v1, v8, Lio/branch/search/b1$b;->c:Ljava/lang/Object;

    check-cast v1, Lio/branch/search/BranchSearchRequest;

    iget-object v2, v8, Lio/branch/search/b1$b;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v8, Lio/branch/search/b1$b;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    move-object v11, v2

    move-object v2, v1

    goto/16 :goto_5

    :catch_0
    move-object v14, v1

    move v1, v11

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v8, Lio/branch/search/b1$b;->a:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v12, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v8, Lio/branch/search/b1$b;->g:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Lio/branch/search/m0;

    iget-object v1, v8, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v2, v1, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    invoke-static {}, Lio/branch/search/m0;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const-string v3, "app_store_api"

    const-string v4, "app_store_app"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/branch/search/m0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v8, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v0, v0, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/BranchAppStoreRequest;

    invoke-virtual {v0}, Lio/branch/search/BranchAppStoreRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v11

    goto :goto_0

    :cond_3
    move v0, v14

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lio/branch/search/b1$b$a;

    invoke-direct {v4, v8, v7, v12}, Lio/branch/search/b1$b$a;-><init>(Lio/branch/search/b1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v13

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_4
    invoke-static {}, Lio/branch/search/b5;->c()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v6

    new-instance v15, Lio/branch/search/b1$b$b;

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lio/branch/search/b1$b$b;-><init>(Lio/branch/search/b1$b;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    move-object v1, v13

    move-object v2, v6

    move-object v4, v15

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    :cond_5
    :goto_1
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v15, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v0, v8, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {v0}, Lio/branch/search/BranchCompositeSearchRequest;->getRemoteRequest()Lio/branch/search/BranchSearchRequest;

    move-result-object v14

    iget-object v0, v8, Lio/branch/search/b1$b;->i:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v8, Lio/branch/search/b1$b;->g:Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;

    instance-of v1, v0, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    if-nez v1, :cond_7

    move-object v5, v12

    goto :goto_3

    :cond_7
    :goto_2
    move-object v5, v0

    :goto_3
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v16, Lio/branch/search/b1$b$e;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v6

    move-object v7, v4

    move-object v4, v5

    move-object v10, v5

    move-object v5, v14

    move-object v11, v6

    move-object v6, v15

    move-object v12, v7

    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lio/branch/search/b1$b$e;-><init>(Lio/branch/search/b1$b;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v4, v16

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v0, v8, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    invoke-static {v0}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->k()I

    move-result v0

    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v3, v1

    :try_start_1
    new-instance v0, Lio/branch/search/b1$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lio/branch/search/b1$b$c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v15, v8, Lio/branch/search/b1$b;->a:Ljava/lang/Object;

    iput-object v11, v8, Lio/branch/search/b1$b;->b:Ljava/lang/Object;

    iput-object v14, v8, Lio/branch/search/b1$b;->c:Ljava/lang/Object;

    iput-object v10, v8, Lio/branch/search/b1$b;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v8, Lio/branch/search/b1$b;->e:I

    invoke-static {v3, v4, v0, v8}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v9, :cond_8

    return-object v9

    :cond_8
    move-object v4, v10

    move-object v2, v14

    move-object v3, v15

    goto :goto_5

    :catch_1
    move-object v0, v10

    move-object v2, v11

    move-object v3, v15

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v4, v0

    move-object v11, v2

    move-object v2, v14

    :goto_5
    if-eqz v2, :cond_9

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    new-instance v7, Lio/branch/search/b1$b$d;

    const/4 v5, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lio/branch/search/b1$b$d;-><init>(Lio/branch/search/b1$b;Lio/branch/search/BranchSearchRequest;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x0

    iput-object v0, v8, Lio/branch/search/b1$b;->a:Ljava/lang/Object;

    iput-object v0, v8, Lio/branch/search/b1$b;->b:Ljava/lang/Object;

    iput-object v0, v8, Lio/branch/search/b1$b;->c:Ljava/lang/Object;

    iput-object v0, v8, Lio/branch/search/b1$b;->d:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v8, Lio/branch/search/b1$b;->e:I

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_9

    return-object v9

    :cond_9
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
