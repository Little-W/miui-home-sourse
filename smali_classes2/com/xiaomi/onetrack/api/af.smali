.class Lcom/xiaomi/onetrack/api/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/xiaomi/onetrack/api/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/g;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/api/g;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/af;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    iput-boolean p4, p0, Lcom/xiaomi/onetrack/api/af;->c:Z

    iput-object p5, p0, Lcom/xiaomi/onetrack/api/af;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->g(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->h(Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/api/af;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/af;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uid"

    .line 259
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid_type"

    .line 260
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/af;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/api/g;

    const-string v2, "ot_login"

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/g;->b(Lcom/xiaomi/onetrack/api/g;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/g;->a(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/g;->c(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/g;->d(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/onetrack/api/c;->c(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/af;->e:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/g;->e(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v1

    const-string v2, "ot_login"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login error:"

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
