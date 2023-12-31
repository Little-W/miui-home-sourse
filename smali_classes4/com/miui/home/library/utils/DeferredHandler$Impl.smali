.class Lcom/miui/home/library/utils/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/utils/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/library/utils/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/miui/home/library/utils/DeferredHandler;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/library/utils/DeferredHandler;Lcom/miui/home/library/utils/DeferredHandler$1;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/miui/home/library/utils/DeferredHandler$Impl;-><init>(Lcom/miui/home/library/utils/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {p1}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object p1

    monitor-enter p1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {v0}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    monitor-exit p1

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {v0}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 47
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    iget-object p1, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-static {p1}, Lcom/miui/home/library/utils/DeferredHandler;->access$100(Lcom/miui/home/library/utils/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_1
    iget-object p0, p0, Lcom/miui/home/library/utils/DeferredHandler$Impl;->this$0:Lcom/miui/home/library/utils/DeferredHandler;

    invoke-virtual {p0}, Lcom/miui/home/library/utils/DeferredHandler;->scheduleNextLocked()V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 47
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/home/library/utils/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method
