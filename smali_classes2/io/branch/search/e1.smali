.class public final Lio/branch/search/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/e1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/e1$b;


# instance fields
.field public final a:J

.field public final b:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lio/branch/search/f1<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lio/branch/search/l;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Ljava/lang/String;

.field public final f:Lio/branch/search/m0;

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/branch/search/m0;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/e1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/e1$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/e1;->Companion:Lio/branch/search/e1$b;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/m0;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lio/branch/search/m0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/branch/search/m0;",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toRun"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/e1;->c:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/e1;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lio/branch/search/e1;->e:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/e1;->f:Lio/branch/search/m0;

    iput-object p5, p0, Lio/branch/search/e1;->g:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lio/branch/search/e1;->a:J

    invoke-static {}, Lio/branch/search/b5;->c()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/branch/search/e1$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lio/branch/search/e1$a;-><init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/e1;->b:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/e1;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/e1;->c:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/e1;JZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/e1;->a(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/e1;JZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/e1;->a(JZ)V

    return-void
.end method

.method public static final synthetic b(Lio/branch/search/e1;)Lkotlinx/coroutines/Deferred;
    .locals 0

    iget-object p0, p0, Lio/branch/search/e1;->b:Lkotlinx/coroutines/Deferred;

    return-object p0
.end method

.method public static final synthetic c(Lio/branch/search/e1;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lio/branch/search/e1;->g:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic d(Lio/branch/search/e1;)Lio/branch/search/m0;
    .locals 0

    iget-object p0, p0, Lio/branch/search/e1;->f:Lio/branch/search/m0;

    return-object p0
.end method


# virtual methods
.method public final a(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/f1<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    instance-of v4, v3, Lio/branch/search/e1$d;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lio/branch/search/e1$d;

    iget v5, v4, Lio/branch/search/e1$d;->b:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lio/branch/search/e1$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v4, Lio/branch/search/e1$d;

    invoke-direct {v4, v0, v3}, Lio/branch/search/e1$d;-><init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lio/branch/search/e1$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lio/branch/search/e1$d;->b:I

    const/16 v7, 0x1000

    const/4 v8, 0x0

    const-string v9, "ms"

    const-string v10, "LIRewrite"

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v13, :cond_2

    if-ne v6, v11, :cond_1

    iget-wide v0, v4, Lio/branch/search/e1$d;->e:J

    iget-object v2, v4, Lio/branch/search/e1$d;->d:Ljava/lang/Object;

    check-cast v2, Lio/branch/search/e1;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, v4, Lio/branch/search/e1$d;->e:J

    iget-object v2, v4, Lio/branch/search/e1$d;->d:Ljava/lang/Object;

    check-cast v2, Lio/branch/search/e1;

    :goto_1
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-object v0, v2

    move-wide/from16 v1, v18

    goto/16 :goto_7

    :catch_0
    const/4 v14, 0x0

    move-wide/from16 v18, v0

    move-object v0, v2

    move-wide/from16 v1, v18

    goto/16 :goto_8

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-wide v11, v0, Lio/branch/search/e1;->a:J

    sub-long/2addr v14, v11

    if-eqz p3, :cond_4

    sub-long v11, v1, v14

    goto :goto_2

    :cond_4
    move-wide v11, v1

    :goto_2
    :try_start_1
    iget-object v6, v0, Lio/branch/search/e1;->b:Lkotlinx/coroutines/Deferred;

    invoke-interface {v6}, Lkotlinx/coroutines/Deferred;->isCompleted()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v3, v0, Lio/branch/search/e1;->b:Lkotlinx/coroutines/Deferred;

    iput-object v0, v4, Lio/branch/search/e1$d;->d:Ljava/lang/Object;

    iput-wide v1, v4, Lio/branch/search/e1$d;->e:J

    iput v13, v4, Lio/branch/search/e1$d;->b:I

    invoke-interface {v3, v4}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_5

    return-object v5

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_6
    const-wide/16 v16, 0x0

    cmp-long v6, v11, v16

    if-gtz v6, :cond_b

    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/g0;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lio/branch/search/e1;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - already over budget by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v14, v1

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_9

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move v3, v8

    goto :goto_5

    :cond_9
    :goto_4
    move v3, v13

    :goto_5
    if-nez v3, :cond_a

    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    sget-object v3, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    new-instance v4, Lio/branch/search/BranchLocalError$Unknown;

    invoke-direct {v4}, Lio/branch/search/BranchLocalError$Unknown;-><init>()V

    iget-object v5, v0, Lio/branch/search/e1;->f:Lio/branch/search/m0;

    invoke-virtual {v3, v4, v5}, Lio/branch/search/f1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/m0;)Lio/branch/search/f1;

    move-result-object v0

    goto/16 :goto_c

    :cond_b
    new-instance v6, Lio/branch/search/e1$e;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x0

    :try_start_2
    invoke-direct {v6, v0, v14}, Lio/branch/search/e1$e;-><init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v4, Lio/branch/search/e1$d;->d:Ljava/lang/Object;

    iput-wide v1, v4, Lio/branch/search/e1$d;->e:J

    const/4 v3, 0x2

    iput v3, v4, Lio/branch/search/e1$d;->b:I

    invoke-static {v11, v12, v6, v4}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_c

    return-object v5

    :cond_c
    :goto_7
    check-cast v3, Lio/branch/search/f1;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v3

    goto :goto_c

    :catch_1
    const/4 v14, 0x0

    :catch_2
    :goto_8
    invoke-static {}, Lio/branch/search/e0;->a()Lio/branch/search/g0;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/g0;->a()Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lio/branch/search/e1;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - withTimeout inaccuracy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v11, v0, Lio/branch/search/e1;->a:J

    sub-long/2addr v4, v11

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_d
    move-object v12, v14

    :goto_9
    if-eqz v12, :cond_f

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_a

    :cond_e
    move v13, v8

    :cond_f
    :goto_a
    if-nez v13, :cond_10

    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    sget-object v1, Lio/branch/search/f1;->Companion:Lio/branch/search/f1$a;

    new-instance v2, Lio/branch/search/BranchLocalError$WasCancelled;

    invoke-direct {v2}, Lio/branch/search/BranchLocalError$WasCancelled;-><init>()V

    iget-object v0, v0, Lio/branch/search/e1;->f:Lio/branch/search/m0;

    invoke-virtual {v1, v2, v0}, Lio/branch/search/f1$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/m0;)Lio/branch/search/f1;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/f1<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/branch/search/e1$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/branch/search/e1$c;

    iget v1, v0, Lio/branch/search/e1$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/e1$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/e1$c;

    invoke-direct {v0, p0, p1}, Lio/branch/search/e1$c;-><init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/branch/search/e1$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/e1$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lio/branch/search/e1$c;->d:Ljava/lang/Object;

    check-cast p0, Lio/branch/search/e1;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/e1;->b:Lkotlinx/coroutines/Deferred;

    iput-object p0, v0, Lio/branch/search/e1$c;->d:Ljava/lang/Object;

    iput v3, v0, Lio/branch/search/e1$c;->b:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lio/branch/search/f1;

    invoke-virtual {p1}, Lio/branch/search/f1;->a()Lio/branch/search/e5;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/e5;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/branch/search/e1;->a(Z)V

    return-object p1
.end method

.method public final a()V
    .locals 6

    iget-object v0, p0, Lio/branch/search/e1;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lio/branch/search/e1$f;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lio/branch/search/e1$f;-><init>(Lio/branch/search/e1;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(JZ)V
    .locals 9

    sget-object v0, Lio/branch/search/e1;->Companion:Lio/branch/search/e1$b;

    iget-wide v1, p0, Lio/branch/search/e1;->a:J

    iget-object v6, p0, Lio/branch/search/e1;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/e1;->f:Lio/branch/search/m0;

    iget-object v8, p0, Lio/branch/search/e1;->c:Lio/branch/search/l;

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lio/branch/search/e1$b;->a(JJZLjava/lang/String;Lio/branch/search/m0;Lio/branch/search/l;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lio/branch/search/e1;->a(JZ)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/branch/search/e1;->e:Ljava/lang/String;

    return-object p0
.end method
