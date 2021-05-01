.class Lcom/xiaomi/onetrack/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/b/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/k;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/m;->a:Lcom/xiaomi/onetrack/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/m;->a:Lcom/xiaomi/onetrack/b/k;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/k;->a(Lcom/xiaomi/onetrack/b/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/xiaomi/onetrack/a/c;->b()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/b/m;->a:Lcom/xiaomi/onetrack/b/k;

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/k;->a(Lcom/xiaomi/onetrack/b/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
