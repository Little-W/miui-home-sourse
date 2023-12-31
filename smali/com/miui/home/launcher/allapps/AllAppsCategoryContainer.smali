.class public Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
.super Landroid/widget/ViewSwitcher;
.source "AllAppsCategoryContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

.field protected mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f010016

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setInAnimation(Landroid/content/Context;I)V

    const p2, 0x7f010017

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method

.method private getInsetsPaddingTop()I
    .locals 2

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/util/SoscUtils;->isBottomLayout()Z

    move-result v0

    const v1, 0x7f070073

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private switchView(I)V
    .locals 2

    .line 79
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindCategoryAdded()V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryUpdate(I)V

    return-void
.end method

.method public editCategory(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->updateCategory(I)V

    const/4 p1, 0x1

    .line 75
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    return-void
.end method

.method public getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object p0

    return-object p0
.end method

.method public getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getAllAppsView()Landroid/view/View;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAllAppsView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, p0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCategoryCount()I

    move-result p0

    return p0
.end method

.method public getCurrentPagePosition()I
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCurrentPagePosition()I

    move-result p0

    return p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    goto :goto_0

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 174
    :goto_0
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, p0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isEditContainerShow()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMainPage()Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->isInMainPage()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$AllAppsCategoryContainer(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->requestFocus()Z

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getDisplayedChild()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getInsetsPaddingTop()I

    move-result v0

    .line 59
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 61
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, p0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBackPressed()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 43
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    const v0, 0x7f0a00b3

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    const v0, 0x7f0a00b2

    .line 45
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    .line 46
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsCategoryContainer$V3PAcSEfvGGDiJ8vnnKJbntEfYw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsCategoryContainer$V3PAcSEfvGGDiJ8vnnKJbntEfYw;-><init>(Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onResume()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onScreenSizeChanged()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onScrollUpEnd()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getInsetsPaddingTop()I

    move-result p1

    .line 191
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public resetView()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->resetView()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToWorkPage()V

    :cond_0
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, p0, :cond_0

    .line 105
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public switchToList()V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    return-void
.end method
