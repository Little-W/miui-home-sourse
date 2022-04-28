.class public final Lio/branch/search/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/o0$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/o0$a;


# instance fields
.field public final a:Lio/branch/search/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/o0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/o0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/o0;->Companion:Lio/branch/search/o0$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 1

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/o0;->a:Lio/branch/search/l;

    new-instance p1, Lio/branch/search/w4;

    sget-object v0, Lio/branch/search/o0$e;->a:Lio/branch/search/o0$e;

    invoke-direct {p1, v0}, Lio/branch/search/w4;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/o0;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/o0;->a:Lio/branch/search/l;

    return-object p0
.end method


# virtual methods
.method public a(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/o0;->a:Lio/branch/search/l;

    const-string v1, "KCompositeInterface.compositeSearch"

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/o0;->b(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "request"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lio/branch/search/o0;->a:Lio/branch/search/l;

    invoke-virtual {v3}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/branch/search/KBranchRemoteConfiguration;->n()Lio/branch/search/CompositeZeroStateMode;

    move-result-object v3

    instance-of v3, v3, Lio/branch/search/CompositeZeroStateMode$Local;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Lio/branch/search/o0;->a:Lio/branch/search/l;

    const-string v5, "KCompositeInterface.zeroState"

    invoke-virtual {v3}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lio/branch/search/BranchConfiguration;->u()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v1, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {v1}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {v1}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {v3, v1}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Lio/branch/search/ui/KBranchZeroStateEvents;->onZeroStateComplete(Lio/branch/search/ui/KBranchZeroStateResult;Lio/branch/search/BranchError;)V

    return-void

    :cond_0
    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    new-instance v8, Lio/branch/search/o0$c;

    invoke-direct {v8, v0, v1, v2, v4}, Lio/branch/search/o0$c;-><init>(Lio/branch/search/o0;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_1
    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v11

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v12

    new-instance v14, Lio/branch/search/o0$d;

    invoke-direct {v14, v0, v1, v2, v4}, Lio/branch/search/o0$d;-><init>(Lio/branch/search/o0;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method public final b(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/p4;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lio/branch/search/o0$b;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lio/branch/search/o0$b;-><init>(Lio/branch/search/o0;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/ui/KBranchSearchEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
