.class Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.super Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;,
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;,
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;
    }
.end annotation


# instance fields
.field private mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

.field private mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

.field private mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->reloadMinusScreen()V

    return-void
.end method

.method private registerObserver()V
    .locals 5

    const-string v0, "Launcher.CallbacksGlobal"

    const-string v1, "registerObserver"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 73
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "switch_personal_assistant"

    .line 74
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 73
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    if-nez v1, :cond_1

    const-string v1, "is register ProvisionObserver"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 81
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    .line 80
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    if-nez v0, :cond_2

    .line 85
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.mi.globalminusscreen.preferences.key_priority_strategy"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    .line 86
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_2
    return-void
.end method

.method private reloadMinusScreen()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->destroyLauncherClient()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onStart()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onResume()V

    :cond_2
    return-void
.end method

.method private unregisterObserver()V
    .locals 4

    const-string v0, "Launcher.CallbacksGlobal"

    const-string/jumbo v1, "unregisterObserver"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unregisterProvisionObserver"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    iput-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantPriorityChangeObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantPriorityChangeObserver;

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 44
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->registerObserver()V

    .line 45
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isUseGoogleMinusScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onDarkModeChanged()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->reloadMinusScreen()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onDestroy()V

    .line 53
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->unregisterObserver()V

    .line 54
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->getDirection()I

    move-result p1

    if-nez p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->reloadMinusScreen()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.mi.android.globalminusscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->onChange(Z)V

    :cond_1
    return-void
.end method
