.class public Lcom/miui/home/launcher/debug/LauncherLoadTrace;
.super Ljava/lang/Object;
.source "LauncherLoadTrace.java"


# direct methods
.method public static finishLauncher(Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-static {}, Lcom/miui/home/launcher/debug/UsbDebugSwitchObserver;->isUsbTurnedOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->putEndToSetting()Z

    .line 47
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 51
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/debug/-$$Lambda$LauncherLoadTrace$G4rOKbUO_Vz2Wtk7LFxwi1N2hmg;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/debug/-$$Lambda$LauncherLoadTrace$G4rOKbUO_Vz2Wtk7LFxwi1N2hmg;-><init>(Lcom/miui/home/launcher/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "LauncherLoadTrace"

    const-string v1, "finishLauncher"

    .line 55
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getCurrentMethodName()Ljava/lang/String;
    .locals 2

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.debug.hook_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$finishLauncher$0(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->finish()V

    return-void
.end method

.method public static putEndToSetting()Z
    .locals 3

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.miui.home.debug.hook_method"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
