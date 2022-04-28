.class public final Lio/branch/search/o0$b$d$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o0$b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$4$3"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/o0$b$d;

.field public final synthetic c:Lio/branch/search/s4;


# direct methods
.method public constructor <init>(Lio/branch/search/o0$b$d;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/o0$b$d$b;->b:Lio/branch/search/o0$b$d;

    iput-object p2, p0, Lio/branch/search/o0$b$d$b;->c:Lio/branch/search/s4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lio/branch/search/o0$b$d$b;

    iget-object v0, p0, Lio/branch/search/o0$b$d$b;->b:Lio/branch/search/o0$b$d;

    iget-object v1, p0, Lio/branch/search/o0$b$d$b;->c:Lio/branch/search/s4;

    invoke-direct {p1, v0, v1, p2}, Lio/branch/search/o0$b$d$b;-><init>(Lio/branch/search/o0$b$d;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/o0$b$d$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/o0$b$d$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/o0$b$d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/o0$b$d$b;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/o0$b$d$b;->c:Lio/branch/search/s4;

    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchSearchResult;

    new-instance v0, Lio/branch/search/s4$b;

    invoke-direct {v0, p1}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lio/branch/search/o0$b$d$b;->b:Lio/branch/search/o0$b$d;

    iget-object v0, v0, Lio/branch/search/o0$b$d;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    instance-of v1, p1, Lio/branch/search/s4$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchSearchResult;

    invoke-interface {v0, p1, v2}, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;->onBranchRemoteSearchComplete(Lio/branch/search/BranchSearchResult;Lio/branch/search/BranchSearchError;)V

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lio/branch/search/s4$a;

    if-eqz v1, :cond_2

    check-cast p1, Lio/branch/search/s4$a;

    invoke-virtual {p1}, Lio/branch/search/s4$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchSearchError;

    invoke-interface {v0, v2, p1}, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;->onBranchRemoteSearchComplete(Lio/branch/search/BranchSearchResult;Lio/branch/search/BranchSearchError;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
