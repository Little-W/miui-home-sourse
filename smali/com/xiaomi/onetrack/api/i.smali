.class Lcom/xiaomi/onetrack/api/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;ZLjava/util/Map;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/f;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/i;->a:Z

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/i;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 310
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/api/i;->a:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/i;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 312
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->u()Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->w()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    .line 314
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid_type"

    .line 315
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/f;

    const-string v2, "ot_logout"

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/onetrack/api/c;->d(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/i;->c:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v1

    const-string v2, "ot_logout"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->v()V

    .line 321
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 323
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
