.class Lcom/xiaomi/onetrack/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/x;->f:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/x;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/x;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/a/x;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/onetrack/a/x;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/onetrack/a/x;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/x;->f:Lcom/xiaomi/onetrack/a/f;

    const-string v1, "onetrack_bug_report"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 180
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/x;->f:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v0

    const-string v1, "onetrack_bug_report"

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/x;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/x;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/a/x;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/onetrack/a/x;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/onetrack/a/x;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaomi/onetrack/a/x;->f:Lcom/xiaomi/onetrack/a/f;

    .line 181
    invoke-static {v7}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/onetrack/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-interface {v0, v1, v2}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackException error: "

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
