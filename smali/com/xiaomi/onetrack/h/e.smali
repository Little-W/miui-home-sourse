.class Lcom/xiaomi/onetrack/h/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/h/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/h/d;Landroid/os/Looper;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaomi/onetrack/h/e;->a:Lcom/xiaomi/onetrack/h/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/h/e;->a:Lcom/xiaomi/onetrack/h/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "hint"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/d;->a(Lcom/xiaomi/onetrack/h/d;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
