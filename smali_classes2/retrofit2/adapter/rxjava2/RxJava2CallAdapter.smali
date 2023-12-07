.class final Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final isAsync:Z

.field private final isBody:Z

.field private final isCompletable:Z

.field private final isFlowable:Z

.field private final isMaybe:Z

.field private final isResult:Z

.field private final isSingle:Z

.field private final responseType:Ljava/lang/reflect/Type;

.field private final scheduler:Lio/reactivex/Scheduler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/Scheduler;ZZZZZZZ)V
    .locals 0
    .param p2    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->responseType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/Scheduler;

    iput-boolean p3, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isAsync:Z

    iput-boolean p4, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isResult:Z

    iput-boolean p5, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isBody:Z

    iput-boolean p6, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isFlowable:Z

    iput-boolean p7, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isSingle:Z

    iput-boolean p8, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isMaybe:Z

    iput-boolean p9, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isCompletable:Z

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isAsync:Z

    if-eqz v0, :cond_0

    new-instance v0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava2/CallEnqueueObservable;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava2/CallExecuteObservable;-><init>(Lretrofit2/Call;)V

    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isResult:Z

    if-eqz p1, :cond_1

    new-instance p1, Lretrofit2/adapter/rxjava2/ResultObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava2/ResultObservable;-><init>(Lio/reactivex/Observable;)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isBody:Z

    if-eqz p1, :cond_2

    new-instance p1, Lretrofit2/adapter/rxjava2/BodyObservable;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava2/BodyObservable;-><init>(Lio/reactivex/Observable;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->scheduler:Lio/reactivex/Scheduler;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    :cond_3
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isFlowable:Z

    if-eqz v0, :cond_4

    sget-object p0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p0

    return-object p0

    :cond_4
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isSingle:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lio/reactivex/Observable;->singleOrError()Lio/reactivex/Single;

    move-result-object p0

    return-object p0

    :cond_5
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isMaybe:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lio/reactivex/Observable;->singleElement()Lio/reactivex/Maybe;

    move-result-object p0

    return-object p0

    :cond_6
    iget-boolean p0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->isCompletable:Z

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object p0

    return-object p0

    :cond_7
    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lretrofit2/adapter/rxjava2/RxJava2CallAdapter;->responseType:Ljava/lang/reflect/Type;

    return-object p0
.end method
