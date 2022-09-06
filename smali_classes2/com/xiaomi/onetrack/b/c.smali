.class final Lcom/xiaomi/onetrack/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "AppConfigUpdater"

    const-string v1, "checkAppConfigVersion start"

    .line 399
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/c;->a:Lorg/json/JSONObject;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 402
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 403
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, ""

    goto :goto_1

    :cond_0
    const-string v4, "appId"

    .line 404
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, "AppConfigUpdater"

    .line 405
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    const-string v5, "version"

    .line 407
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 408
    :goto_2
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/onetrack/b/h;->e(Ljava/lang/String;)I

    move-result v5

    .line 409
    invoke-static {v4}, Lcom/xiaomi/onetrack/b/a;->c(Ljava/lang/String;)Z

    move-result v6

    .line 410
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    const-string v9, "AppConfigUpdater"

    .line 411
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "local version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", server version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", canUpdate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isScheduling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_3

    if-le v3, v5, :cond_3

    if-eqz v6, :cond_3

    if-nez v7, :cond_3

    .line 414
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 415
    iput v1, v3, Landroid/os/Message;->what:I

    .line 416
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v9, 0x413b774000000000L    # 1800000.0

    mul-double/2addr v5, v9

    double-to-long v5, v5

    const-string v7, "AppConfigUpdater"

    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the message will be handled after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->b()Lcom/xiaomi/onetrack/b/a$a;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v6}, Lcom/xiaomi/onetrack/b/a$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 420
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method
