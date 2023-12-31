.class public final Lio/branch/search/k1$b;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/k1;->a(JJJ)Lkotlin/sequences/Sequence;
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
        "Lio/branch/search/g4;",
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
    c = "io.branch.search.internal.local.appUsage.AppUsageReader$batchedUsageEvents$1"
    f = "AppUsageReader.kt"
    l = {
        0x52
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:J

.field public c:I

.field public final synthetic d:Lio/branch/search/k1;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Lio/branch/search/k1;JJJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/k1$b;->d:Lio/branch/search/k1;

    iput-wide p2, p0, Lio/branch/search/k1$b;->e:J

    iput-wide p4, p0, Lio/branch/search/k1$b;->f:J

    iput-wide p6, p0, Lio/branch/search/k1$b;->g:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance v0, Lio/branch/search/k1$b;

    iget-object v2, p0, Lio/branch/search/k1$b;->d:Lio/branch/search/k1;

    iget-wide v3, p0, Lio/branch/search/k1$b;->e:J

    iget-wide v5, p0, Lio/branch/search/k1$b;->f:J

    iget-wide v7, p0, Lio/branch/search/k1$b;->g:J

    move-object v1, v0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lio/branch/search/k1$b;-><init>(Lio/branch/search/k1;JJJLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/branch/search/k1$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/k1$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/k1$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/k1$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/k1$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v4, v0, Lio/branch/search/k1$b;->b:J

    iget-object v2, v0, Lio/branch/search/k1$b;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lio/branch/search/k1$b;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/sequences/SequenceScope;

    iget-wide v4, v0, Lio/branch/search/k1$b;->e:J

    :goto_0
    iget-wide v6, v0, Lio/branch/search/k1$b;->f:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    iget-wide v8, v0, Lio/branch/search/k1$b;->g:J

    add-long/2addr v8, v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iget-object v8, v0, Lio/branch/search/k1$b;->d:Lio/branch/search/k1;

    invoke-static {v8}, Lio/branch/search/k1;->b(Lio/branch/search/k1;)Lio/branch/search/m1;

    move-result-object v8

    invoke-virtual {v8, v4, v5, v6, v7}, Lio/branch/search/m1;->a(JJ)Lio/branch/search/l1;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v0, Lio/branch/search/k1$b;->d:Lio/branch/search/k1;

    invoke-static {v5}, Lio/branch/search/k1;->a(Lio/branch/search/k1;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5, v4, v8}, Lio/branch/search/k1;->a(Lio/branch/search/k1;Lio/branch/search/l1;Ljava/util/Set;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageEvents$Event;

    new-instance v15, Lio/branch/search/g4;

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v11

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v9

    int-to-long v13, v9

    invoke-virtual {v8}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v15

    move-object v3, v15

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lio/branch/search/g4;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, v0, Lio/branch/search/k1$b;->a:Ljava/lang/Object;

    iput-wide v6, v0, Lio/branch/search/k1$b;->b:J

    const/4 v3, 0x1

    iput v3, v0, Lio/branch/search/k1$b;->c:I

    invoke-virtual {v2, v5, v0}, Lkotlin/sequences/SequenceScope;->yieldAll(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-wide v4, v6

    goto :goto_0

    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
