.class Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.super Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;
.source "LauncherCallbacksGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;
    }
.end annotation


# instance fields
.field private mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/LauncherCallbacksGlobal;Lcom/miui/home/launcher/LauncherAssistantCompat;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/LauncherAssistantCompat;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherAssistant:Lcom/miui/home/launcher/LauncherAssistantCompat;

    return-object p0
.end method

.method private registerObserver()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "switch_personal_assistant"

    .line 51
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 32
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->registerObserver()V

    .line 33
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 34
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->onDestroy()V

    .line 41
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->unregisterObserver()V

    .line 42
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
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

    .line 87
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mi.android.globalminusscreen"

    .line 88
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->onChange(Z)V

    :cond_1
    return-void
.end method
