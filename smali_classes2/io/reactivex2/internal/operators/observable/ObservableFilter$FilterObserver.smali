.class final Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;
.super Lio/reactivex2/internal/observers/BasicFuseableObserver;
.source "ObservableFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/observable/ObservableFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/internal/observers/BasicFuseableObserver<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final filter:Lio/reactivex2/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex2/Observer;Lio/reactivex2/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lio/reactivex2/internal/observers/BasicFuseableObserver;-><init>(Lio/reactivex2/Observer;)V

    .line 38
    iput-object p2, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->filter:Lio/reactivex2/functions/Predicate;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    iget v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->sourceMode:I

    if-nez v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->filter:Lio/reactivex2/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex2/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 52
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->downstream:Lio/reactivex2/Observer;

    invoke-interface {p0, p1}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 48
    invoke-virtual {p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->fail(Ljava/lang/Throwable;)V

    return-void

    .line 55
    :cond_0
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->downstream:Lio/reactivex2/Observer;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lio/reactivex2/Observer;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    :cond_0
    iget-object v0, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->qd:Lio/reactivex2/internal/fuseable/QueueDisposable;

    invoke-interface {v0}, Lio/reactivex2/internal/fuseable/QueueDisposable;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->filter:Lio/reactivex2/functions/Predicate;

    invoke-interface {v1, v0}, Lio/reactivex2/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableFilter$FilterObserver;->transitiveBoundaryFusion(I)I

    move-result p0

    return p0
.end method
