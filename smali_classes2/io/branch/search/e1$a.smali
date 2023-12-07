.class public final Lio/branch/search/e1$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e1;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/m0;Lkotlin/jvm/functions/Function1;)V
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
        "Lio/branch/search/f1<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.interfaces.LocalJob$1"
    f = "LocalInterfaceRewrite.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e1;


# direct methods
.method public constructor <init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lio/branch/search/e1$a;

    iget-object p0, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-direct {p1, p0, p2}, Lio/branch/search/e1$a;-><init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/e1$a;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/e1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "request_id"

    const-string v1, "LIRewrite.localSearch."

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v2, p0, Lio/branch/search/e1$a;->a:I

    if-nez v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    sget-object p1, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    iget-object v2, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->c(Lio/branch/search/e1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v3}, Lio/branch/search/e1;->d(Lio/branch/search/e1;)Lio/branch/search/m0;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v3}, Lio/branch/search/e1;->d(Lio/branch/search/e1;)Lio/branch/search/m0;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lio/branch/search/f1$a;->a(Ljava/lang/Object;Lio/branch/search/m0;)Lio/branch/search/f1;

    move-result-object p0
    :try_end_0
    .catch Lio/branch/search/BranchLocalError$InvalidDB; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    iget-object v2, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/l;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-virtual {v1}, Lio/branch/search/e1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v3}, Lio/branch/search/e1;->d(Lio/branch/search/e1;)Lio/branch/search/m0;

    move-result-object v3

    iget-object v3, v3, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, p1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    sget-object p1, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    new-instance v0, Lio/branch/search/BranchLocalError$Unknown;

    invoke-direct {v0}, Lio/branch/search/BranchLocalError$Unknown;-><init>()V

    iget-object p0, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {p0}, Lio/branch/search/e1;->d(Lio/branch/search/e1;)Lio/branch/search/m0;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lio/branch/search/f1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/m0;)Lio/branch/search/f1;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v2}, Lio/branch/search/e1;->a(Lio/branch/search/e1;)Lio/branch/search/l;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-virtual {v1}, Lio/branch/search/e1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {v4}, Lio/branch/search/e1;->d(Lio/branch/search/e1;)Lio/branch/search/m0;

    move-result-object v4

    iget-object v4, v4, Lio/branch/search/m0;->f:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    iget-object p0, p0, Lio/branch/search/e1$a;->b:Lio/branch/search/e1;

    invoke-static {p0}, Lio/branch/search/e1;->d(Lio/branch/search/e1;)Lio/branch/search/m0;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lio/branch/search/f1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/m0;)Lio/branch/search/f1;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
