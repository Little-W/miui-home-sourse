.class public final Lio/reactivex2/disposables/CompositeDisposable;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lio/reactivex2/disposables/Disposable;
.implements Lio/reactivex2/internal/disposables/DisposableContainer;


# instance fields
.field volatile disposed:Z

.field resources:Lio/reactivex2/internal/util/OpenHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/internal/util/OpenHashSet<",
            "Lio/reactivex2/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex2/disposables/Disposable;)Z
    .locals 1

    const-string v0, "disposable is null"

    .line 99
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    iget-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_2

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->resources:Lio/reactivex2/internal/util/OpenHashSet;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lio/reactivex2/internal/util/OpenHashSet;

    invoke-direct {v0}, Lio/reactivex2/internal/util/OpenHashSet;-><init>()V

    .line 106
    iput-object v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->resources:Lio/reactivex2/internal/util/OpenHashSet;

    .line 108
    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex2/internal/util/OpenHashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 109
    monitor-exit p0

    return p1

    .line 111
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 113
    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/reactivex2/disposables/Disposable;->dispose()V

    const/4 p0, 0x0

    return p0
.end method

.method public delete(Lio/reactivex2/disposables/Disposable;)Z
    .locals 2

    const-string v0, "disposables is null"

    .line 172
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 176
    :cond_0
    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 178
    monitor-exit p0

    return v1

    .line 181
    :cond_1
    iget-object v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->resources:Lio/reactivex2/internal/util/OpenHashSet;

    if-eqz v0, :cond_3

    .line 182
    invoke-virtual {v0, p1}, Lio/reactivex2/internal/util/OpenHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 185
    :cond_2
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 183
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 185
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 2

    .line 69
    iget-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    .line 75
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    .line 78
    iget-object v0, p0, Lio/reactivex2/disposables/CompositeDisposable;->resources:Lio/reactivex2/internal/util/OpenHashSet;

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lio/reactivex2/disposables/CompositeDisposable;->resources:Lio/reactivex2/internal/util/OpenHashSet;

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0, v0}, Lio/reactivex2/disposables/CompositeDisposable;->dispose(Lio/reactivex2/internal/util/OpenHashSet;)V

    return-void

    :catchall_0
    move-exception v0

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dispose(Lio/reactivex2/internal/util/OpenHashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/internal/util/OpenHashSet<",
            "Lio/reactivex2/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 236
    invoke-virtual {p1}, Lio/reactivex2/internal/util/OpenHashSet;->keys()[Ljava/lang/Object;

    move-result-object p1

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    move-object v2, p0

    move p0, v1

    :goto_0
    if-ge p0, v0, :cond_3

    aget-object v3, p1, p0

    .line 238
    instance-of v4, v3, Lio/reactivex2/disposables/Disposable;

    if-eqz v4, :cond_2

    .line 240
    :try_start_0
    check-cast v3, Lio/reactivex2/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex2/disposables/Disposable;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 242
    invoke-static {v3}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    if-nez v2, :cond_1

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    .line 251
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    .line 252
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-static {p0}, Lio/reactivex2/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 254
    :cond_4
    new-instance p0, Lio/reactivex2/exceptions/CompositeException;

    invoke-direct {p0, v2}, Lio/reactivex2/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw p0

    :cond_5
    return-void
.end method

.method public isDisposed()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lio/reactivex2/disposables/CompositeDisposable;->disposed:Z

    return p0
.end method

.method public remove(Lio/reactivex2/disposables/Disposable;)Z
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lio/reactivex2/disposables/CompositeDisposable;->delete(Lio/reactivex2/disposables/Disposable;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 157
    invoke-interface {p1}, Lio/reactivex2/disposables/Disposable;->dispose()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
