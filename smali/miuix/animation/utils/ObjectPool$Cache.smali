.class Lmiuix/animation/utils/ObjectPool$Cache;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field final pool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final shrinkTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Lmiuix/animation/utils/ObjectPool$Cache$1;

    invoke-direct {v0, p0}, Lmiuix/animation/utils/ObjectPool$Cache$1;-><init>(Lmiuix/animation/utils/ObjectPool$Cache;)V

    iput-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/utils/ObjectPool$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lmiuix/animation/utils/ObjectPool$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method varargs declared-synchronized acquireObject(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1, p2}, Lmiuix/animation/utils/ObjectPool;->access$000(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized releaseObject(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lmiuix/animation/utils/ObjectPool;->access$100()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    iget-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 44
    invoke-static {}, Lmiuix/animation/utils/ObjectPool;->access$100()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->shrinkTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized shrink()V
    .locals 2

    monitor-enter p0

    .line 49
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lmiuix/animation/utils/ObjectPool$Cache;->pool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 52
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
