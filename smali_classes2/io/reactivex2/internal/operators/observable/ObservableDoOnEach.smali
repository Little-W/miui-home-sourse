.class public final Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;
.super Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;
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
.field final onAfterTerminate:Lio/reactivex2/functions/Action;

.field final onComplete:Lio/reactivex2/functions/Action;

.field final onError:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final onNext:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex2/functions/Action;",
            "Lio/reactivex2/functions/Action;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex2/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onNext:Lio/reactivex2/functions/Consumer;

    iput-object p3, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onError:Lio/reactivex2/functions/Consumer;

    iput-object p4, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onComplete:Lio/reactivex2/functions/Action;

    iput-object p5, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onAfterTerminate:Lio/reactivex2/functions/Action;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->source:Lio/reactivex2/ObservableSource;

    new-instance v7, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;

    iget-object v3, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onNext:Lio/reactivex2/functions/Consumer;

    iget-object v4, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onError:Lio/reactivex2/functions/Consumer;

    iget-object v5, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onComplete:Lio/reactivex2/functions/Action;

    iget-object v6, p0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;->onAfterTerminate:Lio/reactivex2/functions/Action;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;-><init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Action;)V

    invoke-interface {v0, v7}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    return-void
.end method
