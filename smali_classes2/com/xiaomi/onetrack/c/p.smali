.class Lcom/xiaomi/onetrack/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/m;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/p;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/p;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/m;->a(Lcom/xiaomi/onetrack/c/m;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->b()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/p;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/m;->a(Lcom/xiaomi/onetrack/c/m;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
