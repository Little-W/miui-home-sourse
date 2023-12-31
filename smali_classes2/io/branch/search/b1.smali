.class public final Lio/branch/search/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/b1$a;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/b1$a;


# instance fields
.field public final a:Lio/branch/search/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/b1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/b1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/b1;->Companion:Lio/branch/search/b1$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 1

    const-string v0, "branchSearch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/b1;->a:Lio/branch/search/l;

    new-instance p0, Lio/branch/search/i5;

    sget-object p1, Lio/branch/search/b1$d;->a:Lio/branch/search/b1$d;

    invoke-direct {p0, p1}, Lio/branch/search/i5;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/b1;)Lio/branch/search/l;
    .locals 0

    iget-object p0, p0, Lio/branch/search/b1;->a:Lio/branch/search/l;

    return-object p0
.end method


# virtual methods
.method public a(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/b1;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p0}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KCompositeInterface.compositeSearch"

    invoke-virtual {v0, p1, p0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/b1;->b(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;)V
    .locals 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/b1;->a:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p0, Lio/branch/search/BranchLocalError$OptedOut;

    invoke-direct {p0}, Lio/branch/search/BranchLocalError$OptedOut;-><init>()V

    invoke-virtual {p0}, Lio/branch/search/BranchLocalError;->getInternalMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KCompositeInterface.zeroState"

    invoke-virtual {v0, v1, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lio/branch/search/BranchError;->Companion:Lio/branch/search/BranchError$c;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchError$c;->a(Lio/branch/search/BranchLocalError;)Lio/branch/search/BranchError;

    move-result-object p0

    invoke-interface {p2, v2, p0}, Lio/branch/search/ui/KBranchZeroStateEvents;->onZeroStateComplete(Lio/branch/search/ui/KBranchZeroStateResult;Lio/branch/search/BranchError;)V

    return-void

    :cond_0
    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lio/branch/search/b1$c;

    invoke-direct {v6, p0, p1, p2, v2}, Lio/branch/search/b1$c;-><init>(Lio/branch/search/b1;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/ui/KBranchZeroStateEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/ui/KBranchSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/branch/search/b5;->b()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v0, Lio/branch/search/b1$b;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v3 .. v9}, Lio/branch/search/b1$b;-><init>(Lio/branch/search/b1;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/ui/KBranchSearchEvents;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
