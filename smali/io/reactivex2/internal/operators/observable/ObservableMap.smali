.class public final Lio/reactivex2/internal/operators/observable/ObservableMap;
.super Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableMap$MapObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field final function:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/functions/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/functions/Function<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex2/ObservableSource;)V

    .line 27
    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableMap;->function:Lio/reactivex2/functions/Function;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex2/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TU;>;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableMap;->source:Lio/reactivex2/ObservableSource;

    new-instance v1, Lio/reactivex2/internal/operators/observable/ObservableMap$MapObserver;

    iget-object v2, p0, Lio/reactivex2/internal/operators/observable/ObservableMap;->function:Lio/reactivex2/functions/Function;

    invoke-direct {v1, p1, v2}, Lio/reactivex2/internal/operators/observable/ObservableMap$MapObserver;-><init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Function;)V

    invoke-interface {v0, v1}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    return-void
.end method
