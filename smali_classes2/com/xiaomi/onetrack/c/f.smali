.class Lcom/xiaomi/onetrack/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field final synthetic b:Lcom/xiaomi/onetrack/c/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/f;->b:Lcom/xiaomi/onetrack/c/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/f;->b:Lcom/xiaomi/onetrack/c/c;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/c/c;->a(Lcom/xiaomi/onetrack/c/c;Lcom/xiaomi/onetrack/f/b;)V

    .line 106
    invoke-static {}, Lcom/xiaomi/onetrack/a/a;->a()Lcom/xiaomi/onetrack/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/a/a;->a(Lcom/xiaomi/onetrack/f/b;)V

    const-string v0, "EventManager"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->g()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/f;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/f/b;->f()I

    move-result v0

    .line 109
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EventManager"

    const-string v2, "EventManager.addEvent exception: "

    .line 111
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
