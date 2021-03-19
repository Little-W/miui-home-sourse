.class public final Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;
.super Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;,
        Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lio/reactivex2/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/Scheduler;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex2/ObservableSource;)V

    .line 27
    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;->scheduler:Lio/reactivex2/Scheduler;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    invoke-direct {v0, p1}, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;-><init>(Lio/reactivex2/Observer;)V

    .line 34
    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 36
    iget-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;->scheduler:Lio/reactivex2/Scheduler;

    new-instance v1, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;

    invoke-direct {v1, p0, v0}, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeTask;-><init>(Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V

    invoke-virtual {p1, v1}, Lio/reactivex2/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->setDisposable(Lio/reactivex2/disposables/Disposable;)V

    return-void
.end method
