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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mProvider:Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;

    return-void
.end method

.method public static synthetic lambda$get$0(Lcom/miui/home/recents/util/MainThreadInitializedObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TT;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mProvider:Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;

    invoke-interface {v0, p1}, Lcom/miui/home/recents/util/MainThreadInitializedObject$ObjectProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/util/-$$Lambda$MainThreadInitializedObject$ax24uGvMAku6PhWWRWLcnOcC28c;-><init>(Lcom/miui/home/recents/util/MainThreadInitializedObject;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 51
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object p1
.end method

.method public getNoCreate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/miui/home/recents/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object v0
.end method
