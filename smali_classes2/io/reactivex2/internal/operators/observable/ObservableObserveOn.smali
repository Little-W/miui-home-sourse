.class public final Lio/reactivex2/internal/operators/observable/ObservableObserveOn;
.super Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
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
.field final bufferSize:I

.field final delayError:Z

.field final scheduler:Lio/reactivex2/Scheduler;


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/Scheduler;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/Scheduler;",
            "ZI)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex2/ObservableSource;)V

    .line 33
    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->scheduler:Lio/reactivex2/Scheduler;

    .line 34
    iput-boolean p3, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->delayError:Z

    .line 35
    iput p4, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->bufferSize:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex2/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->scheduler:Lio/reactivex2/Scheduler;

    instance-of v1, v0, Lio/reactivex2/internal/schedulers/TrampolineScheduler;

    if-eqz v1, :cond_0

    .line 41
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->source:Lio/reactivex2/ObservableSource;

    invoke-interface {v0, p1}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lio/reactivex2/Scheduler;->createWorker()Lio/reactivex2/Scheduler$Worker;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->source:Lio/reactivex2/ObservableSource;

    new-instance v2, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    iget-boolean v3, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->delayError:Z

    iget v4, p0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;->bufferSize:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Lio/reactivex2/Observer;Lio/reactivex2/Scheduler$Worker;ZI)V

    invoke-interface {v1, v2}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    :goto_0
    return-void
.end method