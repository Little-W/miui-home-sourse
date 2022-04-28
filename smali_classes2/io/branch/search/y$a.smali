.class public final Lio/branch/search/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/branch/search/BranchConfiguration;

.field public final b:Lio/branch/search/internal/interfaces/LocalInterface;

.field public final c:Lio/branch/search/BranchAnalytics;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/BranchAnalytics;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localInterface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/y$a;->a:Lio/branch/search/BranchConfiguration;

    iput-object p2, p0, Lio/branch/search/y$a;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iput-object p3, p0, Lio/branch/search/y$a;->c:Lio/branch/search/BranchAnalytics;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/y$a;)Lio/branch/search/internal/interfaces/LocalInterface;
    .locals 0

    iget-object p0, p0, Lio/branch/search/y$a;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    return-object p0
.end method


# virtual methods
.method public a()Lio/branch/search/j3;
    .locals 3

    invoke-static {}, Lio/branch/search/p4;->c()Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lio/branch/search/y$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/branch/search/y$a$a;-><init>(Lio/branch/search/y$a;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/j3;

    return-object v0
.end method

.method public a(Lio/branch/search/j3;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/y$a;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-virtual {v0, p1}, Lio/branch/search/internal/interfaces/LocalInterface;->a(Lio/branch/search/j3;)V

    return-void
.end method

.method public b(Lio/branch/search/j3;)V
    .locals 5

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/branch/search/x;->Companion:Lio/branch/search/x$b;

    iget-object v1, p0, Lio/branch/search/y$a;->a:Lio/branch/search/BranchConfiguration;

    invoke-virtual {p1}, Lio/branch/search/j3;->b()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object v2

    const-string v3, "status.toBranchTrackingStatus()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v3, p1, Lio/branch/search/j3;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/branch/search/x$b;->a(Lio/branch/search/BranchConfiguration;Lio/branch/search/BranchConfiguration$BranchTrackingStatus;J)V

    iget-object v0, p0, Lio/branch/search/y$a;->c:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p1}, Lio/branch/search/j3;->b()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    move-result-object p1

    sget-object v1, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/Boolean;)V

    return-void
.end method
