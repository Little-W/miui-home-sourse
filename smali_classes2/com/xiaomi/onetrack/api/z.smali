.class Lcom/xiaomi/onetrack/api/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaomi/onetrack/api/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/g;Z)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/z;->b:Lcom/xiaomi/onetrack/api/g;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/api/z;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/z;->b:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/g;->d(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/util/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/z;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/v;->a(Z)V

    .line 772
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/z;->b:Lcom/xiaomi/onetrack/api/g;

    invoke-static {v0}, Lcom/xiaomi/onetrack/api/g;->a(Lcom/xiaomi/onetrack/api/g;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/r;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/onetrack/api/z;->a:Z

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;Z)V

    return-void
.end method
