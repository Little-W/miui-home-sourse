.class Lcom/xiaomi/onetrack/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/l;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/a/l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneTrackImp"

    const-string v1, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    .line 413
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    const-string v1, "onetrack_pa"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/l;->a:Ljava/lang/String;

    const-string v2, "onetrack_pa"

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaomi/onetrack/a/l;->b:Z

    invoke-static {v1, v2, v3, v0, v4}, Lcom/xiaomi/onetrack/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v1

    const-string v2, "onetrack_pa"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OneTrackImp"

    const-string v1, "trackPageStartAuto"

    .line 419
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto trackPageStartAuto error: "

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
