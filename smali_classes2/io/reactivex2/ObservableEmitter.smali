.class public interface abstract Lio/reactivex2/ObservableEmitter;
.super Ljava/lang/Object;
.source "ObservableEmitter.java"

# interfaces
.implements Lio/reactivex2/Emitter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/Emitter<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract isDisposed()Z
.end method

.method public abstract setCancellable(Lio/reactivex2/functions/Cancellable;)V
.end method

.method public abstract setDisposable(Lio/reactivex2/disposables/Disposable;)V
.end method
