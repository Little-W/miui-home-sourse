.class Lcom/xiaomi/onetrack/api/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/ao;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aq;->a:Lcom/xiaomi/onetrack/api/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/onetrack/api/aq;->a:Lcom/xiaomi/onetrack/api/ao;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/ao;->a(Lcom/xiaomi/onetrack/api/ao;)V

    return-void
.end method
