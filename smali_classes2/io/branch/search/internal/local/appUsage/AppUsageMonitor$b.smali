.class public final Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->onMoveToForeground()V
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
    c = "io.branch.search.internal.local.appUsage.AppUsageMonitor$onMoveToForeground$1"
    f = "AppUsageMonitor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

.field public final synthetic c:Lio/branch/search/internal/interfaces/LocalInterface;

.field public final synthetic d:Lio/branch/search/k1;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/k1;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    iput-object p2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/internal/interfaces/LocalInterface;

    iput-object p3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:Lio/branch/search/k1;

    iput-wide p4, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    iput-wide p6, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->f:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    iget-object v1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    iget-object v2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:Lio/branch/search/k1;

    iget-wide v4, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    iget-wide v6, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->f:J

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/k1;JJLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->e()Lio/branch/search/s3;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:Lio/branch/search/k1;

    iget-wide v1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    iget-wide v3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->f:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lio/branch/search/k1;->a(Lio/branch/search/k1;JJJILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/search/s3;->a(Lkotlin/sequences/Sequence;)V

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:Lio/branch/search/k1;

    iget-wide v1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    iget-wide v3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->f:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/branch/search/k1;->a(JJ)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/search/s3;->b(Lkotlin/sequences/Sequence;)V

    iget-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->b:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    iget-wide v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->f:J

    invoke-static {p1, v0, v1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
