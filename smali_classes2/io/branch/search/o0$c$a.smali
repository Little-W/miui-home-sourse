.class public final Lio/branch/search/o0$c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o0$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeZeroState$2$1"
    f = "KCompositeInterface.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/o0$c;

.field public final synthetic c:Lio/branch/search/s4;


# direct methods
.method public constructor <init>(Lio/branch/search/o0$c;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/o0$c$a;->b:Lio/branch/search/o0$c;

    iput-object p2, p0, Lio/branch/search/o0$c$a;->c:Lio/branch/search/s4;

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

    new-instance p1, Lio/branch/search/o0$c$a;

    iget-object v0, p0, Lio/branch/search/o0$c$a;->b:Lio/branch/search/o0$c;

    iget-object v1, p0, Lio/branch/search/o0$c$a;->c:Lio/branch/search/s4;

    invoke-direct {p1, v0, v1, p2}, Lio/branch/search/o0$c$a;-><init>(Lio/branch/search/o0$c;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/o0$c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/o0$c$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/o0$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/o0$c$a;->a:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/o0$c$a;->c:Lio/branch/search/s4;

    iget-object v0, p0, Lio/branch/search/o0$c$a;->b:Lio/branch/search/o0$c;

    iget-object v0, v0, Lio/branch/search/o0$c;->e:Lio/branch/search/ui/KBranchZeroStateEvents;

    instance-of v1, p1, Lio/branch/search/s4$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/ui/KBranchZeroStateResult;

    invoke-interface {v0, p1, v2}, Lio/branch/search/ui/KBranchZeroStateEvents;->onZeroStateComplete(Lio/branch/search/ui/KBranchZeroStateResult;Lio/branch/search/BranchError;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lio/branch/search/s4$a;

    if-eqz v1, :cond_1

    check-cast p1, Lio/branch/search/s4$a;

    invoke-virtual {p1}, Lio/branch/search/s4$a;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/BranchError;

    invoke-interface {v0, v2, p1}, Lio/branch/search/ui/KBranchZeroStateEvents;->onZeroStateComplete(Lio/branch/search/ui/KBranchZeroStateResult;Lio/branch/search/BranchError;)V

    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
