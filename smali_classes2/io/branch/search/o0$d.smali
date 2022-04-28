.class public final Lio/branch/search/o0$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o0;->a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeZeroState$3"
    f = "KCompositeInterface.kt"
    l = {
        0x114
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/o0;

.field public final synthetic d:Lio/branch/search/BranchZeroStateRequest;

.field public final synthetic e:Lio/branch/search/ui/KBranchZeroStateEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/o0;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/o0$d;->c:Lio/branch/search/o0;

    iput-object p2, p0, Lio/branch/search/o0$d;->d:Lio/branch/search/BranchZeroStateRequest;

    iput-object p3, p0, Lio/branch/search/o0$d;->e:Lio/branch/search/ui/KBranchZeroStateEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lio/branch/search/o0$d;

    iget-object v1, p0, Lio/branch/search/o0$d;->c:Lio/branch/search/o0;

    iget-object v2, p0, Lio/branch/search/o0$d;->d:Lio/branch/search/BranchZeroStateRequest;

    iget-object v3, p0, Lio/branch/search/o0$d;->e:Lio/branch/search/ui/KBranchZeroStateEvents;

    invoke-direct {v0, v1, v2, v3, p2}, Lio/branch/search/o0$d;-><init>(Lio/branch/search/o0;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/o0$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/o0$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/o0$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/o0$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/o0$d;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/branch/search/o0$d;->a:Ljava/lang/Object;

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

    iget-object p1, p0, Lio/branch/search/o0$d;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/branch/search/o0$d;->c:Lio/branch/search/o0;

    invoke-static {v1}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->f()Lio/branch/search/p0;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/o0$d;->d:Lio/branch/search/BranchZeroStateRequest;

    iput-object p1, p0, Lio/branch/search/o0$d;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/o0$d;->b:I

    invoke-virtual {v1, v3, p0}, Lio/branch/search/p0;->a(Lio/branch/search/BranchZeroStateRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v3, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lio/branch/search/s4;

    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_4

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/search/o0$d;->d:Lio/branch/search/BranchZeroStateRequest;

    invoke-static {v0, p1}, Lio/branch/search/BranchRemoteZeroStateResult;->createFromJson(Lio/branch/search/BranchZeroStateRequest;Lorg/json/JSONObject;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchRemoteZeroStateResult;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/c0;

    iget-object v1, p0, Lio/branch/search/o0$d;->c:Lio/branch/search/o0;

    invoke-static {v1}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->o()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v1

    iget-object v4, p0, Lio/branch/search/o0$d;->c:Lio/branch/search/o0;

    invoke-static {v4}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v4

    const-string v5, "result"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/branch/search/d;->getResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v5, "virtualRequest"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4, v0, p1, v2}, Lio/branch/search/n4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/c0;Z)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/o0$d;->c:Lio/branch/search/o0;

    invoke-static {v1}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v1

    invoke-static {v1, v0}, Lio/branch/search/z4;->b(Lio/branch/search/l;Ljava/util/List;)V

    invoke-virtual {p1}, Lio/branch/search/c0;->d()V

    new-instance p1, Lio/branch/search/ui/KBranchZeroStateResult;

    invoke-direct {p1, v0}, Lio/branch/search/ui/KBranchZeroStateResult;-><init>(Ljava/util/List;)V

    new-instance v0, Lio/branch/search/s4$b;

    invoke-direct {v0, p1}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.List<io.branch.search.BranchBaseAppResult<out io.branch.search.BranchBaseLinkResult>>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_7

    :goto_1
    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_6

    check-cast p1, Lio/branch/search/s4$a;

    invoke-virtual {p1}, Lio/branch/search/s4$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchSearchError;

    sget-object v0, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchSearchError;)Lio/branch/search/BranchError;

    move-result-object p1

    new-instance v0, Lio/branch/search/s4$a;

    invoke-direct {v0, p1}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lio/branch/search/o0$d$a;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lio/branch/search/o0$d$a;-><init>(Lio/branch/search/o0$d;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
