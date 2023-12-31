.class public abstract Lio/reactivex2/Single;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lio/reactivex2/SingleSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/SingleSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final flatMapObservable(Lio/reactivex2/functions/Function;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/functions/Function<",
            "-TT;+",
            "Lio/reactivex2/ObservableSource<",
            "+TR;>;>;)",
            "Lio/reactivex2/Observable<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 2788
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2789
    new-instance v0, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;

    invoke-direct {v0, p0, p1}, Lio/reactivex2/internal/operators/mixed/SingleFlatMapObservable;-><init>(Lio/reactivex2/SingleSource;Lio/reactivex2/functions/Function;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Lio/reactivex2/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 3596
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3598
    invoke-static {p0, p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex2/Single;Lio/reactivex2/SingleObserver;)Lio/reactivex2/SingleObserver;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 3600
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3603
    :try_start_0
    invoke-virtual {p0, p1}, Lio/reactivex2/Single;->subscribeActual(Lio/reactivex2/SingleObserver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 3607
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 3608
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "subscribeActual failed"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3609
    invoke-virtual {p1, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3610
    throw p1

    :catch_0
    move-exception p0

    .line 3605
    throw p0
.end method

.method protected abstract subscribeActual(Lio/reactivex2/SingleObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Scheduler;",
            ")",
            "Lio/reactivex2/Single<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 3674
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3675
    new-instance v0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex2/internal/operators/single/SingleSubscribeOn;-><init>(Lio/reactivex2/SingleSource;Lio/reactivex2/Scheduler;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Single;)Lio/reactivex2/Single;

    move-result-object p0

    return-object p0
.end method
