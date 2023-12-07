.class public Lcom/xiaomi/dist/handoff/system/PackageReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;,
        Lcom/xiaomi/dist/handoff/system/PackageReceiver$_lancet;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;


# direct methods
.method private constructor <init>(Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->mCallback:Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/dist/handoff/system/PackageReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string v0, "PackageReceiver"

    const-string v1, "package removed, packageName=%s"

    invoke-static {v0, v1, p2}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/xiaomi/dist/handoff/system/PackageReceiver;->mCallback:Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;

    invoke-interface {p0, p1}, Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;->onPackageRemoved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static registerPackageRemoveCallback(Landroid/content/Context;Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;)Lcom/xiaomi/dist/handoff/system/PackageReceiver;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/xiaomi/dist/handoff/system/PackageReceiver;

    invoke-direct {v0, p1}, Lcom/xiaomi/dist/handoff/system/PackageReceiver;-><init>(Lcom/xiaomi/dist/handoff/system/PackageReceiver$Callback;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "PackageReceiver"

    const-string v0, "register package remove callback failed"

    invoke-static {p0, v0, p1}, Lcom/xiaomi/dist/handoff/system/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/dist/handoff/system/PackageReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/xiaomi/dist/handoff/system/PackageReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
