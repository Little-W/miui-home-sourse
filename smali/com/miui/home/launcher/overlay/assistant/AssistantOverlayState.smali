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
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    return p1
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 3

    const/4 v0, 0x5

    .line 34
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantOverlayState;->getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    const/4 v1, 0x4

    aput p1, v0, v1

    return-object v0
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getWorkspaceTranslationX(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    return p1
.end method
