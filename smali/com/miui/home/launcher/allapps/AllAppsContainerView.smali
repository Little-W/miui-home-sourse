.class public Lcom/miui/home/launcher/allapps/AllAppsContainerView;
.super Landroid/widget/RelativeLayout;
.source "AllAppsContainerView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;


# instance fields
.field private mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

.field private mIsLightMode:Z

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field private mSearchBarDivider:Landroid/view/View;

.field private mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

.field private mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 69
    new-instance p1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    return-object p0
.end method

.method private getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private hideShortcutMenuIfNeed()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onDropBack$1(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isListContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->requestFocus()Z

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    return-object v0
.end method

.method public getCategoryCount()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

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

    .line 347
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentShowShortcutIcons()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

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

    .line 168
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSearchBarParallax()F
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->getSearchBarParallax()F

    move-result v0

    return v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1
.end method

.method public hideSearchContainer()V
    .locals 5

    .line 232
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 233
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 234
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 235
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->hideSearchContainer()V

    :cond_1
    return-void
.end method

.method public initialize(Lcom/miui/home/launcher/ExtendedEditText;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-direct {v1, v2}, Lcom/miui/home/launcher/allapps/search/DefaultAppSearchAlgorithm;-><init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p1, v2, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public isListContainerShow()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

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

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

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

    .line 339
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->hideSearchContainer()V

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    .line 121
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

    .line 279
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isSearchContainerShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 267
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->resetSearch()V

    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 273
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$GFHWt8fYRSXa0QT0Uzc3D1MP-V8;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$GFHWt8fYRSXa0QT0Uzc3D1MP-V8;-><init>(Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v0

    .line 139
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragView;->setAnimateTarget(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 74
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 77
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$s-ip90mgQ5V6SHkW51e_qUAoeVk;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsContainerView$s-ip90mgQ5V6SHkW51e_qUAoeVk;-><init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v0

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mIsLightMode:Z

    const v1, 0x7f0a0041

    .line 88
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    const v1, 0x7f0a0045

    .line 89
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const v1, 0x7f0a0044

    .line 90
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    const v1, 0x7f0a0043

    .line 91
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    .line 92
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "background_alpha"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result p1

    .line 253
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mIsLightMode:Z

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarDivider:Landroid/view/View;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mIsLightMode:Z

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    :cond_1
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageAddMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 197
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/PackageRemoveMessage;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 204
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->hideShortcutMenuIfNeed()V

    :cond_0
    return-void
.end method

.method public onNewIntent()Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onScreenOrientationChanged()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAllAppsController()Lcom/miui/home/launcher/allapps/AllAppsTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsTransitionController;->onScreenOrientationChanged()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->onScreenSizeChanged()V

    .line 245
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarHolder:Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsSearchBarHolderView;->onScreenSizeChanged()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsOpen()V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->onScrollUpEnd()V

    .line 110
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;)V

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

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 3

    .line 331
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->isLightMode(I)Z

    move-result v0

    .line 332
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mIsLightMode:Z

    if-eq v0, v1, :cond_0

    .line 333
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mIsLightMode:Z

    .line 334
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
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->hideSearchPanel()V

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->resetView()V

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->resetView()V

    .line 102
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->updateStatusBarClock()V

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public resetSearch()V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isListContainerShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public showSearchContainer()V
    .locals 5

    .line 224
    new-instance v0, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;-><init>()V

    .line 225
    new-instance v1, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;

    const-wide/16 v2, 0x12c

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;-><init>(JLcom/miui/home/launcher/anim/AnimatorSetBuilder;)V

    .line 226
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 227
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    sget-object v3, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    .line 228
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isSearchContainerShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 299
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->initSearchResultView()V

    .line 300
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->showSearchContainer()V

    .line 301
    invoke-static {}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearchViewShow()V

    :cond_0
    return-void
.end method
