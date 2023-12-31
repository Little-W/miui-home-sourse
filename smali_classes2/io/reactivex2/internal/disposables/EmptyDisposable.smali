.class public final enum Lio/reactivex2/internal/disposables/EmptyDisposable;
.super Ljava/lang/Enum;
.source "EmptyDisposable.java"

# interfaces
.implements Lio/reactivex2/internal/fuseable/QueueDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex2/internal/disposables/EmptyDisposable;",
        ">;",
        "Lio/reactivex2/internal/fuseable/QueueDisposable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex2/internal/disposables/EmptyDisposable;

.field public static final enum INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

.field public static final enum NEVER:Lio/reactivex2/internal/disposables/EmptyDisposable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lio/reactivex2/internal/disposables/EmptyDisposable;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lio/reactivex2/internal/disposables/EmptyDisposable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    .line 38
    new-instance v0, Lio/reactivex2/internal/disposables/EmptyDisposable;

    const/4 v2, 0x1

    const-string v3, "NEVER"

    invoke-direct {v0, v3, v2}, Lio/reactivex2/internal/disposables/EmptyDisposable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex2/internal/disposables/EmptyDisposable;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/reactivex2/internal/disposables/EmptyDisposable;

    .line 28
    sget-object v3, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    aput-object v3, v0, v1

    sget-object v1, Lio/reactivex2/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex2/internal/disposables/EmptyDisposable;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->$VALUES:[Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static complete(Lio/reactivex2/CompletableObserver;)V
    .locals 1

    .line 67
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p0, v0}, Lio/reactivex2/CompletableObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 68
    invoke-interface {p0}, Lio/reactivex2/CompletableObserver;->onComplete()V

    return-void
.end method

.method public static complete(Lio/reactivex2/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/MaybeObserver<",
            "*>;)V"
        }
    .end annotation

    .line 57
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p0, v0}, Lio/reactivex2/MaybeObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 58
    invoke-interface {p0}, Lio/reactivex2/MaybeObserver;->onComplete()V

    return-void
.end method

.method public static complete(Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex2/Observer<",
            "*>;)V"
        }
    .end annotation

    .line 52
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p0, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 53
    invoke-interface {p0}, Lio/reactivex2/Observer;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex2/CompletableObserver;)V
    .locals 1

    .line 72
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex2/CompletableObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 73
    invoke-interface {p1, p0}, Lio/reactivex2/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex2/MaybeObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex2/MaybeObserver<",
            "*>;)V"
        }
    .end annotation

    .line 82
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex2/MaybeObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 83
    invoke-interface {p1, p0}, Lio/reactivex2/MaybeObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex2/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex2/Observer<",
            "*>;)V"
        }
    .end annotation

    .line 62
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex2/Observer;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 63
    invoke-interface {p1, p0}, Lio/reactivex2/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lio/reactivex2/SingleObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/reactivex2/SingleObserver<",
            "*>;)V"
        }
    .end annotation

    .line 77
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex2/SingleObserver;->onSubscribe(Lio/reactivex2/disposables/Disposable;)V

    .line 78
    invoke-interface {p1, p0}, Lio/reactivex2/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex2/internal/disposables/EmptyDisposable;
    .locals 1

    .line 28
    const-class v0, Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object p0
.end method

.method public static values()[Lio/reactivex2/internal/disposables/EmptyDisposable;
    .locals 1

    .line 28
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->$VALUES:[Lio/reactivex2/internal/disposables/EmptyDisposable;

    invoke-virtual {v0}, [Lio/reactivex2/internal/disposables/EmptyDisposable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex2/internal/disposables/EmptyDisposable;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 48
    sget-object v0, Lio/reactivex2/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex2/internal/disposables/EmptyDisposable;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0

    .line 88
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 93
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p0, p1, 0x2

    return p0
.end method
