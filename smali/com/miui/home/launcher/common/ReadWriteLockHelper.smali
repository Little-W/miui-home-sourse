.class public Lcom/miui/home/launcher/common/ReadWriteLockHelper;
.super Ljava/lang/Object;
.source "ReadWriteLockHelper.java"


# instance fields
.field final r:Ljava/util/concurrent/locks/Lock;

.field final rwl:Ljava/util/concurrent/locks/ReadWriteLock;

.field final w:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->rwl:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 15
    iget-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->rwl:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->r:Ljava/util/concurrent/locks/Lock;

    .line 16
    iget-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->rwl:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->w:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public runRead(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->r:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public runWrite(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    iget-object p1, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/home/launcher/common/ReadWriteLockHelper;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
