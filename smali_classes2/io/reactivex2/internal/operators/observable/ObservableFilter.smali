.class public final Lio/reactivex2/internal/operators/observable/ObservableFilter;
.super Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;
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
.field final predicate:Lio/reactivex2/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableSource<",
            "TT;>;",
            "Lio/reactivex2/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex2/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex2/ObservableSource;)V

    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter;->predicate:Lio/reactivex2/functions/Predicate;

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

    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter;->source:Lio/reactivex2/ObservableSource;

    new-instance v1, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;

    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter;->predicate:Lio/reactivex2/functions/Predicate;

    invoke-direct {v1, p1, p0}, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;-><init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Predicate;)V

    invoke-interface {v0, v1}, Lio/reactivex2/ObservableSource;->subscribe(Lio/reactivex2/Observer;)V

    return-void
.end method
