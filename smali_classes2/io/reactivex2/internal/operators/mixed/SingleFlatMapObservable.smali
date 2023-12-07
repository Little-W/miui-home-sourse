.class public final Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;
.super Lio/reactivex2/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TR;>;"
    }
.end annotation


# instance fields
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

.field final source:Lio/reactivex2/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/SingleSource<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/SingleSource;Lio/reactivex2/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleSource<",
            "TT;>;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;->source:Lio/reactivex2/SingleSource;

    iput-object p2, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;->mapper:Lio/reactivex2/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex2/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;

    iget-object v1, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;->mapper:Lio/reactivex2/functions/Function;

    invoke-direct {v0, p1, v1}, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable$FlatMapObserver;-><init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Function;)V

    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;->source:Lio/reactivex2/SingleSource;

    invoke-interface {p0, v0}, Lio/reactivex2/SingleSource;->subscribe(Lio/reactivex2/SingleObserver;)V

    return-void
.end method
