.class public final Lio/reactivex2/internal/operators/observable/ObservableJust;
.super Lio/reactivex2/Observable;

# interfaces
.implements Lio/reactivex2/internal/fuseable/ScalarCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TT;>;",
        "Lio/reactivex2/internal/fuseable/ScalarCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableJust;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableJust;->value:Ljava/lang/Object;

    return-object p0
.end method

.method protected subscribeActual(Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableJust;->value:Ljava/lang/Object;

    invoke-direct {v0, p1, p0}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;-><init>(Lio/reactivex2/Observer;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    invoke-virtual {v0}, Lio/reactivex2/internal/operators/observable/ObservableScalarXMap$ScalarDisposable;->run()V

    return-void
.end method
