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

.field protected final mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRecommendAppProvider:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;

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
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    const-string v0, ""

    .line 276
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 456
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v0, 0x0

    .line 457
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    .line 458
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    .line 279
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 280
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 281
    new-instance p2, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    .line 282
    new-instance p2, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    .line 283
    new-instance p1, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendAppProvider:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;

    .line 284
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public static synthetic lambda$appendAutoSuggestResult$0(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Ljava/util/ArrayList;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic lambda$appendBranchLocalSearchResult$2(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Ljava/util/ArrayList;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic lambda$appendBranchSearchResult$1(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)Ljava/util/ArrayList;
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public appendAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;)V
    .locals 2

    .line 599
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$mLIAe4Cx8fJuvqdDeZ-WbBcZuco;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-virtual {v0, p1, v1}, Lcom/mi/globallauncher/BranchAppListDataManager;->appendAutoSuggestResult(Lio/branch/search/BranchAutoSuggestResult;Lcom/mi/globallauncher/BranchAppListDataManager$AppendAutoSuggestResultCallBack;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method

.method public appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;)V
    .locals 4

    .line 624
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    new-instance v3, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$HDKPnaGe3uIy90scvYdivuHl59o;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$HDKPnaGe3uIy90scvYdivuHl59o;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/mi/globallauncher/BranchAppListDataManager;->appendBranchLocalSearchResult(Lio/branch/search/BranchLocalSearchResult;Landroid/content/res/Resources;Lcom/mi/globallauncher/BranchAppListDataManager$AppendBranchLocalSearchResultCallback;Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V

    return-void
.end method

.method public appendBranchSearchResult(Lio/branch/search/BranchSearchResult;)V
    .locals 3

    .line 605
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$1;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    new-instance v2, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$ygg_mWOppKL34xCaX49dXknSxhQ;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$BaseAlphabeticalAppsList$ygg_mWOppKL34xCaX49dXknSxhQ;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/mi/globallauncher/BranchAppListDataManager;->appendBranchSearchResult(Lio/branch/search/BranchSearchResult;Lcom/mi/globallauncher/BranchAppListDataManager$IBranchCompositeSearchCallBack;Lcom/mi/globallauncher/BranchAppListDataManager$ClearItemsForBranchResultCallBack;)V

    return-void
.end method

.method public clearRvData()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 451
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getAppPosition(Lcom/miui/home/launcher/AppInfo;)I
    .locals 4

    .line 692
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 693
    iget v2, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->isRecommend:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 695
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    iget p1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->position:I

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
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

    .line 673
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 674
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$3;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$3;-><init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 686
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object v1

    .line 687
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v0

    return-object v0
.end method

.method getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
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

    .line 585
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0

    .line 588
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
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

    .line 590
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getNumAppRows()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public handleAdapterWithColorFilter()V
    .locals 0

    return-void
.end method

.method public hasFilter()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasNoFilteredResults()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowRecommendApps()Z
    .locals 1

    .line 655
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    return v0
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

    .line 383
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 385
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

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->sortApps()V

    .line 391
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 392
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result p1

    if-nez p1, :cond_3

    .line 393
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendAppProvider:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;->getRecommendApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 399
    sget-object p2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 403
    new-instance p1, Ljava/util/TreeMap;

    new-instance p2, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {p2}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 404
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

    .line 406
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 419
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

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 424
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

    .line 426
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_3

    .line 431
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->updateAdapterItems()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected refillAdapterItems()V
    .locals 9

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 462
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v0, 0x0

    .line 463
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    .line 464
    iput v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    .line 466
    invoke-static {}, Lcom/mi/globallauncher/BranchAppListDataManager;->getInstance()Lcom/mi/globallauncher/BranchAppListDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/mi/globallauncher/BranchAppListDataManager;->keepItemList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 469
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 470
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 473
    iget-boolean v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 475
    new-instance v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const-string v4, "#"

    invoke-direct {v2, v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 476
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/AppInfo;

    .line 480
    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    const-string v6, "#"

    iget v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    invoke-static {v5, v6, v4, v7, v3}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    .line 482
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v6, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_1

    .line 483
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iput-object v5, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 485
    :cond_1
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 493
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asRecommendDivider(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v2

    .line 499
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 500
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->branchSearchIns()Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/mi/globallauncher/branchInterface/IBranchSearchManager;->isChangeToDrawerByDefault()Z

    move-result v4

    if-nez v4, :cond_5

    .line 501
    :cond_4
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_5
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100255

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
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

    .line 506
    invoke-virtual {v4}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 509
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 510
    iput-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastSectionName:Ljava/lang/String;

    .line 511
    new-instance v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v6, v5}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 512
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    iget-object v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_7
    iget v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    iget v7, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->appIndex:I

    invoke-static {v6, v5, v4, v7, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v5

    .line 517
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v6, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_8

    .line 518
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->lastFastScrollerSectionInfo:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    iput-object v5, v6, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 520
    :cond_8
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->handleAdapterWithColorFilter()V

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasFilter()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 527
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/mi/globallauncher/BranchClientImplement;->branchQuery(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 529
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v4}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_a
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 534
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 537
    :cond_b
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lcom/mi/globallauncher/BranchClientImplement;->branchAddKeepList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 538
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 540
    :cond_c
    iget-boolean v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    if-eqz v1, :cond_d

    .line 541
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->position:I

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->asEdit(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_d
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v2, -0x1

    .line 552
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

    .line 553
    iput v0, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 554
    iget v8, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v8

    if-eqz v8, :cond_f

    move v5, v0

    goto :goto_1

    .line 556
    :cond_f
    iget v8, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 557
    rem-int v8, v5, v1

    if-nez v8, :cond_10

    add-int/lit8 v2, v2, 0x1

    move v6, v0

    .line 561
    :cond_10
    iput v2, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 562
    iput v6, v7, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v3

    goto :goto_1

    :cond_11
    add-int/2addr v2, v3

    .line 567
    iput v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mNumAppRowsInAdapter:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 570
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 572
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 573
    iget-object v5, v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 574
    iget v5, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 575
    iput v2, v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_2

    .line 578
    :cond_12
    iput v3, v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v3, v0

    goto :goto_2

    :cond_13
    return-void
.end method

.method protected refreshRecyclerView()V
    .locals 3

    .line 444
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_0

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

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

    .line 360
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 362
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setShowEdit(Z)V
    .locals 1

    .line 666
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    if-eq p1, v0, :cond_0

    .line 667
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowEdit:Z

    const/4 p1, 0x1

    .line 668
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setShowRecommendApps(Z)V
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    if-eq p1, v0, :cond_0

    .line 660
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 p1, 0x1

    .line 661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method protected sortApps()V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected updateAdapterItems()V
    .locals 0

    .line 439
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refillAdapterItems()V

    .line 440
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method

.method public updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 1

    .line 292
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method
