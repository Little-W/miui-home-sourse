.class public abstract Lio/reactivex2/Observable;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lio/reactivex2/ObservableSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/ObservableSource<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bufferSize()I
    .locals 1

    .line 168
    invoke-static {}, Lio/reactivex2/Flowable;->bufferSize()I

    move-result v0

    return v0
.end method

.method public static create(Lio/reactivex2/ObservableOnSubscribe;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/ObservableOnSubscribe<",
            "TT;>;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1634
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1635
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableCreate;

    invoke-direct {v0, p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate;-><init>(Lio/reactivex2/ObservableOnSubscribe;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method private doOnEach(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Action;)Lio/reactivex2/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex2/functions/Action;",
            "Lio/reactivex2/functions/Action;",
            ")",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 8135
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 8136
    invoke-static {p2, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 8137
    invoke-static {p3, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    .line 8138
    invoke-static {p4, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8139
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lio/reactivex2/internal/operators/observable/ObservableDoOnEach;-><init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Action;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    .line 1807
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1808
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableFromCallable;

    invoke-direct {v0, p0}, Lio/reactivex2/internal/operators/observable/ObservableFromCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static fromIterable(Ljava/lang/Iterable;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    .line 1983
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1984
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableFromIterable;

    invoke-direct {v0, p0}, Lio/reactivex2/internal/operators/observable/ObservableFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static just(Ljava/lang/Object;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 2389
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2390
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableJust;

    invoke-direct {v0, p0}, Lio/reactivex2/internal/operators/observable/ObservableJust;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final doOnNext(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 8264
    invoke-static {}, Lio/reactivex2/internal/functions/Functions;->emptyConsumer()Lio/reactivex2/functions/Consumer;

    move-result-object v0

    sget-object v1, Lio/reactivex2/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex2/functions/Action;

    sget-object v2, Lio/reactivex2/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex2/functions/Action;

    invoke-direct {p0, p1, v0, v1, v2}, Lio/reactivex2/Observable;->doOnEach(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Action;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final filter(Lio/reactivex2/functions/Predicate;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Predicate<",
            "-TT;>;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    .line 8421
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8422
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableFilter;

    invoke-direct {v0, p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableFilter;-><init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/functions/Predicate;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final observeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Scheduler;",
            ")",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 9925
    invoke-static {}, Lio/reactivex2/Observable;->bufferSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/reactivex2/Observable;->observeOn(Lio/reactivex2/Scheduler;ZI)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final observeOn(Lio/reactivex2/Scheduler;ZI)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Scheduler;",
            "ZI)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 9990
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    .line 9991
    invoke-static {p3, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 9992
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/reactivex2/internal/operators/observable/ObservableObserveOn;-><init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/Scheduler;ZI)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;)",
            "Lio/reactivex2/disposables/Disposable;"
        }
    .end annotation

    .line 12155
    sget-object v0, Lio/reactivex2/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex2/functions/Consumer;

    sget-object v1, Lio/reactivex2/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex2/functions/Action;

    invoke-static {}, Lio/reactivex2/internal/functions/Functions;->emptyConsumer()Lio/reactivex2/functions/Consumer;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex2/disposables/Disposable;"
        }
    .end annotation

    .line 12181
    sget-object v0, Lio/reactivex2/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex2/functions/Action;

    invoke-static {}, Lio/reactivex2/internal/functions/Functions;->emptyConsumer()Lio/reactivex2/functions/Consumer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public final subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex2/functions/Action;",
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Lio/reactivex2/disposables/Disposable;",
            ">;)",
            "Lio/reactivex2/disposables/Disposable;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 12246
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 12247
    invoke-static {p2, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 12248
    invoke-static {p3, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    .line 12249
    invoke-static {p4, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12251
    new-instance v0, Lio/reactivex2/internal/observers/LambdaObserver;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/reactivex2/internal/observers/LambdaObserver;-><init>(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Action;Lio/reactivex2/functions/Consumer;)V

    .line 12253
    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/Observer;)V

    return-object v0
.end method

.method public final subscribe(Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    .line 12261
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12263
    :try_start_0
    invoke-static {p0, p1}, Lio/reactivex2/plugins/RxJavaPlugins;->onSubscribe(Lio/reactivex2/Observable;Lio/reactivex2/Observer;)Lio/reactivex2/Observer;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    .line 12265
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12267
    invoke-virtual {p0, p1}, Lio/reactivex2/Observable;->subscribeActual(Lio/reactivex2/Observer;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 12271
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 12274
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 12276
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12277
    invoke-virtual {p1, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 12278
    throw p1

    :catch_0
    move-exception p0

    .line 12269
    throw p0
.end method

.method protected abstract subscribeActual(Lio/reactivex2/Observer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final subscribeOn(Lio/reactivex2/Scheduler;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Scheduler;",
            ")",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 12343
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12344
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;

    invoke-direct {v0, p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableSubscribeOn;-><init>(Lio/reactivex2/ObservableSource;Lio/reactivex2/Scheduler;)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final toList()Lio/reactivex2/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex2/Single<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 13958
    invoke-virtual {p0, v0}, Lio/reactivex2/Observable;->toList(I)Lio/reactivex2/Single;

    move-result-object p0

    return-object p0
.end method

.method public final toList(I)Lio/reactivex2/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex2/Single<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    .line 13990
    invoke-static {p1, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    .line 13991
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableToListSingle;

    invoke-direct {v0, p0, p1}, Lio/reactivex2/internal/operators/observable/ObservableToListSingle;-><init>(Lio/reactivex2/ObservableSource;I)V

    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->onAssembly(Lio/reactivex2/Single;)Lio/reactivex2/Single;

    move-result-object p0

    return-object p0
.end method
