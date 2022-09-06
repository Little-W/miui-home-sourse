.class Lcom/xiaomi/onetrack/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;J)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/p;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/onetrack/api/p;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneTrackImp"

    const-string v1, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    .line 514
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    const-string v1, "onetrack_pa"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 518
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/p;->a:Ljava/lang/String;

    const-string v3, "onetrack_pa"

    iget-wide v4, p0, Lcom/xiaomi/onetrack/api/p;->b:J

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v9

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/p;->c:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v10

    invoke-static/range {v2 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePageEndData error:"

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
