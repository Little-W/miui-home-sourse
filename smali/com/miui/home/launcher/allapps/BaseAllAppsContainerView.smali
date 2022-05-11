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

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private hideShortcutMenuIfNeed()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 161
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

    .line 142
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1, v2}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->callEnterQuickSearchIfNeeded(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 387
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    return-void
.end method

.method public getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .line 391
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

    .line 412
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 415
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

    .line 195
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBarParallax()F
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getSearchBarParallax()F

    move-result v0

    return v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1
.end method

.method public hideSearchContainer()V
    .locals 5

    .line 268
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 269
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 270
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 272
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 273
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->handleDragAndHideAppsGuideViewAfterGuide()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 372
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

    .line 329
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

    .line 247
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

    .line 243
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

    .line 404
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideSearchContainer()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 148
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

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 311
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 210
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->resetSearch()V

    return v1

    .line 214
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

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 316
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 317
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

    .line 161
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAllAppsContainerView$nwItNozYOO7kfJfnTgP0Sc0Ub6s;-><init>(Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 166
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
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
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/mi/globallauncher/messages/BranchSwitchChangeMessage;->isBranchSearchHint()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->updateSearchHint(Z)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 293
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 294
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

    .line 224
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 231
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onNewIntent()Z
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onResume()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onScreenSizeChanged()V

    .line 282
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    .line 283
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScreenSizeChanged()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsOpen()V

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScrollUpEnd()V

    .line 125
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

    .line 378
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 379
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 380
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    return-void
.end method

.method public onUniLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V

    return-void
.end method

.method public onUniSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 396
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    .line 397
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    if-eq v0, v1, :cond_0

    .line 398
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    .line 399
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
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->updateSearchHint()V

    .line 114
    invoke-static {}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->getInstance()Lcom/mi/globallauncher/BranchAllAppsContainerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/BranchAllAppsContainerView;->setAfterReset(Z)V

    return-void
.end method

.method public resetSearch()V
    .locals 1

    .line 335
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

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
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

    .line 251
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 252
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 253
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 254
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 255
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
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

    .line 259
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->isHideApp()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
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

    .line 340
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getBranchGuildController()Lcom/mi/globallauncher/branchInterface/IBranchGuildController;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchGuildController;->hideDragIconGuideViewIfNeeded()V

    .line 341
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setAlpha(F)V

    .line 344
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchResultView()V

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView$2;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V

    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchMaskView(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;Z)V

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    .line 361
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->showSearchContainer()V

    .line 362
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearchViewShow()V

    :cond_0
    return-void
.end method

.method public updateAppsColorInfo(Z)V
    .locals 0

    return-void
.end method

.method public updateSearchHint()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->updateSearchHint(Z)V

    return-void
.end method