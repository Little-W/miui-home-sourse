.class public final Lio/branch/search/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/x$b;
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/x$b;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/branch/search/j3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/x$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/x$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/x;->Companion:Lio/branch/search/x$b;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/w;Lio/branch/search/j3;Lio/branch/search/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/w<",
            "Lio/branch/search/j3;",
            ">;",
            "Lio/branch/search/j3;",
            "Lio/branch/search/y;",
            ")V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configProvided"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "managerActions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/branch/search/x;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lio/branch/search/w;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/j3;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lio/branch/search/j3;->b:J

    iget-wide v4, p2, Lio/branch/search/j3;->b:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object p2, v1

    :cond_1
    :goto_0
    invoke-interface {p3}, Lio/branch/search/y;->a()Lio/branch/search/j3;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Lio/branch/search/j3;->a:I

    iget v3, p2, Lio/branch/search/j3;->a:I

    if-ne v2, v3, :cond_2

    move-object p2, v1

    goto :goto_1

    :cond_2
    invoke-interface {p3, p2}, Lio/branch/search/y;->a(Lio/branch/search/j3;)V

    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "currentStatus.get()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lio/branch/search/j3;

    invoke-interface {p3, p2}, Lio/branch/search/y;->b(Lio/branch/search/j3;)V

    new-instance p2, Lio/branch/search/x$a;

    invoke-direct {p2, p0, p3}, Lio/branch/search/x$a;-><init>(Lio/branch/search/x;Lio/branch/search/y;)V

    invoke-virtual {p1, p2}, Lio/branch/search/w;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic a(Lio/branch/search/x;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lio/branch/search/x;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method
