.class public final Lio/reactivex2/internal/operators/observable/ObservableToListSingle;
.super Lio/reactivex2/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lio/reactivex2/Single<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final collectionSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex2/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/ObservableSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle;->source:Lio/reactivex2/ObservableSource;

    invoke-static {p2}, Lio/reactivex2/internal/functions/Functions;->createArrayList(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle;->collectionSupplier:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleObserver<",
            "-TU;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle;->collectionSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle;->source:Lio/reactivex2/ObservableSource;

    new-instance v1, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;

    invoke-direct {v1, p1, v0}, Lio/reactivex2/internal/operators/observable/ObservableToListSingle$ToListObserver;-><init>(Lio/reactivex2/SingleObserver;Ljava/util/Collection;)V

    invoke-interface {p0, v1}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex2/SingleObserver;)V

    return-void
.end method
