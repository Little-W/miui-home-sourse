.class Lcom/xiaomi/onetrack/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/xiaomi/onetrack/c/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/d;Landroid/content/Intent;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/e;->b:Lcom/xiaomi/onetrack/c/d;

    iput-object p2, p0, Lcom/xiaomi/onetrack/c/e;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/xiaomi/onetrack/c/e;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "EventManager"

    const-string v2, "screen on/off"

    .line 89
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 92
    :goto_0
    invoke-static {}, Lcom/xiaomi/onetrack/c/q;->a()Lcom/xiaomi/onetrack/c/q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/onetrack/c/q;->a(IZ)V

    .line 93
    invoke-static {}, Lcom/xiaomi/onetrack/a/c/b;->a()Lcom/xiaomi/onetrack/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/a/c/b;->b()V

    :cond_2
    return-void
.end method
