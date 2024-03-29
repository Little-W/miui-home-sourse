.class public Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;
.super Landroid/widget/FrameLayout;
.source "AllAppsSearchContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;


# instance fields
.field protected mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

.field protected mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

.field private mClickHideListener:Landroid/view/View$OnClickListener;

.field private mFragmentContainer:Landroid/widget/ViewAnimator;

.field protected mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    .line 67
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 221
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    return-object p0

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    return-object p0
.end method

.method private refreshPadding()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 212
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-static {v2, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {v0, p0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    .line 233
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v0, :cond_0

    .line 234
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getSearchAppId()I
    .locals 0

    const p0, 0x7f0a02dc

    return p0
.end method

.method protected getSearchCategoryId()I
    .locals 0

    const p0, 0x7f0a02ed

    return p0
.end method

.method public final getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 188
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initSearchMaskView(Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;Z)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/mi/globallauncher/search/SearchResultMaskView;->initialize(Landroid/app/Activity;Lcom/mi/globallauncher/search/SearchResultMaskView$SearchMaskHintsListener;I)V

    .line 108
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    new-instance v0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$2;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setQuickSearchGuideListener(Lcom/mi/globallauncher/search/SearchResultMaskView$QuickSearchGuideListener;)V

    .line 121
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object p1

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 123
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isRecommendAppsEnable()Z

    move-result v0

    .line 122
    invoke-virtual {p0, p1, v2, p2, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->updateSearchMaskViewContent(ZZZZ)V

    return-void
.end method

.method public initSearchResultView()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updateCategory()V

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$onFinishInflate$0$AllAppsSearchContainer(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 195
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->refreshPadding()V

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    return-void
.end method

.method public onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V

    return-void
.end method

.method public onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 74
    new-instance v0, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchContainer$JSf-ND5xTpwY09mnY9cmzkqCs2U;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchContainer$JSf-ND5xTpwY09mnY9cmzkqCs2U;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0060

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getSearchAppId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getSearchCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    const v0, 0x7f0a0305

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/search/SearchResultMaskView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    .line 83
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 203
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->refreshPadding()V

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    :cond_0
    return-void
.end method

.method public resetView()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->resetView()V

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->resetView()V

    return-void
.end method

.method public setSearchController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->setSearchBarController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    return-void
.end method

.method public setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x12c

    if-nez p2, :cond_0

    .line 152
    new-instance p1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 153
    new-instance p2, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {p2, v2, v3, p1}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 154
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v0, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 156
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    .line 157
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {p1, v1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setAlpha(F)V

    .line 158
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_0
    new-instance v4, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 161
    new-instance v5, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {v5, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 162
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v2, v1, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 163
    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 164
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {v1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setVisibility(I)V

    .line 166
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 169
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->getBranchShowTypeVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 172
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateRecommendAppsInMaskView(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 129
    new-instance v2, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/AppInfo;->getTitleStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->isNewInstalled()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/mi/globallauncher/local/FrequentUsedAppInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setFrequentUsedAppList(Ljava/util/List;)V

    .line 133
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppCellCountX(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setFrequentUsedAppsColumn(I)V

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Lcom/mi/globallauncher/search/SearchResultMaskView;

    new-instance v0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$3;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/search/SearchResultMaskView;->setFrequentUsedAppClickListener(Lcom/mi/globallauncher/local/FrequentUsedAppClickListener;)V

    return-void
.end method
