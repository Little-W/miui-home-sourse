.class Lcom/xiaomi/onetrack/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/z;->c:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/z;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/z;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/z;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/xiaomi/onetrack/h/p;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 211
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/z;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/z;->c:Lcom/xiaomi/onetrack/a/f;

    const-string v1, "ot_profile_set"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/z;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/z;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/z;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/a/c;->a(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/z;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v1

    const-string v2, "ot_profile_set"

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserProfile single error:"

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
