.class Lcom/xiaomi/onetrack/api/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ad;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/ad;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OneTrackImp"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adEventAppId is null,Please configure,event name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 202
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v8

    .line 203
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 204
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Lorg/json/JSONArray;Z)Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ad;->d:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v1}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ad;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track map error: "

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
