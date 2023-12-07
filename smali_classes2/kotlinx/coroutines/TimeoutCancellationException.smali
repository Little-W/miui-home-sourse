.class public final Lkotlinx/coroutines/TimeoutCancellationException;
.super Ljava/util/concurrent/CancellationException;

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lkotlinx/coroutines/TimeoutCancellationException;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nkotlinx/coroutines/TimeoutCancellationException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"
.end annotation


# instance fields
.field public final coroutine:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/TimeoutCancellationException;->createCopy()Lkotlinx/coroutines/TimeoutCancellationException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public createCopy()Lkotlinx/coroutines/TimeoutCancellationException;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-virtual {p0}, Lkotlinx/coroutines/TimeoutCancellationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/TimeoutCancellationException;->coroutine:Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;Lkotlinx/coroutines/Job;)V

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/TimeoutCancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method
