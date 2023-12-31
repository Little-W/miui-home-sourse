.class public abstract Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;,
        Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;
    }
.end annotation


# instance fields
.field appIndex:I

.field lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

.field lastSectionName:Ljava/lang/String;

.field protected mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

.field protected final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

.field protected final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedSectionNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFilterType:I

.field protected final mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mFilterAppsWithColor:Z

.field protected final mFilteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

.field private mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNumAppRowsInAdapter:I

.field private mQuery:Ljava/lang/String;

.field private mRecommendAppListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

.field private final mRecommendApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field public mShowEdit:Z

.field public mShowRecommendApps:Z

.field position:I


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V
    .locals 2

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 286
    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendAppListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    const-string v1, ""

    .line 293
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    const/4 v1, 0x0

    .line 478
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 480
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    .line 481
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    .line 296
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 297
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 298
    new-instance p2, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    .line 299
    new-instance p2, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    .line 300
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 301
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method


# virtual methods
.method public appendAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 2

    .line 622
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-virtual {v0, p1, v1}, Lcom/mi/globallauncher/BranchAppListDataManager;->appendAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)Z

    .line 623
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method

.method public appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 4

    .line 646
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$3;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    new-instance v3, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$HDKPnaGe3uIy90scvYdivuHl59o;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$HDKPnaGe3uIy90scvYdivuHl59o;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/mi/globallauncher/BranchAppListDataManager;->appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;Landroid/content/res/Resources;Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V

    return-void
.end method

