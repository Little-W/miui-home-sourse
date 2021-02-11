.class Lcom/xiaomi/onetrack/a/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field final synthetic c:Z

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Lcom/xiaomi/onetrack/OneTrack$UserIdType;ZLjava/util/Map;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/aa;->e:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/aa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/aa;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    iput-boolean p4, p0, Lcom/xiaomi/onetrack/a/aa;->c:Z

    iput-object p5, p0, Lcom/xiaomi/onetrack/a/aa;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aa;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/v;->g(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aa;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/v;->h(Ljava/lang/String;)V

    .line 233
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/a/aa;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/aa;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uid"

    .line 237
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid_type"

    .line 238
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/aa;->b:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->getUserIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aa;->e:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/c;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/aa;->e:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v1

    const-string v2, "ot_login"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
