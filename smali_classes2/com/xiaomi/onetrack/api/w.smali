.class Lcom/xiaomi/onetrack/api/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

.field final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/w;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/w;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v4}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/w;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v1

    const-string v2, "ot_service_quality"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackNetAvailableEvent error: "

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
