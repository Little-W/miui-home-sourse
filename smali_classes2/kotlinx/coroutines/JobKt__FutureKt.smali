.class final synthetic Lkotlinx/coroutines/JobKt__FutureKt;
.super Ljava/lang/Object;


# direct methods
.method public static final cancelFutureOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/CancelFutureOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/CancelFutureOnCancel;-><init>(Ljava/util/concurrent/Future;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
