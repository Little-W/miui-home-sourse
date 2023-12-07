.class final Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex2/Observer;
.implements Lio/reactivex2/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableToListSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ToListObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex2/Observer<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex2/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/SingleObserver<",
            "-TU;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex2/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex2/SingleObserver;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleObserver<",
            "-TU;>;TU;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex2/SingleObserver;

    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex2/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex2/SingleObserver;

    invoke-interface {p0, v0}, Lio/reactivex2/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex2/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex2/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->collection:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->validate(Lio/reactivex2/disposables/Disposable;Lio/reactivex2/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->upstream:Lio/reactivex2/disposables/Disposable;

    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;->downstream:Lio/reactivex2/SingleObserver;

    invoke-interface {p1, p0}, Lio/reactivex2/SingleObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    :cond_0
    return-void
.end method
