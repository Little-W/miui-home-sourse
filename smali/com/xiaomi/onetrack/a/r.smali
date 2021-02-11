.class Lcom/xiaomi/onetrack/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/a/r;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/r;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/onetrack/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/r;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track json error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
