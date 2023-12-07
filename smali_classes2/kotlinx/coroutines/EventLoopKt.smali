.class public final Lkotlinx/coroutines/EventLoopKt;
.super Ljava/lang/Object;


# direct methods
.method public static final createEventLoop()Lkotlinx/coroutines/EventLoop;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/BlockingEventLoop;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/BlockingEventLoop;-><init>(Ljava/lang/Thread;)V

    check-cast v0, Lkotlinx/coroutines/EventLoop;

    return-object v0
.end method
