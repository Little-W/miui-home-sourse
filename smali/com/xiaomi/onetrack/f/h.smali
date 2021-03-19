.class Lcom/xiaomi/onetrack/f/h;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/f/h$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/f/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/f/f;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaomi/onetrack/f/h;->a:Lcom/xiaomi/onetrack/f/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/onetrack/f/h;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/f/h;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 50
    new-instance p1, Lcom/xiaomi/onetrack/f/i;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/f/i;-><init>(Lcom/xiaomi/onetrack/f/h;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/f/h$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/f/h;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
