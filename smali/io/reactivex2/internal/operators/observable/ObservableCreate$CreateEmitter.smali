.class final Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "ObservableCreate.java"

# interfaces
.implements Lio/reactivex2/ObservableEmitter;
.implements Lio/reactivex2/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableCreate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CreateEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex2/disposables/Disposable;",
        ">;",
        "Lio/reactivex2/ObservableEmitter<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2faaddcf795eb55bL


# instance fields
.field final observer:Lio/reactivex2/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 56
    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Lio/reactivex2/Observer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 121
    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 126
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex2/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex2/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex2/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Lio/reactivex2/Observer;

    invoke-interface {v0}, Lio/reactivex2/Observer;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    .line 100
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Lio/reactivex2/Observer;

    invoke-interface {v0, p1}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public serialize()Lio/reactivex2/ObservableEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex2/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableCreate$SerializedEmitter;

    invoke-direct {v0, p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$SerializedEmitter;-><init>(Lio/reactivex2/ObservableEmitter;)V

    return-object v0
.end method

.method public setCancellable(Lio/reactivex2/functions/Cancellable;)V
    .locals 1

    .line 111
    new-instance v0, Lio/reactivex2/internal/disposables/CancellableDisposable;

    invoke-direct {v0, p1}, Lio/reactivex2/internal/disposables/CancellableDisposable;-><init>(Lio/reactivex2/functions/Cancellable;)V

    invoke-virtual {p0, v0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->setDisposable(Lio/reactivex2/disposables/Disposable;)V

    return-void
.end method

.method public setDisposable(Lio/reactivex2/disposables/Disposable;)V
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->set(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s{%s}"

    const/4 v1, 0x2

    .line 131
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-super {p0}, Ljava/util/concurrent/atomic/AtomicReference;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryOnError(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 80
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->observer:Lio/reactivex2/Observer;

    invoke-interface {v0, p1}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->dispose()V

    .line 87
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
