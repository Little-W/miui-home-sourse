.class public Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;
.super Landroid/widget/FrameLayout;
.source "AllAppsSearchContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;


# instance fields
.field private mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

.field private mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

.field private mClickHideListener:Landroid/view/View$OnClickListener;

.field private mFragmentContainer:Landroid/widget/ViewAnimator;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMask:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer$1;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    .line 48
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 49
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method private getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    return-object v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private refreshPadding()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getContainerHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 155
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object v0

    .line 156
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 157
    check-cast v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
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

    .line 164
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initSearchResultView()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isEditContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->updateCategory()V

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->refreshPadding()V

    .line 126
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 55
    new-instance v0, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchContainer$JSf-ND5xTpwY09mnY9cmzkqCs2U;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/search/-$$Lambda$AllAppsSearchContainer$JSf-ND5xTpwY09mnY9cmzkqCs2U;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0046

    .line 60
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f0a016e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentManager:Landroid/app/FragmentManager;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    const v0, 0x7f0a0047

    .line 63
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mClickHideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->refreshPadding()V

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mAppFragment:Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->resetView()V

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mCategoryFragment:Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AppCategorySelectSearchFragment;->resetView()V

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

    .line 88
    new-instance p1, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 89
    new-instance p2, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {p2, v2, v3, p1}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 90
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v2, v0, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Landroid/view/View;

    sget-object v2, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0, v1, v2}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 92
    invoke-virtual {p1}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 93
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    goto :goto_0

    .line 95
    :cond_0
    new-instance v4, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 96
    new-instance v5, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    invoke-direct {v5, v2, v3, v4}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 97
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mFragmentContainer:Landroid/widget/ViewAnimator;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v2, v1, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 98
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->mMask:Landroid/view/View;

    sget-object v2, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v1, v0, v2}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 99
    invoke-virtual {v4}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 100
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getCurrentResultView()Lcom/miui/home/launcher/allapps/SearchUiResultView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/allapps/SearchUiResultView;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method
