.class public final Lio/branch/search/b1$b$e$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/b1$b$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$localSearchJob$1$2"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/b1$b$e;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lio/branch/search/e5;


# direct methods
.method public constructor <init>(Lio/branch/search/b1$b$e;Ljava/util/List;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/b1$b$e$b;->b:Lio/branch/search/b1$b$e;

    iput-object p2, p0, Lio/branch/search/b1$b$e$b;->c:Ljava/util/List;

    iput-object p3, p0, Lio/branch/search/b1$b$e$b;->d:Lio/branch/search/e5;

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

    new-instance p1, Lio/branch/search/b1$b$e$b;

    iget-object v0, p0, Lio/branch/search/b1$b$e$b;->b:Lio/branch/search/b1$b$e;

    iget-object v1, p0, Lio/branch/search/b1$b$e$b;->c:Ljava/util/List;

    iget-object p0, p0, Lio/branch/search/b1$b$e$b;->d:Lio/branch/search/e5;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/b1$b$e$b;-><init>(Lio/branch/search/b1$b$e;Ljava/util/List;Lio/branch/search/e5;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/b1$b$e$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/b1$b$e$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/b1$b$e$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/b1$b$e$b;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/b1$b$e$b;->b:Lio/branch/search/b1$b$e;

    iget-object p1, p1, Lio/branch/search/b1$b$e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lio/branch/search/BranchLocalSearchResult;

    iget-object v0, p0, Lio/branch/search/b1$b$e$b;->c:Ljava/util/List;

    iget-object v1, p0, Lio/branch/search/b1$b$e$b;->d:Lio/branch/search/e5;

    check-cast v1, Lio/branch/search/e5$b;

    invoke-virtual {v1}, Lio/branch/search/e5$b;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/BranchLocalSearchResult;

    iget-object v1, v1, Lio/branch/search/d;->requestId:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lio/branch/search/BranchLocalSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/b1$b$e$b;->b:Lio/branch/search/b1$b$e;

    iget-object v0, v0, Lio/branch/search/b1$b$e;->c:Lio/branch/search/b1$b;

    iget-object v0, v0, Lio/branch/search/b1$b;->f:Lio/branch/search/b1;

    invoke-static {v0}, Lio/branch/search/b1;->a(Lio/branch/search/b1;)Lio/branch/search/l;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/b1$b$e$b;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lio/branch/search/m5;->a(Lio/branch/search/l;Ljava/util/List;)V

    iget-object p0, p0, Lio/branch/search/b1$b$e$b;->b:Lio/branch/search/b1$b$e;

    iget-object p0, p0, Lio/branch/search/b1$b$e;->f:Lio/branch/search/IBranchExclusiveCompositeSearchEvents;

    invoke-interface {p0, p1}, Lio/branch/search/IBranchExclusiveCompositeSearchEvents;->onBranchLocalSearchComplete(Lio/branch/search/BranchLocalSearchResult;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
