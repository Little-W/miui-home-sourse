.class public final Lio/branch/search/internal/services/PingService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/services/PingService$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/services/PingService$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/internal/services/PingService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/services/PingService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/services/PingService;->Companion:Lio/branch/search/internal/services/PingService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 13

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v2

    const/4 v6, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v6}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v6

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "PING_PARAMS"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "params?.extras?.getStrin\u2026G_PARAMS) ?: return false"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v8

    new-instance v10, Lio/branch/search/internal/services/PingService$b;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/branch/search/internal/services/PingService$b;-><init>(Lio/branch/search/internal/services/PingService;Lio/branch/search/l;Ljava/lang/String;Landroid/app/job/JobParameters;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return v6

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
