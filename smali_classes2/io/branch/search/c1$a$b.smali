.class public final Lio/branch/search/c1$a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/c1$a;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/s5;Lio/branch/search/l;Ljava/lang/String;)Lorg/json/JSONObject;
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
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lio/branch/search/s5;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lio/branch/search/l;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/c1$a$b;->b:Lio/branch/search/s5;

    iput-object p2, p0, Lio/branch/search/c1$a$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/c1$a$b;->d:Ljava/lang/String;

    iput-object p4, p0, Lio/branch/search/c1$a$b;->e:Lio/branch/search/l;

    iput-object p5, p0, Lio/branch/search/c1$a$b;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lio/branch/search/c1$a$b;

    iget-object v1, p0, Lio/branch/search/c1$a$b;->b:Lio/branch/search/s5;

    iget-object v2, p0, Lio/branch/search/c1$a$b;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/branch/search/c1$a$b;->d:Ljava/lang/String;

    iget-object v4, p0, Lio/branch/search/c1$a$b;->e:Lio/branch/search/l;

    iget-object v5, p0, Lio/branch/search/c1$a$b;->f:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lio/branch/search/c1$a$b;-><init>(Lio/branch/search/s5;Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/c1$a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lio/branch/search/c1$a$b;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lio/branch/search/c1$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/branch/search/c1$a$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {}, Lio/branch/search/c1;->a()Ljava/util/EnumMap;

    move-result-object p1

    iget-object v1, p0, Lio/branch/search/c1$a$b;->b:Lio/branch/search/s5;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/o1;

    if-nez p1, :cond_2

    new-instance p1, Lio/branch/search/o1;

    iget-object v1, p0, Lio/branch/search/c1$a$b;->b:Lio/branch/search/s5;

    invoke-direct {p1, v1}, Lio/branch/search/o1;-><init>(Lio/branch/search/s5;)V

    :cond_2
    move-object v3, p1

    iget-object v4, p0, Lio/branch/search/c1$a$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/branch/search/c1$a$b;->d:Ljava/lang/String;

    iget-object v6, p0, Lio/branch/search/c1$a$b;->e:Lio/branch/search/l;

    iget-object v7, p0, Lio/branch/search/c1$a$b;->f:Ljava/lang/String;

    iput v2, p0, Lio/branch/search/c1$a$b;->a:I

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lio/branch/search/o1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/l;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lio/branch/search/e5;

    invoke-static {p1}, Lio/branch/search/p1;->a(Lio/branch/search/e5;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
