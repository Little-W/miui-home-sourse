.class public Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStartReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;,
        Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$_lancet;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;


# direct methods
.method private constructor <init>(Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;->mCallback:Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.xiaomi.dist.intent.action.APP_HANDOFF_ON"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ServiceStartReceiver"

    const-string p2, "service start"

    .line 34
    invoke-static {p1, p2}, Lcom/xiaomi/dist/handoff/system/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;->mCallback:Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;

    invoke-interface {p0}, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;->onServiceStart()V

    :cond_0
    return-void
.end method

.method static registerServiceStartCallback(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;)V
    .locals 2

    const-string v0, "ServiceStartReceiver"

    const-string v1, "registerServiceStartCallback"

    .line 18
    invoke-static {v0, v1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;

    invoke-direct {v0, p1}, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;-><init>(Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$Callback;)V

    .line 20
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.dist.intent.action.APP_HANDOFF_ON"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/dist/handoff/system/ServiceStartReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
