.class Lcom/xiaomi/onetrack/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaomi/onetrack/b/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/f;Ljava/util/ArrayList;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/g;->b:Lcom/xiaomi/onetrack/b/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/g;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ConfigDbManager"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/g;->b:Lcom/xiaomi/onetrack/b/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/g;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/b/f;->a(Lcom/xiaomi/onetrack/b/f;Ljava/util/ArrayList;)V

    return-void
.end method
