.class public final Lio/reactivex2/internal/observers/LambdaObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lio/reactivex2/Observer;
.implements Lio/reactivex2/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex2/disposables/Disposable;",
        ">;",
        "Lio/reactivex2/Observer<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64a12a8486b15cccL


# instance fields
.field final onComplete:Lio/reactivex2/functions/Action;

.field final onError:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Lio/reactivex2/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex2/functions/Action;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Lio/reactivex2/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onNext:Lio/reactivex2/functions/Consumer;

    iput-object p2, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onError:Lio/reactivex2/functions/Consumer;

    iput-object p3, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onComplete:Lio/reactivex2/functions/Action;

    iput-object p4, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onSubscribe:Lio/reactivex2/functions/Consumer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public hasCustomOnError()Z
    .locals 1

    iget-object p0, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onError:Lio/reactivex2/functions/Consumer;

    sget-object v0, Lio/reactivex2/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex2/functions/Consumer;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisposed()Z
    .locals 1

    invoke-virtual {p0}, Lio/reactivex2/internal/observers/LambdaObserver;->get()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lio/reactivex2/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex2/internal/disposables/DisposableHelper;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onComplete()V
    .locals 1

    invoke-virtual {p0}, Lio/reactivex2/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/reactivex2/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex2/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex2/internal/observers/LambdaObserver;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onComplete:Lio/reactivex2/functions/Action;

    invoke-interface {p0}, Lio/reactivex2/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Lio/reactivex2/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/reactivex2/internal/disposables/DisposableHelper;->DISPOSED:Lio/reactivex2/internal/disposables/DisposableHelper;

    invoke-virtual {p0, v0}, Lio/reactivex2/internal/observers/LambdaObserver;->lazySet(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onError:Lio/reactivex2/functions/Consumer;

    invoke-interface {p0, p1}, Lio/reactivex2/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v0, Lio/reactivex2/exceptions/CompositeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-direct {v0, v1}, Lio/reactivex2/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex2/internal/observers/LambdaObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onNext:Lio/reactivex2/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex2/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lio/reactivex2/internal/observers/LambdaObserver;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lio/reactivex2/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 1

    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex2/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/observers/LambdaObserver;->onSubscribe:Lio/reactivex2/functions/Consumer;

    invoke-interface {v0, p0}, Lio/reactivex2/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-interface {p1}, Lio/reactivex2/disposables/Disposable;->dispose()V

    invoke-virtual {p0, v0}, Lio/reactivex2/internal/observers/LambdaObserver;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
