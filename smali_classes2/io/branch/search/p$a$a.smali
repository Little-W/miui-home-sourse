.class public final Lio/branch/search/p$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/p$a;->a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$c;Lio/branch/search/l;Lio/branch/search/d5;)V
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
    c = "io.branch.search.KAnalyticsUtil$Companion$addDiagnostics$1"
    f = "KAnalyticsUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/l;

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic d:Lio/branch/search/d5;

.field public final synthetic e:Lio/branch/search/BranchAnalytics$c;


# direct methods
.method public constructor <init>(Lio/branch/search/l;Lorg/json/JSONObject;Lio/branch/search/d5;Lio/branch/search/BranchAnalytics$c;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iput-object p2, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/branch/search/p$a$a;->d:Lio/branch/search/d5;

    iput-object p4, p0, Lio/branch/search/p$a$a;->e:Lio/branch/search/BranchAnalytics$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lio/branch/search/p$a$a;

    iget-object v1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object v2, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/branch/search/p$a$a;->d:Lio/branch/search/d5;

    iget-object v4, p0, Lio/branch/search/p$a$a;->e:Lio/branch/search/BranchAnalytics$c;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/branch/search/p$a$a;-><init>(Lio/branch/search/l;Lorg/json/JSONObject;Lio/branch/search/d5;Lio/branch/search/BranchAnalytics$c;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/p$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/p$a$a;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/p$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/branch/search/p$a$a;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object v1, v1, Lio/branch/search/l;->k:Lio/branch/search/e;

    invoke-virtual {v1, p1}, Lio/branch/search/e;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object v2, v1, Lio/branch/search/l;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v1}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object v3, v3, Lio/branch/search/l;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v2, v0, v1, v3}, Lio/branch/search/BranchConfiguration;->a(Lorg/json/JSONObject;Landroid/content/Context;Lio/branch/search/KBranchRemoteConfiguration;)V

    iget-object v1, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    const-string v2, "config_info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    const-string v1, "device_info"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lio/branch/search/p;->Companion:Lio/branch/search/p$a;

    iget-object v0, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    const-string v1, "KAnalyticsUtil.addDiagnostics"

    const-string v2, "failed to add device info/branch configuration to analytics payload."

    invoke-virtual {p1, v0, v1, v2}, Lio/branch/search/p$a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/branch/search/v1;->a(Lorg/json/JSONObject;Z)V

    iget-object p1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object v0, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lio/branch/search/a5;->a(Lio/branch/search/l;Lorg/json/JSONObject;)V

    invoke-static {}, Lio/branch/search/v0;->b()Lio/branch/search/v0;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lio/branch/search/v0;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object p1, p1, Lio/branch/search/l;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    const-string v0, "branchSearch.localInterface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/branch/search/internal/interfaces/LocalInterface;->c()Lio/branch/search/h2;

    move-result-object p1

    iget-object v0, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lio/branch/search/h2;->a(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lio/branch/search/p$a$a;->b:Lio/branch/search/l;

    iget-object p1, p1, Lio/branch/search/l;->g:Lio/branch/search/n1;

    iget-object v0, p0, Lio/branch/search/p$a$a;->c:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/p$a$a;->d:Lio/branch/search/d5;

    invoke-virtual {p1, v0, v1}, Lio/branch/search/n1;->a(Lorg/json/JSONObject;Lio/branch/search/d5;)V

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lio/branch/search/p$a$a$a;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Lio/branch/search/p$a$a$a;-><init>(Lio/branch/search/p$a$a;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
