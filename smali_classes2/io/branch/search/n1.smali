.class public Lio/branch/search/n1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/n1$d;,
        Lio/branch/search/n1$c;
    }
.end annotation


# static fields
.field public static final h:[I


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public b:Landroid/app/usage/NetworkStatsManager;

.field public final c:Lio/branch/search/l;

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/branch/search/n1$d;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Lio/branch/search/n1$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/branch/search/n1;->h:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>(Lio/branch/search/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    iput-object p1, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/n1;->f:J

    invoke-virtual {p0}, Lio/branch/search/n1;->i()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/n1;)Lio/branch/search/n1$c;
    .locals 0

    iget-object p0, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/n1;Landroid/net/Network;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/n1;->a(Landroid/net/Network;Z)V

    return-void
.end method

.method public static synthetic b(Lio/branch/search/n1;)Landroid/net/ConnectivityManager;
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/n1;)V
    .locals 0

    invoke-virtual {p0}, Lio/branch/search/n1;->g()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lio/branch/search/n1$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/n1$d;

    invoke-static {v3}, Lio/branch/search/n1$d;->c(Lio/branch/search/n1$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public a()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    sget-object v0, Lio/branch/search/n1;->h:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final a(Landroid/net/Network;)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "wifi"

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "cellular"

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ethernet"

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "bluetooth"

    invoke-direct {p0, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/n1$d;

    invoke-virtual {v1, p1, p2}, Lio/branch/search/n1$d;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final declared-synchronized a(Landroid/net/Network;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/n1$d;

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lio/branch/search/n1;->a(Landroid/net/Network;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/branch/search/n1;->a(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/n1$d;

    iget-object v2, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lio/branch/search/n1$d;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {v0, p0, v2, v1}, Lio/branch/search/n1$d;-><init>(Lio/branch/search/n1;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v1, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    const-string v1, "ConnectivityMonitor.setNetworkAvailable"

    const-string v2, "getNetworkTypeAndTransport failed even though network is available"

    invoke-virtual {p1, v1, v2}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lio/branch/search/n1$d;->a(Z)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    const-string p2, "ConnectivityMonitor.setNetworkAvailable"

    const-string v0, "Could not retrieve network availability."

    invoke-virtual {p1, p2, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    iget-object p1, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroid/app/usage/NetworkStats$Bucket;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "ConnectivityMonitor.addNetworkStatsToDiagnostics"

    if-nez p2, :cond_0

    iget-object p0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring null Bucket for network type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "rxb"

    :try_start_0
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "txb"

    :try_start_1
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "rxp"

    :try_start_2
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "txp"

    :try_start_3
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-virtual {p0, v0, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;J)V
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, v1, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/branch/search/n1$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "uptime"

    move-wide/from16 v12, p2

    :try_start_2
    invoke-virtual {v3, v12, v13}, Lio/branch/search/n1$d;->a(J)J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/branch/search/n1;->c()Landroid/app/usage/NetworkStatsManager;

    move-result-object v5

    invoke-static {v3}, Lio/branch/search/n1$d;->b(Lio/branch/search/n1$d;)I

    move-result v6

    const/4 v7, 0x0

    iget-wide v8, v1, Lio/branch/search/n1;->f:J

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, Landroid/app/usage/NetworkStatsManager;->querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v4

    invoke-static {v3}, Lio/branch/search/n1$d;->c(Lio/branch/search/n1$d;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, p1

    :try_start_3
    invoke-virtual {p0, v5, v4, v0, p1}, Lio/branch/search/n1;->a(Ljava/lang/String;Landroid/app/usage/NetworkStats$Bucket;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, p1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v6, p1

    move-wide/from16 v12, p2

    :goto_1
    :try_start_4
    iget-object v4, v1, Lio/branch/search/n1;->c:Lio/branch/search/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "ConnectivityMonitor.addUsageStatistics"

    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting network stats summary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/branch/search/n1$d;->c(Lio/branch/search/n1$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Lio/branch/search/d5;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "interval"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-wide v3, p0, Lio/branch/search/n1;->f:J

    sub-long v3, v0, v3

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lio/branch/search/n1;->a(Lorg/json/JSONObject;J)V

    invoke-virtual {p0, v2, p2}, Lio/branch/search/n1;->b(Lorg/json/JSONObject;Lio/branch/search/d5;)V

    const-string p2, "networks"

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    const-string v0, "ConnectivityMonitor.addDiagnostics"

    invoke-virtual {p2, v0, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lio/branch/search/n1;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lio/branch/search/n1;->a:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;Lio/branch/search/d5;)V
    .locals 8

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object v1, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-virtual {v1}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/KNetworkUsageCappingRule;

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/branch/search/n;->a(Lio/branch/search/KNetworkUsageCappingRule;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    iget-object v4, v4, Lio/branch/search/l;->f:Lio/branch/search/o3;

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "remainingBytes"

    :try_start_1
    new-instance v7, Lio/branch/search/n1$b;

    invoke-direct {v7, p0, v2, p2}, Lio/branch/search/n1$b;-><init>(Lio/branch/search/n1;Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/d5;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/branch/search/p3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v4, "bytes_remaining"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p2, "network_capping_rules"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    const-string p2, "ConnectivityMonitor.addNetworkCappingRules"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final c()Landroid/app/usage/NetworkStatsManager;
    .locals 2

    iget-object v0, p0, Lio/branch/search/n1;->b:Landroid/app/usage/NetworkStatsManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lio/branch/search/n1;->b:Landroid/app/usage/NetworkStatsManager;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lio/branch/search/n1;->a(Landroid/net/Network;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lio/branch/search/n1;->f()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":metered"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public e()Z
    .locals 5

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    :cond_1
    return v1

    :cond_2
    iget-object p0, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Landroid/net/Network;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/n1$d;

    if-eqz p0, :cond_3

    invoke-static {p0}, Lio/branch/search/n1$d;->a(Lio/branch/search/n1$d;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method public f()Z
    .locals 2

    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/n1;->j()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-virtual {v0}, Lio/branch/search/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/w1;->a(Landroid/content/Context;)Lio/branch/search/w1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/w1;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/branch/search/w1;->a(Landroid/content/Context;)Lio/branch/search/w1;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/w1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    iget-object v1, v0, Lio/branch/search/l;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/branch/search/l;->b()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-static {v0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/l;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    const-string v1, "maybeForceBundleDownload"

    invoke-virtual {p0, v1, v0}, Lio/branch/search/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/n1;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/branch/search/n1;->a(J)V

    return-void
.end method

.method public i()V
    .locals 5

    iget-object v0, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    sget-object v1, Lio/branch/search/n1;->h:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lio/branch/search/n1$c;

    iget-object v2, p0, Lio/branch/search/n1;->c:Lio/branch/search/l;

    invoke-direct {v1, p0, v2}, Lio/branch/search/n1$c;-><init>(Lio/branch/search/n1;Lio/branch/search/l;)V

    iput-object v1, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_2

    new-instance v1, Lio/branch/search/n1$a;

    invoke-direct {v1, p0, v0}, Lio/branch/search/n1$a;-><init>(Lio/branch/search/n1;Landroid/net/NetworkRequest$Builder;)V

    const-wide/16 v2, 0x3e8

    const/4 p0, 0x1

    invoke-static {p0, v2, v3, v1}, Lio/branch/search/y4;->a(IJLkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_1
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/branch/search/n1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/n1;->g:Lio/branch/search/n1$c;

    iget-object v0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lio/branch/search/n1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/branch/search/n1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
