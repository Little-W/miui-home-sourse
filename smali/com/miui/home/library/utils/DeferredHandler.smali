.class public Lcom/miui/home/library/utils/DeferredHandler;
.super Ljava/lang/Object;
.source "DeferredHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;,
        Lcom/miui/home/library/utils/DeferredHandler$Impl;
    }
.end annotation


# instance fields
.field private mDeferedDelay:J

.field private mHandler:Lcom/miui/home/library/utils/DeferredHandler$Impl;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    .line 35
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    .line 36
    new-instance v0, Lcom/miui/home/library/utils/DeferredHandler$Impl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/library/utils/DeferredHandler$Impl;-><init>(Lcom/miui/home/library/utils/DeferredHandler;Lcom/miui/home/library/utils/DeferredHandler$1;)V

    iput-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mHandler:Lcom/miui/home/library/utils/DeferredHandler$Impl;

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mDeferedDelay:J

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 99
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/library/utils/DeferredHandler;->scheduleNextLocked()V

    .line 82
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method scheduleNextLocked()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 105
    instance-of v0, v0, Lcom/miui/home/library/utils/DeferredHandler$IdleRunnable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v1, p0, Lcom/miui/home/library/utils/DeferredHandler;->mHandler:Lcom/miui/home/library/utils/DeferredHandler$Impl;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mDeferedDelay:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 109
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler;->mHandler:Lcom/miui/home/library/utils/DeferredHandler$Impl;

    invoke-virtual {v0, v3}, Lcom/miui/home/library/utils/DeferredHandler$Impl;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/miui/home/library/utils/DeferredHandler;->mHandler:Lcom/miui/home/library/utils/DeferredHandler$Impl;

    invoke-virtual {v2, v3, v0, v1}, Lcom/miui/home/library/utils/DeferredHandler$Impl;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setDeferedDelay(J)V
    .locals 0

    .line 118
    iput-wide p1, p0, Lcom/miui/home/library/utils/DeferredHandler;->mDeferedDelay:J

    return-void
.end method
