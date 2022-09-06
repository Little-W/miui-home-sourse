.class Lcom/xiaomi/onetrack/api/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/onetrack/api/aj;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/aj;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaomi/onetrack/api/ak;->b:Lcom/xiaomi/onetrack/api/aj;

    iput p2, p0, Lcom/xiaomi/onetrack/api/ak;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/xiaomi/onetrack/api/ak;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 99
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V

    .line 100
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V

    .line 101
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    :cond_1
    return-void
.end method
