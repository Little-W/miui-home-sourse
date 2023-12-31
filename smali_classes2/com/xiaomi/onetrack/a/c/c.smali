.class public Lcom/xiaomi/onetrack/a/c/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "AdMonitorUploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 8

    const-string v0, "AdMonitorUploader"

    .line 18
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/c;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "\u5373\u5c06\u8bfb\u53d6\u6570\u636e\u5e93\u5e76\u4e0a\u4f20\u6570\u636e"

    .line 21
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    goto/16 :goto_2

    .line 27
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->d()V

    .line 28
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/a/a;->b()Lcom/xiaomi/onetrack/a/c/a;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 29
    iget-object v3, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    goto :goto_1

    .line 33
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v5, v2, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/onetrack/a/b/a;

    .line 36
    invoke-virtual {v6}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;)Z

    move-result v7

    .line 37
    invoke-virtual {v6}, Lcom/xiaomi/onetrack/a/b/a;->b()I

    move-result v6

    if-eqz v7, :cond_4

    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 45
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/util/ArrayList;)I

    .line 47
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 48
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/xiaomi/onetrack/a/a;->b(Ljava/util/ArrayList;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 51
    iget-boolean v2, v2, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    if-eqz v2, :cond_1

    const-string v1, "No more ad monitor records"

    .line 53
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string v1, "\u6ee1\u8db3\u6761\u4ef6\u7684adMonitor\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 30
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadData Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static b()Z
    .locals 7

    const-string v0, "AdMonitorUploader"

    .line 64
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "the device is not provisioned, stop poll!"

    .line 65
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 69
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "network is unconnected, stop poll!"

    .line 70
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 74
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    const-string v1, "no data remain in db, stop poll!"

    .line 75
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
