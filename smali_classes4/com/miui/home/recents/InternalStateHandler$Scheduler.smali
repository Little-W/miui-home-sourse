.class Lcom/miui/home/recents/InternalStateHandler$Scheduler;
.super Ljava/lang/Object;
.source "InternalStateHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/InternalStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scheduler"
.end annotation


# instance fields
.field private mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mPendingHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/InternalStateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/InternalStateHandler$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/miui/home/recents/InternalStateHandler$Scheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReference(Lcom/miui/home/recents/InternalStateHandler;)Z
    .locals 1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 p1, 0x1

    .line 100
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 102
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initIfPending(Lcom/miui/home/launcher/Launcher;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/InternalStateHandler;

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v1, p1, p2}, Lcom/miui/home/recents/InternalStateHandler;->init(Lcom/miui/home/launcher/Launcher;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 89
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->clearReference(Lcom/miui/home/recents/InternalStateHandler;)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public run()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->initIfPending(Lcom/miui/home/launcher/Launcher;Z)Z

    return-void
.end method

.method public schedule(Lcom/miui/home/recents/InternalStateHandler;)V
    .locals 1

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mPendingHandler:Ljava/lang/ref/WeakReference;

    .line 69
    iget-object p1, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    if-nez p1, :cond_0

    .line 70
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 72
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object p1, p0, Lcom/miui/home/recents/InternalStateHandler$Scheduler;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
