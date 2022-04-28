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

    .line 19
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 27
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    .line 28
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mScreenSize:I

    return-void
.end method

.method public static inOverlapMode(Landroid/content/Context;)Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->IS_PHONE:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onConfigurationChanged$0(Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v0, "com.miui.personalassistant"

    invoke-static {p1, v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$onConfigurationChanged$1(Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;Ljava/lang/Integer;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 32
    sget-boolean v0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->IS_PHONE:Z

    if-eqz v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 37
    iget-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mConfiguration:Landroid/content/res/Configuration;

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    .line 38
    iget v0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mScreenSize:I

    if-eq p1, v0, :cond_1

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->mScreenSize:I

    .line 43
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$wVTN6PMo2oYHAzqKf5ufKoM0wZ4;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$wVTN6PMo2oYHAzqKf5ufKoM0wZ4;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;)V

    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$sJRV2oqN_k1tNhZHySCKguF2IEE;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantDeviceAdapter$sJRV2oqN_k1tNhZHySCKguF2IEE;-><init>(Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
