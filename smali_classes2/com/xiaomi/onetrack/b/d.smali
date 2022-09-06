.class Lcom/xiaomi/onetrack/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/onetrack/b/a$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/a$a;Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/d;->b:Lcom/xiaomi/onetrack/b/a$a;

    iput-object p2, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 460
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/util/List;)V

    .line 461
    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/b/d;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
