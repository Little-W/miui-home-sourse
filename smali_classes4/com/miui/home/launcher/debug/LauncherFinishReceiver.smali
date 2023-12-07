.class public Lcom/miui/home/launcher/debug/LauncherFinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LauncherFinishReceiver.java"

# interfaces
.implements Lcom/miui/home/launcher/debug/OnUsbSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/debug/LauncherFinishReceiver$_lancet;
    }
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    if-eqz p1, :cond_0

    .line 17
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->registerReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/debug/LauncherFinishReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private onReceive$___twin___(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.miui.launcher.action.FINISH_ME"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finish()V

    :cond_0
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 3

    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.launcher.action.FINISH_ME"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.permission.DUMP"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterReceiver(Landroid/content/Context;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelListener(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver$_lancet;->com_miui_home_launcher_aop_BroadcastReceiverHooker_onReceive(Lcom/miui/home/launcher/debug/LauncherFinishReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onUsbSwitchOff(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->unRegisterReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onUsbSwitchOn(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/debug/LauncherFinishReceiver;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method
