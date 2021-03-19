.class Lcom/xiaomi/onetrack/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/f/b;

.field final synthetic b:Lcom/xiaomi/onetrack/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/b;Lcom/xiaomi/onetrack/f/b;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/d;->b:Lcom/xiaomi/onetrack/c/b;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/d;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/d;->b:Lcom/xiaomi/onetrack/c/b;

    iget-object v1, p0, Lcom/xiaomi/onetrack/c/d;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/c/b;->a(Lcom/xiaomi/onetrack/c/b;Lcom/xiaomi/onetrack/f/b;)V

    const-string v0, "EventManager"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/d;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/c/d;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/f/b;->f()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/d;->a:Lcom/xiaomi/onetrack/f/b;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/f/b;->e()I

    move-result v0

    .line 105
    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/onetrack/c/m;->a(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EventManager"

    const-string v2, "EventManager.addEvent exception: "

    .line 107
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
