.class public final Lio/reactivex2/internal/operators/observable/ObservableFromCallable;
.super Lio/reactivex2/Observable;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TT;>;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableFromCallable;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The callable returned a null value"

    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex2/internal/observers/DeferredScalarDisposable;

    invoke-direct {v0, p1}, Lio/reactivex2/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex2/Observer;)V

    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    invoke-virtual {v0}, Lio/reactivex2/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Callable returned null"

    invoke-static {p0, v1}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p0}, Lio/reactivex2/internal/observers/DeferredScalarDisposable;->complete(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lio/reactivex2/internal/observers/DeferredScalarDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
