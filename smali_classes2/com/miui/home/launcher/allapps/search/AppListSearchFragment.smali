.class public Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;
.super Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;
.source "AppListSearchFragment.java"

# interfaces
.implements Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;
.implements Lcom/miui/home/launcher/allapps/SearchUiResultView;


# instance fields
.field private homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

.field private mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0081

    return p0
.end method

.method protected getShowingShortcutIcon(Lcom/miui/home/launcher/AppInfo;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->appendAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V

    .line 99
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->appendBranchSearchResult(Lio/branch/search/BranchSearchResult;)V

    .line 94
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->onClick(Landroid/view/View;)V

    const-string p0, "search"

    .line 65
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsClick(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 47
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-static {}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->ofEmpty()Lcom/miui/home/launcher/util/ItemInfoMatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V

    .line 48
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    new-instance p1, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;-><init>(Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher$HomePressListener;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    .line 50
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->register(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 52
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/miui/home/launcher/allapps/category/fragment/DrawerAppsListFragment;->onDestroy()V

    .line 129
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isBranchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/mi/globallauncher/util/CommercialAsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->homeWatcherReceiver:Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mi/globallauncher/branchInterface/IHomeKeyWatcher$HomeKeyWatcher;->unRegister(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onHomeKeyPressed()V
    .locals 1

    .line 123
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->hideDeepViewDialog(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/CloseAllOverLauncherWindowMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->onHomeKeyPressed()V

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setSearchBarController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method

.method public setSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setSearchBarController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    .line 72
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setQuery(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mAppsList:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->scrollToPosition(I)V

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AppListSearchFragment;->mRecyclerView:Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->handleScrollListener(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
