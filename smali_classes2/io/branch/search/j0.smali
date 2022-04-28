.class public final Lio/branch/search/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/bumptech/glide/request/FutureTarget;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lio/branch/search/j0$c;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lio/branch/search/j0$c;

    iget v1, v0, Lio/branch/search/j0$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/j0$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/j0$c;

    invoke-direct {v0, p5}, Lio/branch/search/j0$c;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lio/branch/search/j0$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/j0$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p5, Lio/branch/search/j0$d;

    const/4 v2, 0x0

    invoke-direct {p5, p0, p3, p4, v2}, Lio/branch/search/j0$d;-><init>(Lcom/bumptech/glide/request/FutureTarget;JLkotlin/coroutines/Continuation;)V

    iput v3, v0, Lio/branch/search/j0$c;->b:I

    invoke-static {p1, p2, p5, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p5, Ljava/lang/Boolean;

    if-eqz p5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/bumptech/glide/request/FutureTarget;JJLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p1, 0x2710

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_1

    const-wide/16 p3, 0x1f4

    :cond_1
    move-wide v3, p3

    move-object v0, p0

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/branch/search/j0;->a(Lcom/bumptech/glide/request/FutureTarget;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lio/branch/search/k;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/k;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageUrls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/k0;->b()Lio/branch/search/k0;

    move-result-object v0

    const-string v1, "DrawableLoader.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lio/branch/search/j0$b;->a:Lio/branch/search/j0$b;

    invoke-static {v2, p2, p1}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;ILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance p1, Lio/branch/search/j0$a;

    const/4 p2, 0x0

    invoke-direct {p1, v1, v0, p0, p2}, Lio/branch/search/j0$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/branch/search/k0;Lio/branch/search/k;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x1

    invoke-static {p2, p1, p0, p2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
