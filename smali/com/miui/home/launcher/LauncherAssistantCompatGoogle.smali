.class public Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;
.super Lcom/miui/home/launcher/LauncherAssistantCompat;
.source "LauncherAssistantCompatGoogle.java"


# instance fields
.field private mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAssistantCompat;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method private createClientOptions(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 4

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_personal_assistant"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    .line 152
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    .line 153
    const-class p1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    const-string v2, "b"

    const-class v3, Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 155
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$onCreate$0(Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method private onWindowLayoutParamsChange()V
    .locals 3

    .line 189
    const-class v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const-string v1, "o"

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 194
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const-string v2, "LauncherMinusOneScreen"

    .line 195
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x1

    .line 198
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 199
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 4

    .line 165
    new-instance p1, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 166
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 167
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->createClientOptions(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;Landroid/os/Looper;)V

    .line 168
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlayGoogle;->setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    .line 169
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 170
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->onWindowLayoutParamsChange()V

    return-void
.end method

.method public destroyLauncherClient()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 98
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 85
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->onWindowLayoutParamsChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 38
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 39
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$LauncherAssistantCompatGoogle$T_HYnL6llSAiDtgcPqSubf0ulBY;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherAssistantCompatGoogle$T_HYnL6llSAiDtgcPqSubf0ulBY;-><init>(Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.googlequicksearchbox"

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mPackageName:Ljava/lang/String;

    .line 139
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reattachOverlay()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onHomeGestureStart()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 105
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    :cond_0
    return-void
.end method

.method public updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->createClientOptions(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setClientOptions(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;)V

    .line 177
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherAssistantCompatGoogle;->onWindowLayoutParamsChange()V

    :cond_0
    return-void
.end method
