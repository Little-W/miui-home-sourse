.class Lcom/xiaomi/onetrack/api/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/api/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/h;Z)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/h;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/ab;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->e(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/ab;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/v;->a(Z)V

    .line 842
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/ab;->b:Lcom/xiaomi/onetrack/api/h;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/h;->a(Lcom/xiaomi/onetrack/api/h;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/ab;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Z)V

    return-void
.end method
