.class public final Lio/reactivex2/disposables/Disposables;
.super Ljava/lang/Object;


# direct methods
.method public static disposed()Lio/reactivex2/disposables/Disposable;
    .locals 1

    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object v0
.end method

.method public static fromRunnable(Ljava/lang/Runnable;)Lio/reactivex2/disposables/Disposable;
    .locals 1

    const-string v0, "run is null"

    invoke-static {p0, v0}, Lio/reactivex2/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lio/reactivex2/disposables/RunnableDisposable;

    invoke-direct {v0, p0}, Lio/reactivex2/disposables/RunnableDisposable;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
