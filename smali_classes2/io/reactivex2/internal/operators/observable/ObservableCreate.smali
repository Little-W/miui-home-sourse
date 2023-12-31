.class public final Lio/reactivex2/internal/operators/observable/ObservableCreate;
.super Lio/reactivex2/Observable;
.source "ObservableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex2/internal/operators/observable/ObservableCreate$SerializedEmitter;,
        Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex2/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex2/ObservableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex2/ObservableOnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex2/ObservableOnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/ObservableOnSubscribe<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex2/Observable;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex2/internal/operators/observable/ObservableCreate;->source:Lio/reactivex2/ObservableOnSubscribe;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 36
    new-instance v0, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;

    invoke-direct {v0, p1}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Lio/reactivex2/Observer;)V

    .line 37
    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 40
    :try_start_0
    iget-object p0, p0, Lio/reactivex2/internal/operators/observable/ObservableCreate;->source:Lio/reactivex2/ObservableOnSubscribe;

    invoke-interface {p0, v0}, Lio/reactivex2/ObservableOnSubscribe;->subscribe(Lio/reactivex2/ObservableEmitter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 42
    invoke-static {p0}, Lio/reactivex2/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v0, p0}, Lio/reactivex2/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
