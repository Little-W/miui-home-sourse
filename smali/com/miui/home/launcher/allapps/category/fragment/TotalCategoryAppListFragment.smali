.class public Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;
.source "TotalCategoryAppListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getItemInfoMatcher(I)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAdapter(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
    .locals 2

    .line 38
    new-instance p0, Lcom/miui/home/launcher/allapps/TotalGridAdapter;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/home/launcher/allapps/TotalGridAdapter;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->onDestroyView()V

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/fragment/RecommendCategoryAppListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/fragment/TotalCategoryAppListFragment;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDrawerHeaderElevationController()Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method
