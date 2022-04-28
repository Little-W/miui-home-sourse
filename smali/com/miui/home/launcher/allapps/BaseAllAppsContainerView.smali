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


# instance fields
.field protected mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field protected mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

.field protected mIsLightMode:Z

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field protected mSearchBarDivider:Landroid/view/View;

.field private mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

.field protected mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 78
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method

.method private getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private hideShortcutMenuIfNeed()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->requestFocus()Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public callEnterQuickSearchIfNeeded()V
    .locals 3

    .line 138
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->callEnterQuickSearchIfNeeded(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 383
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    return-void
.end method

.method public getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCategoryCount()I

    move-result v0

    return v0
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

    .line 408
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

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

    .line 191
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBarParallax()F
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getSearchBarParallax()F

    move-result v0

    return v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1
.end method

.method public hideSearchContainer()V
    .locals 5

    .line 264
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 265
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 266
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 267
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 268
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 269
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->handleDragAndHideAppsGuideViewAfterGuide()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    :cond_1
    return-void
.end method

.method public initBranchOnScrollUpEnd(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 0

    return-void
.end method

.method public initialize(Lcom/miui/home/launcher/ExtendedEditText;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;-><init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public isListContainerShow()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchContainerShow()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 1

    .line 400
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 143
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 144
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
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

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 306
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->resetSearch()V

    return v1

    .line 210
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

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 312
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 313
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

    .line 157
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;-><init>(Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 162
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$SqWnaprLoerBBCtDxyNB_2waL-k;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$SqWnaprLoerBBCtDxyNB_2waL-k;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 96
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    const v1, 0x7f0a0051

    .line 97
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const v1, 0x7f0a0055

    .line 98
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const v1, 0x7f0a0054

    .line 99
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    const v1, 0x7f0a0053

    .line 100
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onMessageEvent(Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 297
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->updateSearchHint()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 284
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    .line 287
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 289
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 220
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onNewIntent()Z
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onResume()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onScreenSizeChanged()V

    .line 278
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScreenSizeChanged()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 119
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsOpen()V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScrollUpEnd()V

    .line 121
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

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 375
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 376
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    return-void
.end method

.method public onUniLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V

    return-void
.end method

.method public onUniSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 392
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    .line 393
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    if-eq v0, v1, :cond_0

    .line 394
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 395
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;

    const-string v2, "color_mode"

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchPanel()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->resetView()V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->updateSearchHint()V

    .line 114
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->setAfterReset(Z)V

    return-void
.end method

.method public resetSearch()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showSearchContainer()V
    .locals 5

    .line 247
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 248
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 249
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 250
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 251
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 255
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    new-instance v2, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;

    invoke-direct {v2}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;-><init>()V

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;->getRecommendApps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->updateRecommendAppsInMaskView(Ljava/util/List;)V

    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .line 336
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->hideDragIconGuideViewIfNeeded()V

    .line 337
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 339
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 340
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchResultView()V

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchMaskView(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;Z)V

    .line 356
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    .line 357
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchContainer()V

    .line 358
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearchViewShow()V

    :cond_0
    return-void
.end method

.method public updateAppsColorInfo(Z)V
    .locals 0

    return-void
.end method
