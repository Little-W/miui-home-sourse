.class Lretrofit2/Platform$Android;
.super Lretrofit2/Platform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Platform$Android$MainThreadExecutor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit2/CallAdapter$Factory;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance p0, Lretrofit2/ExecutorCallAdapterFactory;

    invoke-direct {p0, p1}, Lretrofit2/ExecutorCallAdapterFactory;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lretrofit2/Platform$Android$MainThreadExecutor;

    invoke-direct {p0}, Lretrofit2/Platform$Android$MainThreadExecutor;-><init>()V

    return-object p0
.end method
