.class public final Lio/branch/search/internal/services/ScheduledQueryService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const-string v0, "SQLUpdaterService"

    iput-object v0, p0, Lio/branch/search/internal/services/ScheduledQueryService;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 8

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v1

    :cond_0
    const-string v2, "ScheduledQueryService.onJobStart"

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lio/branch/search/p4;->c()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lio/branch/search/internal/services/ScheduledQueryService$a;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v0, p1, v4}, Lio/branch/search/internal/services/ScheduledQueryService$a;-><init>(Lio/branch/search/internal/services/ScheduledQueryService;Lio/branch/search/l;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/internal/services/ScheduledQueryService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScheduledQueryService job cancelled before completion, params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
