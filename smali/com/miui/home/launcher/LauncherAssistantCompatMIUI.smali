.class public Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;
.super Lcom/miui/home/launcher/LauncherAssistantCompat;
.source "LauncherAssistantCompatMIUI.java"


# instance fields
.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherAssistantCompat;-><init>(Lcom/miui/home/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method

.method private createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 185
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->supportAssistant()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 189
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_personal_assistant"

    invoke-static {p1, v0, v2}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 193
    :goto_1
    new-instance p1, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mPackageName:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;-><init>(Ljava/lang/String;Z)V

    return-object p1
.end method


# virtual methods
.method public createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 3

    .line 156
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 157
    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 158
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    .line 160
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v2, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    .line 161
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->setDragCallback(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V

    .line 162
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method

.method public destroyLauncherClient()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDetachedFromWindow()V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/launcher/overlay/client/LauncherClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onDarkModeChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDragToAssistantScreen(Landroid/view/MotionEvent;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onDragToAssistantScreen(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;->onHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHomeGestureStart()V
    .locals 0

    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 104
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onNewIntent(Landroid/content/Intent;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 115
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0, p1, p2}, Lcom/miui/launcher/overlay/client/LauncherClient;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStop()V

    :cond_0
    return-void
.end method

.method public updateLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUI;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method
