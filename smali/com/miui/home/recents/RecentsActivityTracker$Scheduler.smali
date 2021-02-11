.class Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;
.super Ljava/lang/Object;
.source "RecentsActivityTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/RecentsActivityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Scheduler"
.end annotation


# instance fields
.field private mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

.field private mPendingTracker:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/recents/RecentsActivityTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/RecentsActivityTracker$1;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clearReference(Lcom/miui/home/recents/RecentsActivityTracker;)Z
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 125
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 127
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initIfPending(Lcom/miui/home/recents/RecentsActivity;Z)Z
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsActivityTracker;

    if-eqz v0, :cond_1

    .line 114
    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/RecentsActivityTracker;->access$200(Lcom/miui/home/recents/RecentsActivityTracker;Lcom/miui/home/recents/RecentsActivity;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x1

    .line 117
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 119
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/miui/home/recents/RecentsActivityTracker;->access$100()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/RecentsActivity;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsActivity;->isStarted()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->initIfPending(Lcom/miui/home/recents/RecentsActivity;Z)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized schedule(Lcom/miui/home/recents/RecentsActivityTracker;)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mPendingTracker:Ljava/lang/ref/WeakReference;

    .line 96
    iget-object p1, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {p1}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/RecentsActivityTracker$Scheduler;->mMainThreadExecutor:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
