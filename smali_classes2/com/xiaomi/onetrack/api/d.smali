.class Lcom/xiaomi/onetrack/api/d;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/api/d$_lancet;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/onetrack/api/d;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/d;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p1}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v0, 0x1f4

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/xiaomi/onetrack/api/d;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-static {p0}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x65

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "screenReceiver throwable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BroadcastManager"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/onetrack/api/d$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/onetrack/api/d;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
