.class public Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;
.super Ljava/lang/Object;
.source "AssistantDeviceAdapter.java"


# static fields
.field private static final IS_PHONE:Z


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mScreenSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceType()Lcom/miui/home/launcher/DeviceType;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/DeviceType;->PHONE:Lcom/miui/home/launcher/DeviceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->IS_PHONE:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 29
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public static inOverlapMode(Landroid/content/Context;)Z
    .locals 0

    .line 55
    sget-boolean p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->IS_PHONE:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 34
    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->IS_PHONE:Z

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    .line 40
    iget v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mScreenSize:I

    if-eq p1, v0, :cond_2

    .line 41
    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mScreenSize:I

    .line 45
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ASSISTANT_OVERLAY_STATE:Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    :cond_2
    return-void
.end method
