.class public Lcom/miui/home/launcher/touch/FeedState;
.super Lcom/miui/home/launcher/LauncherState;
.source "FeedState.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1a4

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->getShiftRange()F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public getScreenIndicatorAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getScreenIndicatorTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->getShiftRange()F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 3

    const/4 v0, 0x5

    .line 66
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/touch/FeedState;->getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 p1, 0x2

    aput v1, v0, p1

    const/4 p1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, p1

    const/4 p1, 0x4

    aput v1, v0, p1

    return-object v0
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFeedTransController()Lcom/miui/home/launcher/touch/FeedTransController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/touch/FeedTransController;->getShiftRange()F

    move-result p1

    neg-float p1, p1

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr p1, v0

    return p1
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->addOrRemoveNewHome()V

    return-void
.end method
