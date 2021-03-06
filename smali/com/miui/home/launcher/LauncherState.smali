.class public Lcom/miui/home/launcher/LauncherState;
.super Ljava/lang/Object;
.source "LauncherState.java"


# static fields
.field public static final ALL_APPS:Lcom/miui/home/launcher/LauncherState;

.field public static final FEED_STATE:Lcom/miui/home/launcher/LauncherState;

.field public static final NORMAL:Lcom/miui/home/launcher/LauncherState;

.field public static final OVERVIEW:Lcom/miui/home/recents/OverviewState;


# instance fields
.field public back:Z

.field public disableRestore:Z

.field public mIsFromFsGesture:Z

.field public mIsIgnoreOverviewAnim:Z

.field public mIsIgnoreOverviewBackgroundAnim:Z

.field public final transitionDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/LauncherState;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 47
    new-instance v0, Lcom/miui/home/launcher/touch/FeedState;

    invoke-direct {v0}, Lcom/miui/home/launcher/touch/FeedState;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherState;->FEED_STATE:Lcom/miui/home/launcher/LauncherState;

    .line 48
    new-instance v0, Lcom/miui/home/launcher/uioverrides/AllAppsState;

    invoke-direct {v0}, Lcom/miui/home/launcher/uioverrides/AllAppsState;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    .line 49
    new-instance v0, Lcom/miui/home/recents/OverviewState;

    invoke-direct {v0}, Lcom/miui/home/recents/OverviewState;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 62
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 64
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherState;->mIsFromFsGesture:Z

    .line 67
    iput p1, p0, Lcom/miui/home/launcher/LauncherState;->transitionDuration:I

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 68
    :cond_0
    iput-boolean v0, p0, Lcom/miui/home/launcher/LauncherState;->disableRestore:Z

    return-void
.end method

.method protected static dispatchWindowStateChanged(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public getAllAppsVerticalProgress(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getFeedHomeVerticalProgress(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getHistoryForState(Lcom/miui/home/launcher/LauncherState;)Lcom/miui/home/launcher/LauncherState;
    .locals 1

    .line 154
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public getHotSeatsTranslation(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getHotseatAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public getOverviewBackgroundAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenIndicatorAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getScreenIndicatorTranslation(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSearchBarProperty(Lcom/miui/home/launcher/Launcher;)[F
    .locals 6

    .line 131
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    const/4 v1, 0x4

    .line 132
    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p1

    :goto_1
    aput p1, v1, v4

    const/4 p1, 0x2

    aput v3, v1, p1

    const/4 p1, 0x3

    aput v2, v1, p1

    return-object v1
.end method

.method public getShortcutMenuLayerAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getShortcutMenuLayerScale()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getVisibleElements(Lcom/miui/home/launcher/Launcher;)I
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDefaultScreenPreviewShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getWorkspaceAlpha(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    .line 123
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    return p1
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/miui/home/launcher/Launcher;)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onExitState(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    return-void
.end method

.method public onStateEnabled(Lcom/miui/home/launcher/Launcher;)V
    .locals 2

    .line 88
    invoke-static {p1}, Lcom/miui/home/launcher/LauncherState;->dispatchWindowStateChanged(Lcom/miui/home/launcher/Launcher;)V

    .line 89
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->updateRotationAnimation(I)V

    .line 91
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    :cond_0
    return-void
.end method

.method public onStateTransitionEnd(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 136
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentStateRequest(I)V

    :cond_0
    return-void
.end method

.method public reenter(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    return-void
.end method
