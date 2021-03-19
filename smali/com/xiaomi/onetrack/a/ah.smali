.class Lcom/xiaomi/onetrack/a/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/ag;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/ag;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/ag;->a(Lcom/xiaomi/onetrack/a/ag;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/ag;->a(Lcom/xiaomi/onetrack/a/ag;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 101
    monitor-exit v0

    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/ag;->a(Lcom/xiaomi/onetrack/a/ag;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-static {v4}, Lcom/xiaomi/onetrack/a/ag;->c(Lcom/xiaomi/onetrack/a/ag;)Lcom/xiaomi/onetrack/a/ai;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-static {v5}, Lcom/xiaomi/onetrack/a/ag;->b(Lcom/xiaomi/onetrack/a/ag;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/xiaomi/onetrack/a/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;)V

    .line 107
    sget-boolean v4, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v4, :cond_1

    const-string v4, "OneTrackSystemImp"

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data :"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/ah;->a:Lcom/xiaomi/onetrack/a/ag;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/ag;->a(Lcom/xiaomi/onetrack/a/ag;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 112
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackSystemImp"

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackCachedEvents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