.method public appendBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 3

    .line 627
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    new-instance v2, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$ygg_mWOppKL34xCaX49dXknSxhQ;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$ygg_mWOppKL34xCaX49dXknSxhQ;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/mi/globallauncher/BranchAppListDataManager;->appendBranchSearchResult(Lio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V

    return-void
.end method

.method public filterAppsWithColor(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    .line 72
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItemsFromColor()V

    return-void
.end method

.method public findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getAppPosition(Lcom/miui/home/launcher/AppInfo;)I
    .locals 3

    .line 720
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 721
    iget v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isRecommend:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 723
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iget p0, v0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object p0
.end method

.method getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 702
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$4;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$4;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 714
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 715
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 716
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p0

    return-object p0
.end method

.method getFastScrollerSections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object p0
.end method

.method protected getFiltersAppInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 609
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object p0

    .line 611
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 612
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/util/ComponentKey;

    .line 613
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 615
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getNumAppRows()I
    .locals 0

    .line 349
    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return p0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method public handleAdapterWithColorFilter()V
    .locals 6

    .line 736
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    if-eqz v0, :cond_3

    .line 737
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 738
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 739
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AppInfo;

    .line 740
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getIconColorType()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 741
    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 742
    invoke-virtual {v1}, Lcom/miui/home/launcher/AppInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 745
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 746
    iput-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 747
    new-instance v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v3, v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 748
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_1
    iget v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    const/4 v5, 0x0

    invoke-static {v3, v2, v1, v4, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v2

    .line 753
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v3, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v3, :cond_2

    .line 754
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iput-object v2, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 756
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public hasFilter()Z
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasNoFilteredResults()Z
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowRecommendApps()Z
    .locals 0

    .line 678
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    return p0
.end method

.method public synthetic lambda$appendAutoSuggestResult$0$BaseAlphabeticalAppsList()Ljava/util/ArrayList;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public synthetic lambda$appendBranchLocalSearchResult$2$BaseAlphabeticalAppsList()Ljava/util/ArrayList;
    .locals 0

    .line 657
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public synthetic lambda$appendBranchSearchResult$1$BaseAlphabeticalAppsList()Ljava/util/ArrayList;
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 400
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 402
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 403
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sortApps()V

    .line 408
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 409
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 410
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getRecommendApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 411
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendAppListener:Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->setPredictAppListener(Lcom/miui/launcher/appprediction/GoogleRecommendApp$OnDateChangedListener;)V

    .line 416
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 417
    sget-object p2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 421
    new-instance p1, Ljava/util/TreeMap;

    new-instance p2, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {p2}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 422
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 424
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 429
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 437
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 438
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 442
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 444
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_3

    .line 449
    :cond_7
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    if-eqz p1, :cond_8

    .line 450
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItemsFromColor()V

    goto :goto_4

    .line 452
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItems()V

    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected refillAdapterItems()V
    .locals 9

    const/4 v0, 0x0

    .line 484
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v0, 0x0

    .line 486
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    .line 487
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    .line 489
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/mi/globallauncher/BranchAppListDataManager;->keepItemList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 491
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 492
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 493
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 496
    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 498
    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const-string v4, "#"

    invoke-direct {v2, v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 499
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/AppInfo;

    .line 503
    iget v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    invoke-static {v6, v4, v5, v7, v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v6

    .line 505
    iget-object v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v7, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v7, :cond_1

    .line 506
    iget-object v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iput-object v6, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 508
    :cond_1
    iget-object v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asRecommendDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v2

    .line 522
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 523
    sget-boolean v4, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isChangeToDrawerByDefault()Z

    move-result v4

    if-nez v4, :cond_5

    .line 524
    :cond_4
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_5
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11027c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    .line 529
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 532
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 533
    iput-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 534
    new-instance v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v6, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 535
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    iget-object v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_7
    iget v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    invoke-static {v6, v5, v4, v7, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    .line 540
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v6, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_8

    .line 541
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iput-object v5, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 543
    :cond_8
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->handleAdapterWithColorFilter()V

    .line 549
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mi/globallauncher/BranchClientImplement;->branchQuery(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 552
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_a
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 557
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 560
    :cond_b
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lcom/mi/globallauncher/BranchClientImplement;->branchAddKeepList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 561
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 563
    :cond_c
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    if-eqz v1, :cond_d

    .line 564
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEdit(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_d
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, -0x1

    .line 575
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    move v6, v5

    :cond_e
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 576
    iput v0, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 577
    iget v8, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v8

    if-eqz v8, :cond_f

    move v5, v0

    goto :goto_1

    .line 579
    :cond_f
    iget v8, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 580
    rem-int v8, v5, v1

    if-nez v8, :cond_10

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    .line 584
    :cond_10
    iput v2, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 585
    iput v6, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v3

    goto :goto_1

    :cond_11
    add-int/2addr v2, v3

    .line 590
    iput v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mNumAppRowsInAdapter:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 593
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 595
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 596
    iget-object v4, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 597
    iget v4, v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 598
    iput v1, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_2

    .line 601
    :cond_12
    iput v2, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v2, v0

    goto :goto_2

    :cond_13
    return-void
.end method

.method protected refreshRecyclerView()V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_0

    .line 467
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected refreshRecyclerViewFromColor()V
    .locals 3

    .line 771
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_1

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    return-void
.end method

.method public setFilterAppsWithColor(Z)V
    .locals 0

    .line 777
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilterAppsWithColor:Z

    const/4 p1, 0x0

    .line 778
    iput p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mColorFilterType:I

    .line 779
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItems()V

    return-void
.end method

.method public setOrderedFilter(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;)Z"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 379
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setShowEdit(Z)V
    .locals 1

    .line 694
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    if-eq p1, v0, :cond_0

    .line 695
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    const/4 p1, 0x1

    .line 696
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setShowRecommendApps(Z)V
    .locals 2

    .line 682
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eq p1, v0, :cond_0

    .line 683
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 v0, 0x1

    .line 684
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 687
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->registerPredictionUpdates()V

    goto :goto_0

    .line 689
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->getInstance()Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderManager;->unRegisterPredictionUpdates()V

    :goto_0
    return-void
.end method

.method protected sortApps()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected updateAdapterItems()V
    .locals 0

    .line 461
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refillAdapterItems()V

    .line 462
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method

.method protected updateAdapterItemsFromColor()V
    .locals 0

    .line 766
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refillAdapterItems()V

    .line 767
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerViewFromColor()V

    return-void
.end method

.method public updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method
