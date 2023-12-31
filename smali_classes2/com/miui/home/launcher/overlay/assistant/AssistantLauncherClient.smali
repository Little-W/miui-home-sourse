.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;
.super Lcom/miui/home/launcher/overlay/OverlayLauncherClient;
.source "AssistantLauncherClient.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field private static final IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_CAMERA_IN_CORNER:Z

    sput-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantLauncherClient$U74ODqmOCEIWxuDxeHIXLU6W-TE;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantLauncherClient$U74ODqmOCEIWxuDxeHIXLU6W-TE;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/LauncherAsyncTaskExecutorHelper;->waitForUnlockAndRunOnUiThread(Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 27
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$U74ODqmOCEIWxuDxeHIXLU6W-TE(Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->connect()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onDestroy()V

    .line 51
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
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

    .line 65
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/OverlayReconnectMessage;->getDirection()I

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.personalassistant"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->reconnect()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/overlay/assistant/AssistantConnectMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->reconnect()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/miui/home/launcher/overlay/OverlayLauncherClient;->onStart()V

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->IS_DELAY_CONNECT_PERSONAL_ASSISTANT:Z

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :cond_0
    return-void
.end method

.method public queueIdle()Z
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;->connect()V

    const/4 p0, 0x0

    return p0
.end method
