.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlinx/coroutines/CancellableContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 4 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,559:1\n211#1,2:566\n213#1,8:569\n211#1,10:577\n1#2:560\n13#3:561\n22#3:568\n92#4,2:562\n92#4,2:564\n276#4,2:587\n276#4,2:589\n92#4,2:595\n92#4,2:597\n92#4,2:599\n57#5,2:591\n57#5,2:593\n57#5,2:601\n*E\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n227#1,2:566\n227#1,8:569\n230#1,10:577\n125#1:561\n227#1:568\n157#1,2:562\n189#1,2:564\n251#1,2:587\n261#1,2:589\n300#1,2:595\n390#1,2:597\n425#1,2:599\n276#1,2:591\n286#1,2:593\n502#1,2:601\n*E\n"
.end annotation


# static fields
.field private static final _decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final delegate:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    iput v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    sget-object p1, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already resumed, but proposed with update "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final cancelLater(Ljava/lang/Throwable;)Z
    .locals 2

    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v0}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/DispatchedContinuation;->postponeCancellation(Ljava/lang/Throwable;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private final checkCompleted()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v0

    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v1}, Lkotlinx/coroutines/DispatchedTaskKt;->isReusableMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v2, v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v1, :cond_3

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/DispatchedContinuation;->checkPostponedCancellation(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private final detachChildIfNonResuable()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    :cond_0
    return-void
.end method

.method private final dispatchResume(I)V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/DispatchedTaskKt;->dispatch(Lkotlinx/coroutines/DispatchedTask;I)V

    return-void
.end method

.method private final getParentHandle()Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/DisposableHandle;

    return-object p0
.end method

.method private final isReusable()Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->isReusable(Lkotlinx/coroutines/CancellableContinuationImpl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final makeCancelHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/CancelHandler;"
        }
    .end annotation

    instance-of p0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    :goto_0
    return-object p1
.end method

.method private final multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/NotCompleted;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    invoke-direct {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return-void

    :cond_1
    instance-of p2, v0, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz p2, :cond_3

    check-cast v0, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/CancelledContinuation;->makeResumed()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v0, Lkotlinx/coroutines/CancelledContinuation;->cause:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->alreadyResumedError(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method static synthetic resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/NotCompleted;",
            "Ljava/lang/Object;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p0, :cond_5

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p0

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    if-nez p5, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p0

    if-eqz p0, :cond_8

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    move p1, p3

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_5
    invoke-static {p3}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result p0

    if-nez p0, :cond_6

    if-nez p5, :cond_6

    goto :goto_3

    :cond_6
    if-nez p4, :cond_9

    instance-of p0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz p0, :cond_7

    instance-of p0, p1, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz p0, :cond_9

    :cond_7
    if-eqz p5, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object p0, p2

    goto :goto_5

    :cond_9
    :goto_4
    new-instance p0, Lkotlinx/coroutines/CompletedContinuation;

    instance-of p3, p1, Lkotlinx/coroutines/CancelHandler;

    if-nez p3, :cond_a

    const/4 p1, 0x0

    :cond_a
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CancelHandler;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_5
    return-object p0
.end method

.method private final setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method private final setupCancellation()V
    .locals 7

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->checkCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isReusable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    :cond_2
    return-void
.end method

.method private final tryResume()Z
    .locals 4

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/internal/Symbol;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_1

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/NotCompleted;

    iget v5, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumedState(Lkotlinx/coroutines/NotCompleted;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    sget-object p0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    return-object p0

    :cond_1
    instance-of p0, v0, Lkotlinx/coroutines/CompletedContinuation;

    const/4 p3, 0x0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p0, v0, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-ne p0, p2, :cond_4

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    :goto_1
    sget-object p3, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    :cond_4
    return-object p3
.end method

.method private final trySuspend()Z
    .locals 3

    :cond_0
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public final callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/CancelHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final callOnCancellation(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 4

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/CancelledContinuation;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    instance-of v3, v0, Lkotlinx/coroutines/CancelHandler;

    invoke-direct {v1, v2, p1, v3}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlinx/coroutines/CancelHandler;Ljava/lang/Throwable;)V

    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    iget p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 10

    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    instance-of v0, p1, Lkotlinx/coroutines/NotCompleted;

    if-nez v0, :cond_4

    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0, p2}, Lkotlinx/coroutines/CompletedContinuation;->invokeHandlers(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    sget-object v8, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v9, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, p0, p1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    iget p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    return-void
.end method

.method public final detachChild$kotlinx_coroutines_core()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setParentHandle(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object p0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    return-object p0
.end method

.method public getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    invoke-super {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->getExceptionalResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 3

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setupCancellation()V

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->trySuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_3

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v0, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_2
    :goto_0
    throw v0

    :cond_3
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-static {v1}, Lkotlinx/coroutines/DispatchedTaskKt;->isCancellableMode(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getRECOVER_STACK_TRACES()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, p0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->access$recoverFromStackFrame(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_5
    :goto_1
    throw v1

    :cond_6
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return-object p0
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of p0, p1, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz p0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CompletedContinuation;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedContinuation;->result:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public initCancellability()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->setupCancellation()V

    return-void
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->makeCancelHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;

    move-result-object v8

    :cond_0
    :goto_0
    iget-object v9, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    instance-of v0, v9, Lkotlinx/coroutines/Active;

    if-eqz v0, :cond_1

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    instance-of v0, v9, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v0, v9, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_7

    move-object v1, v9

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-virtual {v1}, Lkotlinx/coroutines/CompletedExceptionally;->makeHandled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    :cond_3
    instance-of v1, v9, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    if-nez v0, :cond_4

    move-object v9, v1

    :cond_4
    check-cast v9, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v9, :cond_5

    iget-object v1, v9, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    :cond_5
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    instance-of v0, v9, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v0, :cond_b

    move-object v0, v9

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v1, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelHandler:Lkotlinx/coroutines/CancelHandler;

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, v9}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    :cond_8
    instance-of v1, v8, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Lkotlinx/coroutines/CompletedContinuation;->getCancelled()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->cancelCause:Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->callCancelHandler(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;->copy$default(Lkotlinx/coroutines/CompletedContinuation;Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lkotlinx/coroutines/CompletedContinuation;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_b
    instance-of v0, v8, Lkotlinx/coroutines/BeforeResumeCancelHandler;

    if-eqz v0, :cond_c

    return-void

    :cond_c
    new-instance v10, Lkotlinx/coroutines/CompletedContinuation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object v2, v8

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/CompletedContinuation;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancelHandler;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public isCompleted()Z
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected nameString()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final parentCancelled$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelLater(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancel(Ljava/lang/Throwable;)Z

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChildIfNonResuable()V

    return-void
.end method

.method public final resetStateReusable()Z
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_2
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getParentHandle()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v0, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_5
    :goto_3
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/2addr v3, v1

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_7
    :goto_4
    instance-of v3, v0, Lkotlinx/coroutines/CompletedContinuation;

    if-eqz v3, :cond_8

    check-cast v0, Lkotlinx/coroutines/CompletedContinuation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedContinuation;->idempotentResume:Ljava/lang/Object;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->detachChild$kotlinx_coroutines_core()V

    return v2

    :cond_8
    iput v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    sget-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return v1
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    :goto_0
    move v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl$default(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, p1, v2, v3, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResumeImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/Symbol;

    move-result-object p0

    return-object p0
.end method
