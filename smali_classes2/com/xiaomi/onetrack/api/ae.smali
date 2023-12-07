.class Lcom/xiaomi/onetrack/api/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/api/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/m;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/m;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/ae;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->e(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/ae;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/v;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ae;->b:Lcom/xiaomi/onetrack/api/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/m;->b(Lcom/xiaomi/onetrack/api/m;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Lcom/xiaomi/onetrack/api/ae;->a:Z

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Z)V

    return-void
.end method
