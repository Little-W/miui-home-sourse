.class public final Lio/branch/search/d1$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/d1;->a(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
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
    c = "io.branch.search.internal.interfaces.LocalInterfaceRewriteKt$localQueryHint$2"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/l;

.field public final synthetic d:Lio/branch/search/BranchQueryHintRequest;

.field public final synthetic e:Lio/branch/search/IBranchLocalQueryHintEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/d1$b;->c:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/d1$b;->d:Lio/branch/search/BranchQueryHintRequest;

    iput-object p3, p0, Lio/branch/search/d1$b;->e:Lio/branch/search/IBranchLocalQueryHintEvents;

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

    new-instance v0, Lio/branch/search/d1$b;

    iget-object v1, p0, Lio/branch/search/d1$b;->c:Lio/branch/search/l;

    iget-object v2, p0, Lio/branch/search/d1$b;->d:Lio/branch/search/BranchQueryHintRequest;

    iget-object p0, p0, Lio/branch/search/d1$b;->e:Lio/branch/search/IBranchLocalQueryHintEvents;

    invoke-direct {v0, v1, v2, p0, p2}, Lio/branch/search/d1$b;-><init>(Lio/branch/search/l;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/d1$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/d1$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/d1$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/d1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/d1$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/branch/search/d1$b;->a:Ljava/lang/Object;

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

    iget-object p1, p0, Lio/branch/search/d1$b;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/branch/search/e1;

    iget-object v4, p0, Lio/branch/search/d1$b;->c:Lio/branch/search/l;

    new-instance v11, Lio/branch/search/m0;

    iget-object v6, p0, Lio/branch/search/d1$b;->d:Lio/branch/search/BranchQueryHintRequest;

    invoke-static {}, Lio/branch/search/m0;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lio/branch/search/m0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    const-string v7, "local_hints"

    const-string v8, "local_hints"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lio/branch/search/m0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    new-instance v8, Lio/branch/search/d1$b$b;

    invoke-direct {v8, p0}, Lio/branch/search/d1$b$b;-><init>(Lio/branch/search/d1$b;)V

    const-string v6, "SQL"

    move-object v3, v1

    move-object v5, p1

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lio/branch/search/e1;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/m0;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lio/branch/search/d1$b;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/d1$b;->b:I

    invoke-virtual {v1, p0}, Lio/branch/search/e1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lio/branch/search/f1;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/branch/search/d1$b$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lio/branch/search/d1$b$a;-><init>(Lio/branch/search/d1$b;Lio/branch/search/f1;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    invoke-static {p1}, Lio/branch/search/d1;->a(Lio/branch/search/f1;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
