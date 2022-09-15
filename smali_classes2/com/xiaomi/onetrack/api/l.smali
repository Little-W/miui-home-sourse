.class Lcom/xiaomi/onetrack/api/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;ZLjava/util/Map;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/l;->a:Z

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 360
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/api/l;->a:Z

    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 362
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->u()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->w()Ljava/lang/String;

    move-result-object v1

    const-string v3, "uid"

    .line 365
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uid_type"

    .line 366
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    const-string v1, "ot_logout"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 369
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/onetrack/api/c;->d(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v1

    const-string v2, "ot_logout"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->v()V

    .line 373
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logout error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
