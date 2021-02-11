.class public Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;
.source "AppListSearchFragment.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/SearchUiResultView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveRecyclerView()Landroid/mysupport/v7/widget/RecyclerView;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0042

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onClick(Landroid/view/View;)V

    const-string p1, "search"

    .line 33
    invoke-static {p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mLayoutManager:Landroid/mysupport/v7/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/mysupport/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 22
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofEmpty()Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
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

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    return-void
.end method
