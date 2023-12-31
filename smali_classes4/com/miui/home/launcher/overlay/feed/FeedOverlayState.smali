.class public Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;
.super Lcom/miui/home/launcher/LauncherState;
.source "FeedOverlayState.java"


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
.method public getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0
.end method

.method public getScreenIndicatorTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 43
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/overlay/feed/FeedOverlayState;->getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p0

    const/4 p1, 0x1

    aput p0, v0, p1

    const/4 p0, 0x2

    aput v1, v0, p0

    const/4 p0, 0x3

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v0, p0

    const/4 p0, 0x4

    aput v1, v0, p0

    return-object v0
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    const/high16 p1, 0x3e000000    # 0.125f

    mul-float/2addr p0, p1

    return p0
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V

    .line 19
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    return-void
.end method
