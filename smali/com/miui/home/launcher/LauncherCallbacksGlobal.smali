.class Lcom/miui/home/launcher/LauncherCallbacksGlobal;
.super Ljava/lang/Object;
.source "LauncherCallbacksGlobal.java"

# interfaces
.implements Lcom/miui/home/launcher/LauncherCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;,
        Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;
    }
.end annotation


# instance fields
.field private mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

.field private mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/LauncherCallbacksGlobal;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/Launcher;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->createLauncherClient(Lcom/miui/home/launcher/Launcher;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->onWindowLayoutParamsChange()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->createClientOptions(Landroid/content/Context;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object p0

    return-object p0
.end method

.method private static createClientOptions(Landroid/content/Context;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "open_personal_assistant"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    .line 183
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;-><init>(ZZZ)V

    if-nez p1, :cond_0

    .line 185
    const-class p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    const-string p1, "b"

    const-class v1, Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object p0

    const-string p1, "com.mi.android.globalminusscreen"

    .line 186
    invoke-virtual {p0, v0, p1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static createLauncherClient(Lcom/miui/home/launcher/Launcher;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
    .locals 4

    .line 173
    new-instance v0, Lcom/miui/home/launcher/overlay/LauncherOverlayGlobal;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/LauncherOverlayGlobal;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 174
    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    sget-boolean v2, Lcom/miui/home/launcher/DeviceConfig;->IS_USE_GOOGLE_MINUS_SCREEN:Z

    .line 175
    invoke-static {p0, v2}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->createClientOptions(Landroid/content/Context;Z)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/LauncherClientCallbacks;Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$ClientOptions;Landroid/os/Looper;)V

    .line 176
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/overlay/LauncherOverlayGlobal;->setClient(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    return-object v1
.end method

.method public static synthetic lambda$onCreate$0(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method private onWindowLayoutParamsChange()V
    .locals 3

    .line 259
    const-class v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    const-string v1, "o"

    const-class v2, Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 264
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const-string v2, "LauncherMinusOneScreen"

    .line 265
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 267
    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0, v2, v1}, Lmiui/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private registerObserver()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 194
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "switch_personal_assistant"

    .line 195
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 194
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    iput-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    .line 200
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "open_personal_assistant"

    .line 201
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    .line 200
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private unregisterObserver()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 213
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantOpenObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantOpenObserver;

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 123
    iget-object p2, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p2, :cond_0

    .line 124
    invoke-virtual {p2, p1, p3}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->onWindowLayoutParamsChange()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 53
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isMultiProcessMinusScreen()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->createLauncherClient(Lcom/miui/home/launcher/Launcher;)Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    .line 55
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->registerObserver()V

    .line 56
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 57
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 59
    :cond_0
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$LauncherCallbacksGlobal$0fhXC0vYacg-zzLpxXkwUoqWces;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$LauncherCallbacksGlobal$0fhXC0vYacg-zzLpxXkwUoqWces;-><init>(Lcom/miui/home/launcher/LauncherCallbacksGlobal;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public onDarkModeChanged()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_USE_GOOGLE_MINUS_SCREEN:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reattachOverlay()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDestroy()V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->unregisterObserver()V

    .line 101
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onHomeGestureStart()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

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

    .line 149
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

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

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.mi.android.globalminusscreen"

    .line 251
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mAssistantSwitchObserver:Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/LauncherCallbacksGlobal$AssistantSwitchObserver;->onChange(Z)V

    :cond_1
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStart()V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/miui/home/launcher/LauncherState;)V
    .locals 1

    .line 130
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->hideOverlay(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherCallbacksGlobal;->mLauncherClient:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onStop()V

    :cond_0
    return-void
.end method
