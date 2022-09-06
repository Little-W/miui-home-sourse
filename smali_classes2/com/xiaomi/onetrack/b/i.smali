.class Lcom/xiaomi/onetrack/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/h;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ConfigDbManager"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/i;->b:Lcom/xiaomi/onetrack/b/h;

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/i;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/b/h;->a(Lcom/xiaomi/onetrack/b/h;Ljava/util/ArrayList;)V

    return-void
.end method
