.class public final Lio/reactivex2/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile errorHandler:Lio/reactivex2/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationHandler:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Lio/reactivex2/Scheduler;",
            "+",
            "Lio/reactivex2/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitComputationHandler:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;+",
            "Lio/reactivex2/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitIoHandler:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;+",
            "Lio/reactivex2/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitNewThreadHandler:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;+",
            "Lio/reactivex2/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitSingleHandler:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;+",
            "Lio/reactivex2/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableAssembly:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Lio/reactivex2/Observable;",
            "+",
            "Lio/reactivex2/Observable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribe:Lio/reactivex2/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/BiFunction<",
            "-",
            "Lio/reactivex2/Observable;",
            "-",
            "Lio/reactivex2/Observer;",
            "+",
            "Lio/reactivex2/Observer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleHandler:Lio/reactivex2/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/functions/Function<",
            "-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static apply(Lio/reactivex2/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/functions/BiFunction<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .line 1288
    :try_start_0
    invoke-interface {p0, p1, p2}, Lio/reactivex2/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1290
    invoke-static {p0}, Lio/reactivex2/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static apply(Lio/reactivex2/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 1268
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex2/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1270
    invoke-static {p0}, Lio/reactivex2/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static applyRequireNonNull(Lio/reactivex2/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;+",
            "Lio/reactivex2/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;)",
            "Lio/reactivex2/Scheduler;"
        }
    .end annotation

    .line 1320
    invoke-static {p0, p1}, Lio/reactivex2/plugins/RxJavaPlugins;->apply(Lio/reactivex2/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Scheduler Callable result can\'t be null"

    invoke-static {p0, p1}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/Scheduler;

    return-object p0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;)",
            "Lio/reactivex2/Scheduler;"
        }
    .end annotation

    .line 1304
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Scheduler Callable result can\'t be null"

    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/Scheduler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1306
    invoke-static {p0}, Lio/reactivex2/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;)",
            "Lio/reactivex2/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 269
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex2/functions/Function;

    if-nez v0, :cond_0

    .line 272
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0

    .line 274
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex2/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;)",
            "Lio/reactivex2/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 285
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex2/functions/Function;

    if-nez v0, :cond_0

    .line 288
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0

    .line 290
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex2/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;)",
            "Lio/reactivex2/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 301
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex2/functions/Function;

    if-nez v0, :cond_0

    .line 304
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0

    .line 306
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex2/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex2/Scheduler;",
            ">;)",
            "Lio/reactivex2/Scheduler;"
        }
    .end annotation

    const-string v0, "Scheduler Callable can\'t be null"

    .line 317
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex2/functions/Function;

    if-nez v0, :cond_0

    .line 320
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0

    .line 322
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex2/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex2/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method static isBug(Ljava/lang/Throwable;)Z
    .locals 2

    .line 396
    instance-of v0, p0, Lio/reactivex2/exceptions/OnErrorNotImplementedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 401
    :cond_0
    instance-of v0, p0, Lio/reactivex2/exceptions/MissingBackpressureException;

    if-eqz v0, :cond_1

    return v1

    .line 406
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    return v1

    .line 411
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    return v1

    .line 415
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    return v1

    .line 419
    :cond_4
    instance-of p0, p0, Lio/reactivex2/exceptions/CompositeException;

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static onAssembly(Lio/reactivex2/Observable;)Lio/reactivex2/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/Observable<",
            "TT;>;)",
            "Lio/reactivex2/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1052
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex2/functions/Function;

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->apply(Lio/reactivex2/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/Observable;

    return-object p0

    :cond_0
    return-object p0
.end method

.method public static onComputationScheduler(Lio/reactivex2/Scheduler;)Lio/reactivex2/Scheduler;
    .locals 1

    .line 332
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex2/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 336
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->apply(Lio/reactivex2/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/Scheduler;

    return-object p0
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 361
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex2/functions/Consumer;

    if-nez p0, :cond_0

    .line 364
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->isBug(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    new-instance v1, Lio/reactivex2/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex2/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 373
    :try_start_0
    invoke-interface {v0, p0}, Lio/reactivex2/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    invoke-static {v0}, Lio/reactivex2/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    .line 382
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    invoke-static {p0}, Lio/reactivex2/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    const-string v0, "run is null"

    .line 467
    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex2/functions/Function;

    if-nez v0, :cond_0

    return-object p0

    .line 473
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex2/plugins/RxJavaPlugins;->apply(Lio/reactivex2/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public static onSubscribe(Lio/reactivex2/Observable;Lio/reactivex2/Observer;)Lio/reactivex2/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex2/Observable<",
            "TT;>;",
            "Lio/reactivex2/Observer<",
            "-TT;>;)",
            "Lio/reactivex2/Observer<",
            "-TT;>;"
        }
    .end annotation

    .line 939
    sget-object v0, Lio/reactivex2/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex2/functions/BiFunction;

    if-eqz v0, :cond_0

    .line 941
    invoke-static {v0, p0, p1}, Lio/reactivex2/plugins/RxJavaPlugins;->apply(Lio/reactivex2/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/Observer;

    return-object p0

    :cond_0
    return-object p1
.end method

.method static uncaught(Ljava/lang/Throwable;)V
    .locals 2

    .line 427
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 429
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
