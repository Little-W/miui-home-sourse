.class final Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleFlatMapObservable.java"

# interfaces
.implements Lio/reactivex2/Observer;
.implements Lio/reactivex2/SingleObserver;
.implements Lio/reactivex2/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex2/disposables/Disposable;",
        ">;",
        "Lio/reactivex2/Observer<",
        "TR;>;",
        "Lio/reactivex2/SingleObserver<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7c2e9f0a46fa84b0L


# instance fields
.field final downstream:Lio/reactivex2/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TR;>;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 63
    iput-object p1, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->downstream:Lio/reactivex2/Observer;

    .line 64
    iput-object p2, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->mapper:Lio/reactivex2/functions/Function;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 84
    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    .line 89
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/disposables/Disposable;

    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex2/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 0

    .line 79
    iget-object p0, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0}, Lio/reactivex2/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, p1}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 102
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->mapper:Lio/reactivex2/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex2/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null Publisher"

    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex2/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-interface {p1, p0}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 104
    invoke-static {p1}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 105
    iget-object p0, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
