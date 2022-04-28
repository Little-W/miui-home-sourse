.class public Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;
.super Lcom/miui/home/launcher/LauncherState;
.source "AssistantOverlayState.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1a4

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getHotSeatsTranslationX(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 30
    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;->getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    aput p1, v0, v1

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 24
    invoke-static {p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDeviceAdapter;->inOverlapMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method
