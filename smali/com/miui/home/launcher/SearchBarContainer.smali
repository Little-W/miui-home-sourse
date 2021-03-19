.class public Lcom/miui/home/launcher/SearchBarContainer;
.super Lcom/miui/home/launcher/FitSystemWindowView;
.source "SearchBarContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSearchBar:Lcom/miui/home/launcher/SearchBar;

.field private mTrackSearchBarShowRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FitSystemWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    .line 29
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private refreshSearchBarMarginBottom()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 66
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getEventBusHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideMenu()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->hideMenu()V

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->isShowingMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageChangedMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "com.android.quicksearchbox"

    .line 109
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageChangedMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->reloadSearchBarIfNeed()V

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchIcon()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "com.android.quicksearchbox"

    .line 101
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    .line 103
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onScreenOrientationChanged()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 40
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 46
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->onWallpaperColorChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/SearchBarContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBar;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshSearchBarEnable()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 51
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    new-instance v3, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v3}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 50
    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public refreshSearchBarWidth()V
    .locals 2

    .line 141
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidth()I

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/HotSeats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/HotSeats;->isSeatsFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidthDelta()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidthAnim(I)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidth(I)V

    :goto_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationX(F)V

    .line 155
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationY(F)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 1

    const v0, 0x7f0a0170

    .line 33
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBar;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 34
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    return-void
.end method

.method public trackShow()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 87
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarShow(I)V

    .line 88
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBar;->isXiaoaiShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarXiaoAiShow(I)V

    :cond_0
    return-void
.end method
