.class Lcom/xiaomi/onetrack/api/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/r;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/r;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 149
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 150
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/r;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/r;->d:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/r;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track json error:"

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
