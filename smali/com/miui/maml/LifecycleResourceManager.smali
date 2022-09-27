.class public Lcom/miui/maml/LifecycleResourceManager;
.super Lcom/miui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lcom/miui/maml/ResourceLoader;JJ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 20
    iput-wide p2, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    .line 21
    iput-wide p4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    return-void
.end method


# virtual methods
.method public checkCache()V
    .locals 10

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    sget-wide v2, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/miui/maml/LifecycleResourceManager;->mCheckTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "LifecycleResourceManager"

    const-string v3, "begin check cache... "

    .line 29
    invoke-static {v2, v3}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v3, p0, Lcom/miui/maml/LifecycleResourceManager;->mBitmapKeysLock:Ljava/lang/Object;

    monitor-enter v3

    .line 32
    :try_start_0
    iget-object v4, p0, Lcom/miui/maml/LifecycleResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    sget-object v6, Lcom/miui/maml/LifecycleResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v6, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/maml/ResourceManager$BitmapInfo;

    if-eqz v6, :cond_1

    .line 34
    iget-wide v6, v6, Lcom/miui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/miui/maml/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 35
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "LifecycleResourceManager"

    .line 40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove cache: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v5, Lcom/miui/maml/LifecycleResourceManager;->sBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v5, v4}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v5, p0, Lcom/miui/maml/LifecycleResourceManager;->mBitmapKeys:Landroidx/collection/ArraySet;

    invoke-virtual {v5, v4}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sput-wide v0, Lcom/miui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    return-void

    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/maml/ResourceManager;->finish(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/LifecycleResourceManager;->checkCache()V

    return-void
.end method
