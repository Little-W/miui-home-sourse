.class public final Lio/branch/search/b1$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1;->a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeZeroState$2"
    f = "KCompositeInterface.kt"
    l = {
        0x100
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/b1;

.field public final synthetic d:Lio/branch/search/BranchZeroStateRequest;

.field public final synthetic e:Lio/branch/search/ui/KBranchZeroStateEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/b1;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b1$c;->c:Lio/branch/search/b1;

    iput-object p2, p0, Lio/branch/search/b1$c;->d:Lio/branch/search/BranchZeroStateRequest;

    iput-object p3, p0, Lio/branch/search/b1$c;->e:Lio/branch/search/ui/KBranchZeroStateEvents;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lio/branch/search/b1$c;

    iget-object v1, p0, Lio/branch/search/b1$c;->c:Lio/branch/search/b1;

    iget-object v2, p0, Lio/branch/search/b1$c;->d:Lio/branch/search/BranchZeroStateRequest;

    iget-object p0, p0, Lio/branch/search/b1$c;->e:Lio/branch/search/ui/KBranchZeroStateEvents;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/b1$c;-><init>(Lio/branch/search/b1;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/b1$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b1$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/b1$c;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/b1$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/b1$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/branch/search/b1$c;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/b1$c;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lio/branch/search/b1$c;->c:Lio/branch/search/b1;

    invoke-static {v1}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/b1$c;->d:Lio/branch/search/BranchZeroStateRequest;

    iput-object p1, p0, Lio/branch/search/b1$c;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/b1$c;->b:I

    invoke-static {v1, v3, p1, p0}, Lio/branch/search/d1;->a(Lio/branch/search/l;Lio/branch/search/BranchZeroStateRequest;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lio/branch/search/f1;

    invoke-virtual {p1}, Lio/branch/search/f1;->a()Lio/branch/search/e5;

    move-result-object v1

    instance-of v2, v1, Lio/branch/search/e5$b;

    if-eqz v2, :cond_3

    check-cast v1, Lio/branch/search/e5$b;

    invoke-virtual {v1}, Lio/branch/search/e5$b;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchZeroStateResult;

    iget-object v2, p0, Lio/branch/search/b1$c;->c:Lio/branch/search/b1;

    invoke-static {v2}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/KBranchRemoteConfiguration;->u()Lio/branch/search/internal/ui/UISkeletonResolver;

    move-result-object v3

    iget-object v2, p0, Lio/branch/search/b1$c;->c:Lio/branch/search/b1;

    invoke-static {v2}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v4

    invoke-virtual {v1}, Lio/branch/search/BranchZeroStateResult;->getResults()Ljava/util/List;

    move-result-object v5

    const-string v1, "it.results"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/f1;->b()Lio/branch/search/m0;

    move-result-object v6

    sget-object v7, Lio/branch/search/t4;->c:Lio/branch/search/t4;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lio/branch/search/w4;->a(Lio/branch/search/internal/ui/UISkeletonResolver;Lio/branch/search/l;Ljava/util/List;Lio/branch/search/m0;Lio/branch/search/t4;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/branch/search/b1$c;->c:Lio/branch/search/b1;

    invoke-static {v2}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v2

    invoke-static {v2, v1}, Lio/branch/search/m5;->b(Lio/branch/search/l;Ljava/util/List;)V

    new-instance v2, Lio/branch/search/ui/KBranchZeroStateResult;

    invoke-direct {v2, v1}, Lio/branch/search/ui/KBranchZeroStateResult;-><init>(Ljava/util/List;)V

    new-instance v1, Lio/branch/search/e5$b;

    invoke-direct {v1, v2}, Lio/branch/search/e5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    instance-of v2, v1, Lio/branch/search/e5$a;

    if-eqz v2, :cond_6

    :goto_1
    instance-of v2, v1, Lio/branch/search/e5$b;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    instance-of v2, v1, Lio/branch/search/e5$a;

    if-eqz v2, :cond_5

    check-cast v1, Lio/branch/search/e5$a;

    invoke-virtual {v1}, Lio/branch/search/e5$a;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalError;

    sget-object v2, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v2, v1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;

    move-result-object v1

    new-instance v2, Lio/branch/search/e5$a;

    invoke-direct {v2, v1}, Lio/branch/search/e5$a;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v3, Lio/branch/search/b1$c$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lio/branch/search/b1$c$a;-><init>(Lio/branch/search/b1$c;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-virtual {p1}, Lio/branch/search/f1;->b()Lio/branch/search/m0;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/m0;->d()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
