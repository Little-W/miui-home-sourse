.class public final Lio/branch/search/c1$a$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/c1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/q1;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)V
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$Companion$postAsync$1"
    f = "KNetworkInterface.kt"
    l = {
        0x5a,
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/s5;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lio/branch/search/l;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lio/branch/search/q1;


# direct methods
.method public constructor <init>(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lio/branch/search/q1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/c1$a$c;->d:Lio/branch/search/s5;

    iput-object p2, p0, Lio/branch/search/c1$a$c;->e:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/c1$a$c;->f:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/c1$a$c;->g:Lio/branch/search/l;

    iput-object p5, p0, Lio/branch/search/c1$a$c;->h:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/c1$a$c;->i:Lio/branch/search/q1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lio/branch/search/c1$a$c;

    iget-object v1, p0, Lio/branch/search/c1$a$c;->d:Lio/branch/search/s5;

    iget-object v2, p0, Lio/branch/search/c1$a$c;->e:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/c1$a$c;->f:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/c1$a$c;->g:Lio/branch/search/l;

    iget-object v5, p0, Lio/branch/search/c1$a$c;->h:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/c1$a$c;->i:Lio/branch/search/q1;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lio/branch/search/c1$a$c;-><init>(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lio/branch/search/q1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/c1$a$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/c1$a$c;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/c1$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/c1$a$c;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lio/branch/search/c1$a$c;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/branch/search/c1$a$c;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/c1;->a()Ljava/util/EnumMap;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/c1$a$c;->d:Lio/branch/search/s5;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/o1;

    if-nez p1, :cond_3

    new-instance p1, Lio/branch/search/o1;

    iget-object v1, p0, Lio/branch/search/c1$a$c;->d:Lio/branch/search/s5;

    invoke-direct {p1, v1}, Lio/branch/search/o1;-><init>(Lio/branch/search/s5;)V

    :cond_3
    move-object v4, p1

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, p0, Lio/branch/search/c1$a$c;->e:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/c1$a$c;->f:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/c1$a$c;->g:Lio/branch/search/l;

    iget-object v8, p0, Lio/branch/search/c1$a$c;->h:Ljava/lang/String;

    iput-object v1, p0, Lio/branch/search/c1$a$c;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/c1$a$c;->b:Ljava/lang/Object;

    iput v3, p0, Lio/branch/search/c1$a$c;->c:I

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lio/branch/search/o1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v3, v1

    :goto_0
    check-cast p1, Lio/branch/search/e5;

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lio/branch/search/c1$a$c;->i:Lio/branch/search/q1;

    if-eqz p1, :cond_5

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lio/branch/search/c1$a$c$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lio/branch/search/c1$a$c$a;-><init>(Lio/branch/search/c1$a$c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object v4, p0, Lio/branch/search/c1$a$c;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/branch/search/c1$a$c;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/c1$a$c;->c:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
