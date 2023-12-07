.class public final Lio/reactivex2/internal/operators/single/SingleSubscribeOn;
.super Lio/reactivex2/Single;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final scheduler:Lio/reactivex2/Scheduler;

.field final source:Lio/reactivex2/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/SingleSource;Lio/reactivex2/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleSource<",
            "+TT;>;",
            "Lio/reactivex2/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex2/Single;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn;->source:Lio/reactivex2/SingleSource;

    iput-object p2, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn;->scheduler:Lio/reactivex2/Scheduler;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex2/SingleObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;

    iget-object v1, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn;->source:Lio/reactivex2/SingleSource;

    invoke-direct {v0, p1, v1}, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;-><init>(Lio/reactivex2/SingleObserver;Lio/reactivex2/SingleSource;)V

    invoke-interface {p1, v0}, Lio/reactivex2/SingleObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    iget-object p0, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn;->scheduler:Lio/reactivex2/Scheduler;

    invoke-virtual {p0, v0}, Lio/reactivex2/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;

    move-result-object p0

    iget-object p1, v0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->task:Lio/reactivex2/internal/disposables/SequentialDisposable;

    invoke-virtual {p1, p0}, Lio/reactivex2/internal/disposables/SequentialDisposable;->replace(Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method
