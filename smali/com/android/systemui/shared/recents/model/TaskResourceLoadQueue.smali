.class Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;
.super Ljava/lang/Object;


# instance fields
.field mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method addTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->containsTaskObject(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method clearTasks()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method containsTaskObject(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    return p0
.end method

.method nextTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method removeTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
