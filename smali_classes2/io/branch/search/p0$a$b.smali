.class public final Lio/branch/search/p0$a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/p0$a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/e5;Lio/branch/search/l;)Lorg/json/JSONObject;
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
        "Lorg/json/JSONObject;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$Companion$post$1"
    f = "KNetworkInterface.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/e5;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/json/JSONObject;

.field public final synthetic e:Lio/branch/search/l;


# direct methods
.method public constructor <init>(Lio/branch/search/e5;Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/l;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/p0$a$b;->b:Lio/branch/search/e5;

    iput-object p2, p0, Lio/branch/search/p0$a$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/p0$a$b;->d:Lorg/json/JSONObject;

    iput-object p4, p0, Lio/branch/search/p0$a$b;->e:Lio/branch/search/l;

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

    new-instance p1, Lio/branch/search/p0$a$b;

    iget-object v1, p0, Lio/branch/search/p0$a$b;->b:Lio/branch/search/e5;

    iget-object v2, p0, Lio/branch/search/p0$a$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/p0$a$b;->d:Lorg/json/JSONObject;

    iget-object v4, p0, Lio/branch/search/p0$a$b;->e:Lio/branch/search/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/branch/search/p0$a$b;-><init>(Lio/branch/search/e5;Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/l;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/p0$a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/branch/search/p0$a$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/branch/search/p0$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/p0$a$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/p0;->a()Ljava/util/EnumMap;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/p0$a$b;->b:Lio/branch/search/e5;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/c1;

    if-nez p1, :cond_2

    new-instance p1, Lio/branch/search/c1;

    iget-object v1, p0, Lio/branch/search/p0$a$b;->b:Lio/branch/search/e5;

    invoke-direct {p1, v1}, Lio/branch/search/c1;-><init>(Lio/branch/search/e5;)V

    :cond_2
    iget-object v1, p0, Lio/branch/search/p0$a$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/p0$a$b;->d:Lorg/json/JSONObject;

    iget-object v4, p0, Lio/branch/search/p0$a$b;->e:Lio/branch/search/l;

    iput v2, p0, Lio/branch/search/p0$a$b;->a:I

    invoke-virtual {p1, v1, v3, v4, p0}, Lio/branch/search/c1;->a(Ljava/lang/String;Lorg/json/JSONObject;Lio/branch/search/l;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lio/branch/search/s4;

    invoke-static {p1}, Lio/branch/search/d1;->a(Lio/branch/search/s4;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
