.class final Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;
.super Ljava/util/concurrent/atomic/AtomicReference;

# interfaces
.implements Lio/reactivex2/SingleObserver;
.implements Lio/reactivex2/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/operators/single/SingleSubscribeOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscribeOnObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex2/disposables/Disposable;",
        ">;",
        "Lio/reactivex2/SingleObserver<",
        "TT;>;",
        "Lio/reactivex2/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61283b9e254a3eafL


# instance fields
.field final downstream:Lio/reactivex2/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final source:Lio/reactivex2/SingleSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/SingleSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final task:Lio/reactivex2/internal/disposables/SequentialDisposable;


# direct methods
.method constructor <init>(Lio/reactivex2/SingleObserver;Lio/reactivex2/SingleSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/SingleObserver<",
            "-TT;>;",
            "Lio/reactivex2/SingleSource<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/SingleObserver;

    iput-object p2, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->source:Lio/reactivex2/SingleSource;

    new-instance p1, Lio/reactivex2/internal/disposables/SequentialDisposable;

    invoke-direct {p1}, Lio/reactivex2/internal/disposables/SequentialDisposable;-><init>()V

    iput-object p1, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->task:Lio/reactivex2/internal/disposables/SequentialDisposable;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p0, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->task:Lio/reactivex2/internal/disposables/SequentialDisposable;

    invoke-virtual {p0}, Lio/reactivex2/internal/disposables/SequentialDisposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex2/disposables/Disposable;

    invoke-static {p0}, Lio/reactivex2/internal/disposables/DisposableHelper;->isDisposed(Lio/reactivex2/disposables/Disposable;)Z

    move-result p0

    return p0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex2/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex2/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lio/reactivex2/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex2/disposables/Disposable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->downstream:Lio/reactivex2/SingleObserver;

    invoke-interface {p0, p1}, Lio/reactivex2/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex2/internal/operators/single/SingleSubscribeOn$SubscribeOnObserver;->source:Lio/reactivex2/SingleSource;

    invoke-interface {v0, p0}, Lio/reactivex2/SingleSource;->subscribe(Lio/reactivex2/SingleObserver;)V

    return-void
.end method
