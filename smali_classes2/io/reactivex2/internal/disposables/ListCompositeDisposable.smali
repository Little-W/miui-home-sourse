.class public final Lio/reactivex2/internal/disposables/ListCompositeDisposable;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex2/disposables/Disposable;
.implements Lio/reactivex2/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex2/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex2/disposables/Disposable;)Z
    .locals 1

    const-string v0, "d is null"

    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/reactivex2/disposables/Disposable;->dispose()V

    const/4 p0, 0x0

    return p0
.end method

.method public delete(Lio/reactivex2/disposables/Disposable;)Z
    .locals 2

    const-string v0, "Disposable item is null"

    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    iget-object v0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->resources:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->dispose(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispose(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/reactivex2/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex2/disposables/Disposable;

    :try_start_0
    invoke-interface {v0}, Lio/reactivex2/disposables/Disposable;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lio/reactivex2/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p1, Lio/reactivex2/exceptions/CompositeException;

    invoke-direct {p1, p0}, Lio/reactivex2/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p1

    :cond_4
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->disposed:Z

    return p0
.end method

.method public remove(Lio/reactivex2/disposables/Disposable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lio/reactivex2/internal/disposables/ListCompositeDisposable;->delete(Lio/reactivex2/disposables/Disposable;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lio/reactivex2/disposables/Disposable;->dispose()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
