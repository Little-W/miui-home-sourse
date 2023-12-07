.class final Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex2/Observer;
.implements Lio/reactivex2/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoOnEachObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/Observer<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex2/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final onAfterTerminate:Lio/reactivex2/functions/Action;

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

.field upstream:Lio/reactivex2/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex2/functions/Action;",
            "Lio/reactivex2/functions/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->downstream:Lio/reactivex2/Observer;

    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onNext:Lio/reactivex2/functions/Consumer;

    iput-object p3, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onError:Lio/reactivex2/functions/Consumer;

    iput-object p4, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onComplete:Lio/reactivex2/functions/Action;

    iput-object p5, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onAfterTerminate:Lio/reactivex2/functions/Action;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onComplete:Lio/reactivex2/functions/Action;

    invoke-interface {v0}, Lio/reactivex2/functions/Action;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->done:Z

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0}, Lio/reactivex2/Observer;->onComplete()V

    :try_start_1
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onAfterTerminate:Lio/reactivex2/functions/Action;

    invoke-interface {p0}, Lio/reactivex2/functions/Action;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->done:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->done:Z

    :try_start_0
    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onError:Lio/reactivex2/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex2/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    new-instance v2, Lio/reactivex2/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex2/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v0, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    :try_start_1
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onAfterTerminate:Lio/reactivex2/functions/Action;

    invoke-interface {p0}, Lio/reactivex2/functions/Action;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onNext:Lio/reactivex2/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex2/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, p1}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    invoke-virtual {p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->validate(Lio/reactivex2/disposables/Disposable;Lio/reactivex2/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p1, p0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    :cond_0
    return-void
.end method
