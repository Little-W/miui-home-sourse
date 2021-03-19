.class public abstract Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;
.source "CategoryAppListFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/category/ICategoryView;


# instance fields
.field private mCategoryId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;-><init>()V

    const/high16 v0, -0x80000000

    .line 24
    iput v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mCategoryId:I

    return-void
.end method

.method public static newInstance(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;
    .locals 3

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 29
    new-instance v0, Lcom/miui/home/launcher/allapps/category/fragment/PersonalCategoryAppListFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/fragment/PersonalCategoryAppListFragment;-><init>()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 31
    new-instance v0, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/fragment/WorkCategoryAppListFragment;-><init>()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    if-nez v0, :cond_2

    .line 33
    new-instance v0, Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;-><init>()V

    goto :goto_0

    .line 35
    :cond_2
    new-instance v0, Lcom/miui/home/launcher/allapps/category/fragment/CustomCategoryAppListFragment;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/fragment/CustomCategoryAppListFragment;-><init>()V

    .line 37
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "category"

    .line 38
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public bindCategoryUpdate()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mCategoryId:I

    return v0
.end method

.method public getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    .line 72
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isHitInParent(Landroid/view/ViewGroup;FFLandroid/graphics/Point;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mCategoryId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->editCategory(I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onClick(Landroid/view/View;)V

    const-string p1, "category"

    .line 65
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "category"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mCategoryId:I

    .line 47
    iget p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mCategoryId:I

    if-eq p1, v1, :cond_1

    if-lez p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setShowEdit(Z)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mCategoryId:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    return-void

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "must set category info"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onScrollUpEnd()V
    .locals 0

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToTop()V

    :cond_1
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 114
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/launcher/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
