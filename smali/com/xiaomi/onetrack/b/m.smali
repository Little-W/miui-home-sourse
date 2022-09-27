.class Lcom/xiaomi/onetrack/b/m;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/b/m$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/b/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/b/l;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaomi/onetrack/b/m;->a:Lcom/xiaomi/onetrack/b/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/onetrack/b/m;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/b/m;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 126
    new-instance p1, Lcom/xiaomi/onetrack/b/n;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/b/n;-><init>(Lcom/xiaomi/onetrack/b/m;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/b/m$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/b/m;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
