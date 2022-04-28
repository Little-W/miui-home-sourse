.class public final Lio/branch/search/o0$b$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/o0$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.branch.search.internal.interfaces.KCompositeInterfaceImpl$compositeSearchInner$1$2"
    f = "KCompositeInterface.kt"
    l = {
        0x69,
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/o0$b;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lio/branch/search/o0$b;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/o0$b$b;->c:Lio/branch/search/o0$b;

    iput-object p2, p0, Lio/branch/search/o0$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p3, p0, Lio/branch/search/o0$b$b;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/o0$b$b;

    iget-object v2, p0, Lio/branch/search/o0$b$b;->c:Lio/branch/search/o0$b;

    iget-object v3, p0, Lio/branch/search/o0$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-wide v4, p0, Lio/branch/search/o0$b$b;->e:J

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/branch/search/o0$b$b;-><init>(Lio/branch/search/o0$b;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/o0$b$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/o0$b$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/o0$b$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/o0$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/o0$b$b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lio/branch/search/o0$b$b;->a:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lio/branch/search/o0$b$b;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/o0$b$b;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iget-object p1, p0, Lio/branch/search/o0$b$b;->c:Lio/branch/search/o0$b;

    iget-object p1, p1, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {p1}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v5, Lio/branch/search/o0$b$b$b;

    invoke-direct {v5, p0, v3}, Lio/branch/search/o0$b$b$b;-><init>(Lio/branch/search/o0$b$b;Lkotlin/coroutines/Continuation;)V

    iput-object v1, p0, Lio/branch/search/o0$b$b;->a:Ljava/lang/Object;

    iput v4, p0, Lio/branch/search/o0$b$b;->b:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lio/branch/search/s4;

    goto :goto_1

    :cond_4
    new-instance p1, Lio/branch/search/s4$b;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p1, v4}, Lio/branch/search/s4$b;-><init>(Ljava/lang/Object;)V

    :goto_1
    instance-of v4, p1, Lio/branch/search/s4$b;

    if-eqz v4, :cond_6

    sget-object v5, Lio/branch/search/f1;->a:Lio/branch/search/f1;

    iget-object v4, p0, Lio/branch/search/o0$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Lio/branch/search/c0;

    iget-object v4, p0, Lio/branch/search/o0$b$b;->c:Lio/branch/search/o0$b;

    iget-object v4, v4, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v4}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v7

    iget-object v4, p0, Lio/branch/search/o0$b$b;->c:Lio/branch/search/o0$b;

    iget-object v4, v4, Lio/branch/search/o0$b;->h:Lio/branch/search/BranchCompositeSearchRequest;

    iget-object v8, v4, Lio/branch/search/BranchCompositeSearchRequest;->c:Lio/branch/search/c;

    const-string v4, "request.appStoreRequest"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/branch/search/s4$b;

    invoke-virtual {p1}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Lorg/json/JSONObject;

    iput-object v1, p0, Lio/branch/search/o0$b$b;->a:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/o0$b$b;->b:I

    move-object v10, p0

    invoke-virtual/range {v5 .. v10}, Lio/branch/search/f1;->a(Lio/branch/search/c0;Lio/branch/search/l;Lio/branch/search/c;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    check-cast p1, Lio/branch/search/s4;

    :goto_3
    move-object v4, v1

    goto :goto_4

    :cond_6
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_9

    new-instance v0, Lio/branch/search/s4$a;

    check-cast p1, Lio/branch/search/s4$a;

    invoke-virtual {p1}, Lio/branch/search/s4$a;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/branch/search/s4$a;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_3

    :goto_4
    sget-object v5, Lio/branch/search/r0;->Companion:Lio/branch/search/r0$b;

    iget-wide v6, p0, Lio/branch/search/o0$b$b;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Lio/branch/search/s4;->a()Z

    move-result v10

    iget-object v0, p0, Lio/branch/search/o0$b$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lio/branch/search/c0;

    iget-object v0, p0, Lio/branch/search/o0$b$b;->c:Lio/branch/search/o0$b;

    iget-object v0, v0, Lio/branch/search/o0$b;->f:Lio/branch/search/o0;

    invoke-static {v0}, Lio/branch/search/o0;->a(Lio/branch/search/o0;)Lio/branch/search/l;

    move-result-object v13

    const-string v11, "SOURCE_SQL_APP_STORE"

    invoke-virtual/range {v5 .. v13}, Lio/branch/search/r0$b;->a(JJZLjava/lang/String;Lio/branch/search/c0;Lio/branch/search/l;)V

    instance-of v0, p1, Lio/branch/search/s4$b;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lio/branch/search/s4$b;

    invoke-virtual {v0}, Lio/branch/search/s4$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/c0;

    invoke-virtual {v0}, Lio/branch/search/c0;->d()V

    goto :goto_5

    :cond_7
    instance-of v0, p1, Lio/branch/search/s4$a;

    if-eqz v0, :cond_8

    :goto_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    new-instance v7, Lio/branch/search/o0$b$b$a;

    invoke-direct {v7, p0, p1, v3}, Lio/branch/search/o0$b$b$a;-><init>(Lio/branch/search/o0$b$b;Lio/branch/search/s4;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
