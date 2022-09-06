.class Lcom/xiaomi/onetrack/api/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/util/Map;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    const-string v1, "ot_profile_set"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 270
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ag;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 271
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/onetrack/api/c;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ag;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->g(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v1

    const-string v2, "ot_profile_set"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserProfile map error:"

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
