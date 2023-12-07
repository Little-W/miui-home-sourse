.class public final Lio/branch/search/k1$c;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/k1;->a(JJ)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Lio/branch/search/j4;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.local.appUsage.AppUsageReader$usageStats$1"
    f = "AppUsageReader.kt"
    l = {
        0x10
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/k1;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Lio/branch/search/k1;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/k1$c;->d:Lio/branch/search/k1;

    iput-wide p2, p0, Lio/branch/search/k1$c;->e:J

    iput-wide p4, p0, Lio/branch/search/k1$c;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/branch/search/k1$c;

    iget-object v2, p0, Lio/branch/search/k1$c;->d:Lio/branch/search/k1;

    iget-wide v3, p0, Lio/branch/search/k1$c;->e:J

    iget-wide v5, p0, Lio/branch/search/k1$c;->f:J

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lio/branch/search/k1$c;-><init>(Lio/branch/search/k1;JJLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/k1$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/k1$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/k1$c;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/k1$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/k1$c;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/branch/search/k1$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lio/branch/search/k1$c;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/k1$c;->a:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlin/sequences/SequenceScope;

    iget-object p1, p0, Lio/branch/search/k1$c;->d:Lio/branch/search/k1;

    invoke-static {p1}, Lio/branch/search/k1;->b(Lio/branch/search/k1;)Lio/branch/search/m1;

    move-result-object v4

    iget-wide v6, p0, Lio/branch/search/k1$c;->e:J

    iget-wide v8, p0, Lio/branch/search/k1$c;->f:J

    const/4 v5, 0x4

    invoke-virtual/range {v4 .. v9}, Lio/branch/search/m1;->a(IJJ)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStats;

    new-instance v10, Lio/branch/search/j4;

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lio/branch/search/j4;-><init>(Ljava/lang/String;JJ)V

    iput-object v3, p0, Lio/branch/search/k1$c;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/k1$c;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/k1$c;->c:I

    invoke-virtual {v3, v10, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
