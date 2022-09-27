.class public Lcom/miui/home/launcher/uioverrides/AllAppsState;
.super Lcom/miui/home/launcher/LauncherState;
.source "AllAppsState.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getHotSeatsTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uioverrides/AllAppsState;->getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F

    move-result p1

    return p1
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 5

    .line 44
    sget-object v0, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/LauncherDecoupleHelper;->isShowSearchBar(Lcom/miui/home/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x5

    .line 45
    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    aput v0, v1, v4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getSearchBarParallax()F

    move-result p1

    aput p1, v1, v0

    const/4 p1, 0x2

    aput v2, v1, p1

    const/4 p1, 0x3

    aput v3, v1, p1

    const/4 p1, 0x4

    aput v3, v1, p1

    return-object v1
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public getWorkspaceTranslationY(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 30
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p1

    neg-float p1, p1

    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr p1, v0

    return p1
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 18
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->hideShortcutMenuWithoutAnim()V

    :cond_0
    return-void
.end method
