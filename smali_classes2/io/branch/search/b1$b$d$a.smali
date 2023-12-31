.class public final Lio/branch/search/b1$b$d$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1$b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$4$1"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/b1$b$d;

.field public final synthetic c:Lio/branch/search/e5;


# direct methods
.method public constructor <init>(Lio/branch/search/b1$b$d;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b1$b$d$a;->b:Lio/branch/search/b1$b$d;

    iput-object p2, p0, Lio/branch/search/b1$b$d$a;->c:Lio/branch/search/e5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lio/branch/search/b1$b$d$a;

    iget-object v0, p0, Lio/branch/search/b1$b$d$a;->b:Lio/branch/search/b1$b$d;

    iget-object p0, p0, Lio/branch/search/b1$b$d$a;->c:Lio/branch/search/e5;

    invoke-direct {p1, v0, p0, p2}, Lio/branch/search/b1$b$d$a;-><init>(Lio/branch/search/b1$b$d;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b1$b$d$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/b1$b$d$a;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/b1$b$d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/b1$b$d$a;->a:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/b1$b$d$a;->c:Lio/branch/search/e5;

    instance-of v0, p1, Lio/branch/search/e5$b;

    const/4 v1, 0x0

    const-string v2, "request.localRequest.query"

    const-string v3, "request.localRequest"

    if-eqz v0, :cond_0

    check-cast p1, Lio/branch/search/e5$b;

    invoke-virtual {p1}, Lio/branch/search/e5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/ui/KBranchSearchResult;

    iget-object p0, p0, Lio/branch/search/b1$b$d$a;->b:Lio/branch/search/b1$b$d;

    iget-object p0, p0, Lio/branch/search/b1$b$d;->c:Lio/branch/search/b1$b;

    iget-object v0, p0, Lio/branch/search/b1$b;->j:Lio/branch/search/ui/KBranchSearchEvents;

    iget-object p0, p0, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchCompositeSearchRequest;->getLocalRequest()Lio/branch/search/BranchLocalSearchRequest;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, p1, v1}, Lio/branch/search/ui/KBranchSearchEvents;->onSearchComplete(Ljava/lang/String;Lio/branch/search/ui/KBranchSearchResult;Lio/branch/search/BranchError;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/branch/search/e5$a;

    if-eqz v0, :cond_1

    check-cast p1, Lio/branch/search/e5$a;

    invoke-virtual {p1}, Lio/branch/search/e5$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchError;

    iget-object p0, p0, Lio/branch/search/b1$b$d$a;->b:Lio/branch/search/b1$b$d;

    iget-object p0, p0, Lio/branch/search/b1$b$d;->c:Lio/branch/search/b1$b;

    iget-object v0, p0, Lio/branch/search/b1$b;->j:Lio/branch/search/ui/KBranchSearchEvents;

    iget-object p0, p0, Lio/branch/search/b1$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    invoke-virtual {p0}, Lio/branch/search/BranchCompositeSearchRequest;->getLocalRequest()Lio/branch/search/BranchLocalSearchRequest;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, v1, p1}, Lio/branch/search/ui/KBranchSearchEvents;->onSearchComplete(Ljava/lang/String;Lio/branch/search/ui/KBranchSearchResult;Lio/branch/search/BranchError;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
