.class public final Lio/branch/search/p0$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/p0$a;->a(Ljava/lang/String;Lio/branch/search/e1;Lio/branch/search/e5;Lio/branch/search/l;Ljava/lang/String;)V
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$Companion$getAsync$1"
    f = "KNetworkInterface.kt"
    l = {
        0x6e,
        0x71
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/e5;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lio/branch/search/l;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lio/branch/search/e1;


# direct methods
.method public constructor <init>(Lio/branch/search/e5;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/p0$a$a;->d:Lio/branch/search/e5;

    iput-object p2, p0, Lio/branch/search/p0$a$a;->e:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/p0$a$a;->f:Lio/branch/search/l;

    iput-object p4, p0, Lio/branch/search/p0$a$a;->g:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/p0$a$a;->h:Lio/branch/search/e1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lio/branch/search/p0$a$a;

    iget-object v1, p0, Lio/branch/search/p0$a$a;->d:Lio/branch/search/e5;

    iget-object v2, p0, Lio/branch/search/p0$a$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/p0$a$a;->f:Lio/branch/search/l;

    iget-object v4, p0, Lio/branch/search/p0$a$a;->g:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/p0$a$a;->h:Lio/branch/search/e1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/p0$a$a;-><init>(Lio/branch/search/e5;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/p0$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/p0$a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/p0$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/p0$a$a;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lio/branch/search/p0$a$a;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/branch/search/p0$a$a;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/p0;->a()Ljava/util/EnumMap;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/p0$a$a;->d:Lio/branch/search/e5;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/c1;

    if-nez p1, :cond_3

    new-instance p1, Lio/branch/search/c1;

    iget-object v1, p0, Lio/branch/search/p0$a$a;->d:Lio/branch/search/e5;

    invoke-direct {p1, v1}, Lio/branch/search/c1;-><init>(Lio/branch/search/e5;)V

    :cond_3
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v4, p0, Lio/branch/search/p0$a$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/p0$a$a;->f:Lio/branch/search/l;

    iget-object v6, p0, Lio/branch/search/p0$a$a;->g:Ljava/lang/String;

    iput-object v1, p0, Lio/branch/search/p0$a$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/p0$a$a;->b:Ljava/lang/Object;

    iput v3, p0, Lio/branch/search/p0$a$a;->c:I

    invoke-virtual {p1, v4, v5, v6, p0}, Lio/branch/search/c1;->a(Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, v1

    :goto_0
    check-cast p1, Lio/branch/search/s4;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lio/branch/search/p0$a$a;->h:Lio/branch/search/e1;

    if-eqz p1, :cond_5

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/branch/search/p0$a$a$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lio/branch/search/p0$a$a$a;-><init>(Lio/branch/search/p0$a$a;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v4, p0, Lio/branch/search/p0$a$a;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/branch/search/p0$a$a;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/p0$a$a;->c:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
