.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;
.source "AssistantLauncherCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;
    }
.end annotation


# instance fields
.field private mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-object p0
.end method

.method private createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 2

    .line 115
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->supportAssistant()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->supportAssistant()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/ApplicationConfig;->isAssistantSupportOverlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_personal_assistant"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    :goto_0
    new-instance v0, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    const-string v1, "com.miui.personalassistant"

    invoke-direct {v0, v1, p1}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private registerObserver()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "open_personal_assistant"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    .line 87
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mAssistantOpenObserver:Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks$AssistantOpenObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public createLauncherClient(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient;
    .locals 2

    .line 37
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 38
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    .line 39
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/overlay/LauncherOverlayChinese;->setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 45
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 46
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->registerObserver()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 51
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherCallbacks;->onDestroy()V

    .line 52
    invoke-direct {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->unregisterObserver()V

    return-void
.end method

.method public onHomeIntent(Landroid/content/Intent;)Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 58
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 59
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onNewIntent(Landroid/content/Intent;)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHomeIntentAfterFilter(Landroid/content/Intent;)Z
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 69
    invoke-virtual {p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    .line 70
    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    iget-object v1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->hideOverlay(I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLauncherModelReload(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherCallbacks;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->setClientOptions(Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;)V

    :cond_0
    return-void
.end method
