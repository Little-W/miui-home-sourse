.class public final Lio/branch/search/r0$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/r0;-><init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V
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
        "Lio/branch/search/s0<",
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

.field public final synthetic b:Lio/branch/search/r0;


# direct methods
.method public constructor <init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lio/branch/search/r0$a;

    iget-object v0, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-direct {p1, v0, p2}, Lio/branch/search/r0$a;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/r0$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/r0$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/r0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/r0$a;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    sget-object p1, Lio/branch/search/s0;->Companion:Lio/branch/search/s0$a;

    iget-object v0, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v0}, Lio/branch/search/r0;->c(Lio/branch/search/r0;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v1}, Lio/branch/search/r0;->d(Lio/branch/search/r0;)Lio/branch/search/c0;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v1}, Lio/branch/search/r0;->d(Lio/branch/search/r0;)Lio/branch/search/c0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/branch/search/s0$a;->a(Ljava/lang/Object;Lio/branch/search/c0;)Lio/branch/search/s0;

    move-result-object p1
    :try_end_0
    .catch Lio/branch/search/BranchLocalError$InvalidDB; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v0}, Lio/branch/search/r0;->a(Lio/branch/search/r0;)Lio/branch/search/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIRewrite.localSearch."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-virtual {v2}, Lio/branch/search/r0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lio/branch/search/s0;->Companion:Lio/branch/search/s0$a;

    new-instance v0, Lio/branch/search/BranchLocalError$Unknown;

    invoke-direct {v0}, Lio/branch/search/BranchLocalError$Unknown;-><init>()V

    iget-object v1, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v1}, Lio/branch/search/r0;->d(Lio/branch/search/r0;)Lio/branch/search/c0;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/branch/search/s0$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/c0;)Lio/branch/search/s0;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v0}, Lio/branch/search/r0;->a(Lio/branch/search/r0;)Lio/branch/search/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LIRewrite.localSearch."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-virtual {v2}, Lio/branch/search/r0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError$InvalidDB;->getInternalMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/s0;->Companion:Lio/branch/search/s0$a;

    iget-object v1, p0, Lio/branch/search/r0$a;->b:Lio/branch/search/r0;

    invoke-static {v1}, Lio/branch/search/r0;->d(Lio/branch/search/r0;)Lio/branch/search/c0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/branch/search/s0$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/c0;)Lio/branch/search/s0;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
