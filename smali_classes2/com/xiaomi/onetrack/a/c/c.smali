.class Lcom/xiaomi/onetrack/a/c/c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/a/c/c$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/c/b;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaomi/onetrack/a/c/c;->a:Lcom/xiaomi/onetrack/a/c/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/onetrack/a/c/c;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/a/c/c;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/c/c;->a:Lcom/xiaomi/onetrack/a/c/b;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/c/b;->a(Lcom/xiaomi/onetrack/a/c/b;)Lcom/xiaomi/onetrack/a/c/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/xiaomi/onetrack/a/c/c;->a:Lcom/xiaomi/onetrack/a/c/b;

    invoke-static {p1}, Lcom/xiaomi/onetrack/a/c/b;->a(Lcom/xiaomi/onetrack/a/c/b;)Lcom/xiaomi/onetrack/a/c/b$a;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/xiaomi/onetrack/a/c/b$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/a/c/c$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/a/c/c;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
