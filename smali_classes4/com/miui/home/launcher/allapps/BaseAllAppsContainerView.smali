.class public Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
.super Landroid/widget/RelativeLayout;
.source "BaseAllAppsContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field protected mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field protected mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

.field protected mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

.field protected mIsLightMode:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field protected mSearchBarDivider:Landroid/view/View;

.field private mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

.field protected mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

.field private mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 90
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method

.method private getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private hideShortcutMenuIfNeed()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method static synthetic lambda$refreshColorFilterContainerView$5(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$updateAppsColorInfo$3(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private loadSoscLayout()V
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/util/SoscUtils;->getInsetsBottom(Landroid/view/WindowInsets;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 573
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    .line 574
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScreenSizeChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public callEnterQuickSearchIfNeeded()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1, p0}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->callEnterQuickSearchIfNeeded(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    return-void
.end method

.method public cancelRevealAnim()V
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    if-eqz p0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->cancelRevealAnim()V

    :cond_0
    return-void
.end method

.method public changeSearchBarState(Z)V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    if-eqz p0, :cond_0

    .line 506
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    :cond_0
    return-void
.end method

.method public clearSearchResult()V
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getAllAppsAlphabeticalAppsList()V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method

.method public getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCategoryCount()I

    move-result p0

    return p0
.end method

.method public getColorFilterContainerView()Lcom/miui/home/launcher/ColorFilterContainerView;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    return-object p0
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

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

    .line 218
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSearchBarController()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p0
.end method

.method public getSearchBarParallax()F
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getSearchBarParallax()F

    move-result p0

    return p0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method

.method public hideSearchContainer()V
    .locals 5

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 300
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 301
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 302
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0, v2, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 304
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 305
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object p0

    invoke-interface {p0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->handleDragAndHideAppsGuideViewAfterGuide()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    :cond_2
    return-void
.end method

.method public initBranchOnScrollUpEnd(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/miui/home/launcher/ExtendedEditText;)V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;-><init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public isColorFilterEnabled()Z
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result p0

    return p0
.end method

.method public isListContainerShow()Z
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSearchContainerShow()Z
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$BaseAllAppsContainerView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->requestFocus()Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$refreshColorFilterContainerView$4$BaseAllAppsContainerView(Ljava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V

    .line 548
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 549
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->hideColorFilter()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$updateAppsColorInfo$2$BaseAllAppsContainerView(IZLjava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, v1, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V

    .line 491
    iget-object p3, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    .line 492
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-nez p1, :cond_0

    .line 493
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->hideColorFilter()V

    :cond_0
    return-void
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    .line 452
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 170
    invoke-static {p1}, Lcom/miui/home/launcher/util/SoscUtils;->getInsetsBottom(Landroid/view/WindowInsets;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 171
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 360
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 347
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->resetSearch()V

    return v1

    .line 240
    :cond_0
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->controlOnBackPressed(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 243
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 353
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;-><init>(Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 189
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 191
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 98
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$SqWnaprLoerBBCtDxyNB_2waL-k;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$SqWnaprLoerBBCtDxyNB_2waL-k;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    const v1, 0x7f0a005b

    .line 109
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const v1, 0x7f0a005f

    .line 110
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const v1, 0x7f0a005e

    .line 111
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    const v1, 0x7f0a005d

    .line 112
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070171

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070062

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a00d8

    .line 117
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ColorFilterContainerView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->init(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setUpColorFilterContainerView()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMessageEvent(Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 338
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;->isBranchSearchHint()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->updateSearchHint(Z)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 324
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 327
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 328
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 329
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 250
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 257
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onNewIntent()Z
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onResume()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 313
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->loadSoscLayout()V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onScreenSizeChanged()V

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    .line 318
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScreenSizeChanged()V

    :goto_0
    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 146
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsOpen()V

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScrollUpEnd()V

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    invoke-static {v0, v1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showWorkProfileTipsOnDrawer(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 420
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 421
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 568
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->loadSoscLayout()V

    return-void
.end method

.method public onUniLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V

    return-void
.end method

.method public onUniSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 2

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    .line 442
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    if-eq v0, v1, :cond_0

    .line 443
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 444
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v1, "color_mode"

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public refreshColorFilterContainerView(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    return-void

    .line 536
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "all_apps_color_filter_switch"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAllAppsAlphabeticalAppsList()V

    .line 538
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result p1

    .line 539
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->setColorFilterEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setFilterAppsWithColor(Z)V

    if-eqz p1, :cond_2

    .line 542
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 543
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 545
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/IconPalette;->updateAllAppsColorType(Ljava/util/List;)Lio/reactivex2/Observable;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$0wHGOw4i8e48L4Dptv6QKJ-LsfQ;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$0wHGOw4i8e48L4Dptv6QKJ-LsfQ;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    sget-object p0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$TnUXLfCgcZR9llHFvwyw-55cQ6A;->INSTANCE:Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$TnUXLfCgcZR9llHFvwyw-55cQ6A;

    .line 546
    invoke-virtual {p1, v0, p0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    goto :goto_0

    .line 553
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 554
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p0, v0, v0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    goto :goto_0

    .line 556
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_color_group_anim_open"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 557
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorAnimEnabled()Z

    move-result p1

    .line 558
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->setColorFilterAnimOpen(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchPanel()V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->resetView()V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->updateSearchHint()V

    .line 132
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->setAfterReset(Z)V

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-eqz v0, :cond_0

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V

    :cond_0
    return-void
.end method

.method public resetAppsWhenLauncherModeChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-void
.end method

.method public resetCategoryContainerVisible()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 432
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    return-void
.end method

.method public resetSearch()V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->scrollToWorkPage()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isFilteringAppsWithColor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public showSearchContainer()V
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 279
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 280
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v3, 0x0

    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v4, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 282
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mShowSearchContainerAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 288
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 291
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getRecommendApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateRecommendAppsInMaskView(Ljava/util/List;)V

    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .line 377
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->hideDragIconGuideViewIfNeeded()V

    .line 378
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 380
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchResultView()V

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchMaskView(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;Z)V

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    .line 398
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchContainer()V

    .line 399
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearchViewShow()V

    .line 400
    invoke-static {}, Lcom/miui/home/recents/anim/ConnectAnimManager;->getInstance()Lcom/miui/home/recents/anim/ConnectAnimManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ConnectAnimManager;->cancelClosingAnim()Z

    :cond_0
    return-void
.end method

.method public updateAppsColorInfo(Z)V
    .locals 3

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAllAppsAlphabeticalAppsList()V

    .line 485
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getSelectedColorType()I

    move-result v0

    .line 488
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/graphics/IconPalette;->updateAllAppsColorType(Ljava/util/List;)Lio/reactivex2/Observable;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$zy8Rl1j7Zi3prPThu_BI5yIrYm0;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$zy8Rl1j7Zi3prPThu_BI5yIrYm0;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;IZ)V

    sget-object p0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$A7XciSH9huxL0SJyBY2NpWMtZZQ;->INSTANCE:Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$A7XciSH9huxL0SJyBY2NpWMtZZQ;

    .line 489
    invoke-virtual {v1, v2, p0}, Lio/reactivex2/Observable;->subscribe(Lio/reactivex2/functions/Consumer;Lio/reactivex2/functions/Consumer;)Lio/reactivex2/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSearchHint()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->updateSearchHint(Z)V

    return-void
.end method
