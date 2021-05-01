.class Lcom/xiaomi/onetrack/api/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/api/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/f;Z)V
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/x;->b:Lcom/xiaomi/onetrack/api/f;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/x;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/x;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->d(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/x;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/v;->a(Z)V

    .line 765
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/x;->b:Lcom/xiaomi/onetrack/api/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/f;->a(Lcom/xiaomi/onetrack/api/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/x;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Z)V

    return-void
.end method
