.class public Lcom/xiaomi/onetrack/a/c/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "PollingUploader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 7

    .line 19
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PollingUploader"

    const-string v1, "\u5373\u5c06\u8bfb\u53d6\u6570\u636e\u5e93\u5e76\u4e0a\u4f20\u6570\u636e"

    .line 22
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    goto/16 :goto_2

    .line 28
    :cond_2
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/a;->d()V

    .line 29
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/a/a;->b()Lcom/xiaomi/onetrack/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 30
    iget-object v2, v1, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_1

    .line 34
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v4, v1, Lcom/xiaomi/onetrack/a/c/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/onetrack/a/b/a;

    .line 37
    invoke-virtual {v5}, Lcom/xiaomi/onetrack/a/b/a;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;)Z

    move-result v6

    .line 38
    invoke-virtual {v5}, Lcom/xiaomi/onetrack/a/b/a;->b()I

    move-result v5

    if-eqz v6, :cond_4

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 46
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaomi/onetrack/a/a;->a(Ljava/util/ArrayList;)I

    .line 48
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 49
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/xiaomi/onetrack/a/a;->b(Ljava/util/ArrayList;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 52
    iget-boolean v1, v1, Lcom/xiaomi/onetrack/a/c/a;->c:Z

    if-eqz v1, :cond_1

    const-string v0, "PollingUploader"

    const-string v1, "No more ad monitor records"

    .line 54
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    :goto_1
    const-string v0, "PollingUploader"

    const-string v1, "\u6ee1\u8db3\u6761\u4ef6\u7684adMonitor\u8bb0\u5f55\u4e3a\u7a7a\uff0c\u5373\u5c06\u8fd4\u56de"

    .line 31
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PollingUploader"

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadData Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static b()Z
    .locals 6

    const-string v0, "PollingUploader"

    .line 66
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "PollingUploader"

    const-string v2, "the device is not provisioned, stop poll!"

    .line 67
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 71
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PollingUploader"

    const-string v2, "network is unconnected, stop poll!"

    .line 72
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 76
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/a;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const-string v0, "PollingUploader"

    const-string v2, "no data remain in db, stop poll!"

    .line 77
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
