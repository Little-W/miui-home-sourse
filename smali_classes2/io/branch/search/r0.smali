.class public final Lio/branch/search/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/r0$b;
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
.field public static final Companion:Lio/branch/search/r0$b;


# instance fields
.field public final a:J

.field public final b:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lio/branch/search/s0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lio/branch/search/l;

.field public final d:Lkotlinx/coroutines/CoroutineScope;

.field public final e:Ljava/lang/String;

.field public final f:Lio/branch/search/c0;

.field public final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/branch/search/c0;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/r0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/r0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/r0;->Companion:Lio/branch/search/r0$b;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lio/branch/search/c0;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/l;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lio/branch/search/c0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/branch/search/c0;",
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

    iput-object p1, p0, Lio/branch/search/r0;->c:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/r0;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lio/branch/search/r0;->e:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/r0;->f:Lio/branch/search/c0;

    iput-object p5, p0, Lio/branch/search/r0;->g:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lio/branch/search/r0;->a:J

    invoke-static {}, Lio/branch/search/p4;->c()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lio/branch/search/r0$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lio/branch/search/r0$a;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/r0;->b:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/r0;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/r0;->c:Lio/branch/search/l;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/r0;JZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/r0;->a(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/branch/search/r0;JZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/r0;->a(JZ)V

    return-void
.end method

.method public static final synthetic b(Lio/branch/search/r0;)Lkotlinx/coroutines/Deferred;
    .locals 0

    iget-object p0, p0, Lio/branch/search/r0;->b:Lkotlinx/coroutines/Deferred;

    return-object p0
.end method

.method public static final synthetic c(Lio/branch/search/r0;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lio/branch/search/r0;->g:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic d(Lio/branch/search/r0;)Lio/branch/search/c0;
    .locals 0

    iget-object p0, p0, Lio/branch/search/r0;->f:Lio/branch/search/c0;

    return-object p0
.end method


# virtual methods
.method public final a(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s0<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/branch/search/r0$d;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/branch/search/r0$d;

    iget v1, v0, Lio/branch/search/r0$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/r0$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/r0$d;

    invoke-direct {v0, p0, p4}, Lio/branch/search/r0$d;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/branch/search/r0$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/r0$d;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-wide p1, v0, Lio/branch/search/r0$d;->e:J

    iget-object p3, v0, Lio/branch/search/r0$d;->d:Ljava/lang/Object;

    check-cast p3, Lio/branch/search/r0;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lio/branch/search/r0;->a:J

    sub-long/2addr v5, v7

    if-eqz p3, :cond_4

    sub-long p3, p1, v5

    goto :goto_1

    :cond_4
    move-wide p3, p1

    :goto_1
    :try_start_1
    iget-object v2, p0, Lio/branch/search/r0;->b:Lkotlinx/coroutines/Deferred;

    invoke-interface {v2}, Lkotlinx/coroutines/Deferred;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p3, p0, Lio/branch/search/r0;->b:Lkotlinx/coroutines/Deferred;

    iput-object p0, v0, Lio/branch/search/r0$d;->d:Ljava/lang/Object;

    iput-wide p1, v0, Lio/branch/search/r0$d;->e:J

    iput v4, v0, Lio/branch/search/r0$d;->b:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    move-object p3, p0

    goto :goto_2

    :cond_6
    const-wide/16 v7, 0x0

    cmp-long v2, p3, v7

    if-gtz v2, :cond_7

    const-string p3, "LIRewrite"

    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/branch/search/r0;->e:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - already over budget by "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, p1

    invoke-virtual {p4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lio/branch/search/s0;->Companion:Lio/branch/search/s0$a;

    new-instance p4, Lio/branch/search/BranchLocalError$Unknown;

    invoke-direct {p4}, Lio/branch/search/BranchLocalError$Unknown;-><init>()V

    iget-object v0, p0, Lio/branch/search/r0;->f:Lio/branch/search/c0;

    invoke-virtual {p3, p4, v0}, Lio/branch/search/s0$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/c0;)Lio/branch/search/s0;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v2, Lio/branch/search/r0$e;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lio/branch/search/r0$e;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lio/branch/search/r0$d;->d:Ljava/lang/Object;

    iput-wide p1, v0, Lio/branch/search/r0$d;->e:J

    iput v3, v0, Lio/branch/search/r0$d;->b:I

    invoke-static {p3, p4, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p4, v1, :cond_5

    return-object v1

    :goto_2
    :try_start_3
    check-cast p4, Lio/branch/search/s0;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    move-object p1, p4

    goto :goto_3

    :catch_0
    move-object p3, p0

    :catch_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Lio/branch/search/r0;->e:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - withTimeout inaccuracy "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p3, Lio/branch/search/r0;->a:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, p1

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LIRewrite"

    invoke-static {p2, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lio/branch/search/s0;->Companion:Lio/branch/search/s0$a;

    new-instance p2, Lio/branch/search/BranchLocalError$WasCancelled;

    invoke-direct {p2}, Lio/branch/search/BranchLocalError$WasCancelled;-><init>()V

    iget-object p3, p3, Lio/branch/search/r0;->f:Lio/branch/search/c0;

    invoke-virtual {p1, p2, p3}, Lio/branch/search/s0$a;->a(Lio/branch/search/BranchLocalError;Lio/branch/search/c0;)Lio/branch/search/s0;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/branch/search/s0<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/branch/search/r0$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/branch/search/r0$c;

    iget v1, v0, Lio/branch/search/r0$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/branch/search/r0$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/r0$c;

    invoke-direct {v0, p0, p1}, Lio/branch/search/r0$c;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lio/branch/search/r0$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/branch/search/r0$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lio/branch/search/r0$c;->d:Ljava/lang/Object;

    check-cast v0, Lio/branch/search/r0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/r0;->b:Lkotlinx/coroutines/Deferred;

    iput-object p0, v0, Lio/branch/search/r0$c;->d:Ljava/lang/Object;

    iput v3, v0, Lio/branch/search/r0$c;->b:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Lio/branch/search/s0;

    invoke-virtual {p1}, Lio/branch/search/s0;->a()Lio/branch/search/s4;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/s4;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/branch/search/r0;->a(Z)V

    return-object p1
.end method

.method public final a()V
    .locals 6

    iget-object v0, p0, Lio/branch/search/r0;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lio/branch/search/r0$f;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lio/branch/search/r0$f;-><init>(Lio/branch/search/r0;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(JZ)V
    .locals 9

    sget-object v0, Lio/branch/search/r0;->Companion:Lio/branch/search/r0$b;

    iget-wide v1, p0, Lio/branch/search/r0;->a:J

    iget-object v6, p0, Lio/branch/search/r0;->e:Ljava/lang/String;

    iget-object v7, p0, Lio/branch/search/r0;->f:Lio/branch/search/c0;

    iget-object v8, p0, Lio/branch/search/r0;->c:Lio/branch/search/l;

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lio/branch/search/r0$b;->a(JJZLjava/lang/String;Lio/branch/search/c0;Lio/branch/search/l;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lio/branch/search/r0;->a(JZ)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/r0;->e:Ljava/lang/String;

    return-object v0
.end method
