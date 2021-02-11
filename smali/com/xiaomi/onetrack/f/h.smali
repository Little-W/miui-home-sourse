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

    .line 50
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
    .locals 2

    .line 53
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    .line 54
    invoke-static {p1}, Lcom/xiaomi/onetrack/b/l;->b(Z)V

    const-string p2, "OneTrackApp"

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/h/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/xiaomi/onetrack/f/i;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/f/i;-><init>(Lcom/xiaomi/onetrack/f/h;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/f/h$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/f/h;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
