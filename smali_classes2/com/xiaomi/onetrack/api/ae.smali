.class Lcom/xiaomi/onetrack/api/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 223
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ae;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 224
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 225
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "H"

    .line 226
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "H"

    .line 230
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 231
    new-instance v11, Lcom/xiaomi/onetrack/api/d;

    invoke-direct {v11, v3}, Lcom/xiaomi/onetrack/api/d;-><init>(Lorg/json/JSONObject;)V

    .line 232
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v11}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/onetrack/api/h;->c(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v3, "B"

    .line 236
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 237
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-virtual {v11}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/api/h;->b(Lcom/xiaomi/onetrack/api/h;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 238
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v6

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->d(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v7

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v9

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v2}, Lcom/xiaomi/onetrack/api/h;->f(Lcom/xiaomi/onetrack/api/h;)Z

    move-result v10

    move-object v4, v11

    invoke-static/range {v4 .. v10}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/d;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;Z)Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v3}, Lcom/xiaomi/onetrack/api/h;->g(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/api/e;

    move-result-object v3

    invoke-virtual {v11}, Lcom/xiaomi/onetrack/api/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/xiaomi/onetrack/api/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "OneTrackImp"

    const-string v3, "h5 json is empty or has no \"H\" or \"B\" "

    .line 227
    invoke-static {v2, v3}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackEventFromH5 error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
