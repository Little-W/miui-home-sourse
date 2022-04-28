.class Lcom/xiaomi/onetrack/api/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/onetrack/api/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ab;->c:Lcom/xiaomi/onetrack/api/g;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/ab;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/ab;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->c:Lcom/xiaomi/onetrack/api/g;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ab;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/g;->a(Lcom/xiaomi/onetrack/api/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->c:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/g;->e(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/api/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/ab;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/ab;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/onetrack/api/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneTrackImp"

    .line 191
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
