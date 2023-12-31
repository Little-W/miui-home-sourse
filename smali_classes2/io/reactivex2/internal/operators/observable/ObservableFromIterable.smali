.class public final Lio/reactivex2/internal/operators/observable/ObservableFromIterable;
.super Lio/reactivex2/Observable;
.source "ObservableFromIterable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable;->source:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 35
    :try_start_0
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable;->source:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->complete(Lio/reactivex2/Observer;)V

    return-void

    .line 54
    :cond_0
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;-><init>(Lio/reactivex2/Observer;Ljava/util/Iterator;)V

    .line 55
    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 57
    iget-boolean p0, v0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->fusionMode:Z

    if-nez p0, :cond_1

    .line 58
    invoke-virtual {v0}, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->run()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 45
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 46
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return-void

    :catchall_1
    move-exception p0

    .line 37
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 38
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V

    return-void
.end method
