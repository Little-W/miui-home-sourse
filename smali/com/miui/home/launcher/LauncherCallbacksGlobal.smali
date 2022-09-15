.class Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.super Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;,
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;
    }
.end annotation


# instance fields
.field private mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

.field private mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->reloadMinusScreen()V

    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switch_personal_assistant"

    .line 59
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private reloadMinusScreen()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->destroyLauncherClient()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->newInstance(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/LauncherAssistantCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherAssistantCompat;->createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 126
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onStart()V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherAssistantCompat;->onResume()V

    :cond_2
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 77
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mProvisionObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$ProvisionObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->registerObserver()V

    .line 41
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 42
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onDestroy()V

    .line 49
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->unregisterObserver()V

    .line 50
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 96
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mi.android.globalminusscreen"

    .line 97
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->onChange(Z)V

    :cond_1
    return-void
.end method
