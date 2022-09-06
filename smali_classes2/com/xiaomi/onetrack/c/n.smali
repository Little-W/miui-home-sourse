.class Lcom/xiaomi/onetrack/c/n;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/c/n$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/m;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/m;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaomi/onetrack/c/n;->a:Lcom/xiaomi/onetrack/c/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/onetrack/c/n;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/c/n;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 126
    new-instance p1, Lcom/xiaomi/onetrack/c/o;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/c/o;-><init>(Lcom/xiaomi/onetrack/c/n;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/c/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/c/n$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/c/n;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
