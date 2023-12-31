.class public Lcom/miui/home/launcher/SearchBarContainer;
.super Lcom/miui/home/launcher/FitSystemWindowView;
.source "SearchBarContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSearchBar:Lcom/miui/home/launcher/SearchBar;

.field private mTrackSearchBarShowRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FitSystemWindowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$-XoZXsORDLSzTUdddm6L6Uq-8zw;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    .line 31
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance p2, Lcom/miui/home/launcher/-$$Lambda$5JzSwAT2q2GqbtSmwqDl0FkBB-8;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/-$$Lambda$5JzSwAT2q2GqbtSmwqDl0FkBB-8;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/Launcher;->addOnDeviceProfileChangeListener(Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method private refreshSearchBarMarginBottom()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 60
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarMarginBottom()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 61
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getEventBusHandlers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hideMenu()V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->hideMenu()V

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->isShowingMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$trackShow$0$SearchBarContainer()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBar;->isThemesShow()I

    move-result v1

    .line 84
    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarShow(II)V

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->isXiaoaiShow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 86
    invoke-static {v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarXiaoAiShow(II)V

    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 161
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/PackageDataClearMessage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isCurrentThemeSupportSearchBar(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/DeviceConfig;->setCurrentThemeSupportSearchBar(Landroid/content/Context;Z)Z

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarSource(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 43
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 44
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->hideMenu()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/FitSystemWindowView;->onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 169
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->onWallpaperColorChanged()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 66
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isMinusScreenShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/SearchBarContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mTrackSearchBarShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBar;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshSearchBarEnable()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 49
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    new-instance v3, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v3}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 48
    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/WorkspaceStateTransitionAnimation;->setSearchBarProperty(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/anim/PropertySetter;Lcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 54
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarWidth()V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public refreshSearchBarWidth()V
    .locals 2

    .line 130
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidth()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/hotseats/HotSeats;->isSeatsFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidthDelta()I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidthAnim(I)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/SearchBar;->setSearchBarWidth(I)V

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->requestLayout()V

    :goto_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 144
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationX(F)V

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 152
    invoke-super {p0, p1}, Lcom/miui/home/launcher/FitSystemWindowView;->setTranslationY(F)V

    .line 153
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    if-eqz p0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->refreshBlur()V

    :cond_0
    return-void
.end method

.method public setupViews()V
    .locals 1

    const v0, 0x7f0a02de

    .line 36
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/SearchBarContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBar;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBarContainer;->mSearchBar:Lcom/miui/home/launcher/SearchBar;

    .line 37
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarEnable()V

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBarContainer;->refreshSearchBarMarginBottom()V

    return-void
.end method

.method public trackShow()V
    .locals 1

    .line 80
    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarContainer$H9x5VVbxy4tXoa-yp5uU5mMsIqI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarContainer$H9x5VVbxy4tXoa-yp5uU5mMsIqI;-><init>(Lcom/miui/home/launcher/SearchBarContainer;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
