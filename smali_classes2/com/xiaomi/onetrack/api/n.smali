.class Lcom/xiaomi/onetrack/api/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 470
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->t()J

    move-result-wide v0

    .line 471
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ac;->d(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->m(J)V

    .line 473
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    const-string v1, "onetrack_dau"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->a:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v1

    const-string v2, "onetrack_dau"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackDau error  e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
