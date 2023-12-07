.class final Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;
.super Lio/reactivex2/internal/observers/BasicQueueDisposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableFromIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FromIterableDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/internal/observers/BasicQueueDisposable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field checkNext:Z

.field volatile disposed:Z

.field done:Z

.field final downstream:Lio/reactivex2/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field fusionMode:Z

.field final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/internal/observers/BasicQueueDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex2/Observer;

    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->disposed:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->disposed:Z

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    return p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->checkNext:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->done:Z

    return-object v1

    :cond_1
    iput-boolean v2, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->checkNext:Z

    :cond_2
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "The iterator returned a null value"

    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->fusionMode:Z

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method run()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The iterator returned a null value"

    invoke-static {v0, v1}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex2/Observer;

    invoke-interface {v1, v0}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0}, Lio/reactivex2/Observer;->onComplete()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, v0}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable$FromIterableDisposable;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, v0}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
