.class public Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;
.super Landroid/widget/ViewSwitcher;
.source "AllAppsCategoryContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/Insettable;
.implements Lcom/miui/home/launcher/ShortcutIcon$ShortcutIconContainer;


# instance fields
.field private mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

.field private mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f010010

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setInAnimation(Landroid/content/Context;I)V

    const p2, 0x7f010011

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setOutAnimation(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getDisplayedChild()I

    move-result p1

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->requestFocus()Z

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getDisplayedChild()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private switchView(I)V
    .locals 2

    .line 67
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindCategoryAdded()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryAdded()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryNameUpdate()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryOrderUpdate()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryRemoved()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->bindCategoryUpdate(I)V

    return-void
.end method

.method public editCategory(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->updateCategory(I)V

    const/4 p1, 0x1

    .line 63
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    return-void
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 137
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCategoryCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getCategoryCount()I

    move-result v0

    return v0
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

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroid/mysupport/v7/widget/RecyclerView;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->getActiveRecyclerView()Landroid/mysupport/v7/widget/RecyclerView;

    move-result-object v0

    .line 158
    :goto_0
    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {v1, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEditContainerShow()Z
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;->onBackPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onFinishInflate()V

    const v0, 0x7f0a006d

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    const v0, 0x7f0a006c

    .line 42
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    .line 43
    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsCategoryContainer$V3PAcSEfvGGDiJ8vnnKJbntEfYw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsCategoryContainer$V3PAcSEfvGGDiJ8vnnKJbntEfYw;-><init>(Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onScrollUpEnd()V

    return-void
.end method

.method public resetView()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mEditContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryEditContainer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->resetView()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    .line 58
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 56
    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->mListContainer:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public switchToList()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->switchView(I)V

    return-void
.end method
