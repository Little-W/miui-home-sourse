.class public Lcom/miui/home/launcher/allapps/category/fragment/BaseTotalCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
.source "BaseTotalCategoryAppListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->onDestroyView()V

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/BaseTotalCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/fragment/BaseTotalCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 20
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/BaseTotalCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/fragment/BaseTotalCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
