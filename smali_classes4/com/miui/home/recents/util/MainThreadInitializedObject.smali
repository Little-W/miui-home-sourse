.class public Lcom/miui/home/recents/util/MainThreadInitializedObject;
.super Ljava/lang/Object;
.source "MainThreadInitializedObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mProvider:Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;TP;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;TP;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mProvider:Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$wvFUXefFE8gsOfMf7c2115y2wRQ;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Landroid/content/Context;)V

    const-string p1, "main.thread.object"

    invoke-static {p1, v0}, Lcom/android/systemui/shared/recents/utilities/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$Ct0MUhqgOXzo92HEkT8py5JUWiQ;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 68
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TT;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mProvider:Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 52
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getNoCreate()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public synthetic lambda$get$0$MainThreadInitializedObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$get$1$MainThreadInitializedObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mProvider:Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$get$2$MainThreadInitializedObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
