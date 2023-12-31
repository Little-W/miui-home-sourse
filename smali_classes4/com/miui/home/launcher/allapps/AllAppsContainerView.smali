.class public Lcom/miui/home/launcher/allapps/AllAppsContainerView;
.super Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
.source "AllAppsContainerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getSearchBarController()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p0
.end method

.method public initBranchOnScrollUpEnd(Lcom/miui/home/launcher/LauncherState;Z)V
    .locals 2

    .line 23
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialInit()Lcom/mi/globallauncher/branchInterface/ICommercialInit;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsContainerView$1;-><init>(Lcom/miui/home/launcher/allapps/AllAppsContainerView;Lcom/miui/home/launcher/LauncherState;Z)V

    invoke-interface {v0, v1}, Lcom/mi/globallauncher/branchInterface/ICommercialInit;->initBranchOnScrollUpEnd(Lcom/mi/globallauncher/branchInterface/BranchInitInterface;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 52
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->isInMainPage()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mSearchContainer:Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->mColorFilterContainerView:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    :cond_0
    return-void
.end method
