.class Lcom/xiaomi/onetrack/api/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aa;->g:Lcom/xiaomi/onetrack/api/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aa;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/aa;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/aa;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/onetrack/api/aa;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/onetrack/api/aa;->e:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/onetrack/api/aa;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->g:Lcom/xiaomi/onetrack/api/f;

    const-string v1, "onetrack_bug_report"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/f;->b(Lcom/xiaomi/onetrack/api/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 205
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->g:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->e(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v0

    const-string v1, "onetrack_bug_report"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aa;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/aa;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/aa;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aa;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/aa;->e:Ljava/lang/String;

    iget-wide v7, p0, Lcom/xiaomi/onetrack/api/aa;->f:J

    iget-object v9, p0, Lcom/xiaomi/onetrack/api/aa;->g:Lcom/xiaomi/onetrack/api/f;

    .line 206
    invoke-static {v9}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v9

    iget-object v10, p0, Lcom/xiaomi/onetrack/api/aa;->g:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v10}, Lcom/xiaomi/onetrack/api/f;->c(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v10

    iget-object v12, p0, Lcom/xiaomi/onetrack/api/aa;->g:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v12}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v12

    invoke-static/range {v2 .. v12}, Lcom/xiaomi/onetrack/api/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/v;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackException error: "

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
