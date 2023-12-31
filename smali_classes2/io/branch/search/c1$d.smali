.class public final Lio/branch/search/c1$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/c1;->a(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$autoSuggest$3"
    f = "KNetworkInterface.kt"
    l = {
        0xd2,
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/c1;

.field public final synthetic e:Lio/branch/search/BranchAutoSuggestRequest;

.field public final synthetic f:Lio/branch/search/IBranchAutoSuggestEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/c1;Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    iput-object p2, p0, Lio/branch/search/c1$d;->e:Lio/branch/search/BranchAutoSuggestRequest;

    iput-object p3, p0, Lio/branch/search/c1$d;->f:Lio/branch/search/IBranchAutoSuggestEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lio/branch/search/c1$d;

    iget-object v0, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    iget-object v1, p0, Lio/branch/search/c1$d;->e:Lio/branch/search/BranchAutoSuggestRequest;

    iget-object p0, p0, Lio/branch/search/c1$d;->f:Lio/branch/search/IBranchAutoSuggestEvents;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/c1$d;-><init>(Lio/branch/search/c1;Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/c1$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/c1$d;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/c1$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/c1$d;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lio/branch/search/c1$d;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/branch/search/c1$d;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    sget-object v5, Lio/branch/search/s5;->l:Lio/branch/search/s5;

    invoke-static {v4}, Lio/branch/search/c1;->a(Lio/branch/search/c1;)Lio/branch/search/l;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object p1

    const-string v6, "branchSearch.branchConfiguration"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->d()Ljava/lang/String;

    move-result-object v6

    const-string p1, "branchSearch.branchConfiguration.autosuggestUrl"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/c1$d;->e:Lio/branch/search/BranchAutoSuggestRequest;

    iget-object v7, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    invoke-static {v7}, Lio/branch/search/c1;->a(Lio/branch/search/c1;)Lio/branch/search/l;

    move-result-object v7

    invoke-virtual {v7}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    invoke-static {v8}, Lio/branch/search/c1;->a(Lio/branch/search/c1;)Lio/branch/search/l;

    move-result-object v8

    invoke-virtual {v8}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v8

    iget-object v9, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    invoke-static {v9}, Lio/branch/search/c1;->a(Lio/branch/search/c1;)Lio/branch/search/l;

    move-result-object v9

    invoke-virtual {v9}, Lio/branch/search/l;->c()Lio/branch/search/e;

    move-result-object v9

    iget-object v10, p0, Lio/branch/search/c1$d;->d:Lio/branch/search/c1;

    invoke-static {v10}, Lio/branch/search/c1;->a(Lio/branch/search/c1;)Lio/branch/search/l;

    move-result-object v10

    invoke-virtual {v10}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v10

    invoke-virtual {p1, v7, v8, v9, v10}, Lio/branch/search/f;->a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;Lio/branch/search/KBranchRemoteConfiguration;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p1, "request.toPayload(branch\u2026Configuration).toString()"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lio/branch/search/c1$d;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/c1$d;->b:Ljava/lang/Object;

    iput v3, p0, Lio/branch/search/c1$d;->c:I

    const/4 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v4 .. v11}, Lio/branch/search/c1;->a(Lio/branch/search/c1;Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    :goto_0
    check-cast p1, Lio/branch/search/e5;

    instance-of v4, p1, Lio/branch/search/e5$b;

    if-eqz v4, :cond_4

    check-cast p1, Lio/branch/search/e5$b;

    invoke-virtual {p1}, Lio/branch/search/e5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v4, p0, Lio/branch/search/c1$d;->e:Lio/branch/search/BranchAutoSuggestRequest;

    invoke-static {v4, p1}, Lio/branch/search/BranchAutoSuggestResult;->a(Lio/branch/search/BranchAutoSuggestRequest;Lorg/json/JSONObject;)Lio/branch/search/BranchAutoSuggestResult;

    move-result-object p1

    new-instance v4, Lio/branch/search/e5$b;

    invoke-direct {v4, p1}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_1

    :cond_4
    instance-of v4, p1, Lio/branch/search/e5$a;

    if-eqz v4, :cond_6

    :goto_1
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/branch/search/c1$d$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lio/branch/search/c1$d$a;-><init>(Lio/branch/search/c1$d;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v4, p0, Lio/branch/search/c1$d;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/branch/search/c1$d;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/c1$d;->c:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
