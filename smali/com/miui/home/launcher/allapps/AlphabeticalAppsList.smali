.class public Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;,
        Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

.field private final mApps:Ljava/util/List;
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

.field private final mFastScrollerSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilteredApps:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AllAppsStore;)V
    .locals 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 255
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 256
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 257
    new-instance p2, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    .line 258
    new-instance p2, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    .line 259
    new-instance p1, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;

    invoke-direct {p1}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProviderImpl;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendAppProvider:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;

    .line 260
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getFiltersAppInfos()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    return-object v0

    .line 535
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

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

    .line 537
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApp(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 539
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private refillAdapterItems()V
    .locals 11

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 424
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 427
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    const-string v4, "#"

    invoke-direct {v0, v4}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 430
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/AppInfo;

    add-int/lit8 v8, v5, 0x1

    const-string v9, "#"

    add-int/lit8 v10, v6, 0x1

    .line 434
    invoke-static {v5, v9, v7, v6, v3}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v5

    .line 436
    iget-object v6, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v6, :cond_0

    .line 437
    iput-object v5, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 439
    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsRecommendCount()I

    move-result v5

    if-lt v8, v5, :cond_1

    move v5, v8

    move v6, v10

    goto :goto_1

    :cond_1
    move v5, v8

    move v6, v10

    goto :goto_0

    .line 447
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asRecommendDivider(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    move v6, v2

    move v7, v6

    .line 452
    :goto_2
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getFiltersAppInfos()Ljava/util/List;

    move-result-object v4

    .line 453
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 454
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v7}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v7, v8, 0x1

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v9

    invoke-virtual {v9}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10015f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asAllAppsTitle(ILjava/lang/String;)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/AppInfo;

    .line 458
    invoke-virtual {v5}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 461
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 463
    new-instance v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-direct {v0, v8}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v8

    :cond_5
    add-int/lit8 v9, v7, 0x1

    add-int/lit8 v10, v6, 0x1

    .line 468
    invoke-static {v7, v8, v5, v6, v2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILjava/lang/String;Lcom/miui/home/launcher/AppInfo;IZ)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v6

    .line 469
    iget-object v7, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    if-nez v7, :cond_6

    .line 470
    iput-object v6, v0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 472
    :cond_6
    iget-object v7, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v9

    move v6, v10

    goto :goto_3

    .line 476
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 478
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasNoFilteredResults()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 479
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v1, v7, 0x1

    invoke-static {v7}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asEmptySearch(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asMarketSearch(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v4

    .line 483
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 487
    :cond_9
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowEdit:Z

    if-eqz v0, :cond_a

    .line 488
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->asEdit(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_a
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, -0x1

    .line 499
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    move v6, v5

    :cond_b
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 500
    iput v2, v7, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 501
    iget v8, v7, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result v8

    if-eqz v8, :cond_c

    move v5, v2

    goto :goto_4

    .line 503
    :cond_c
    iget v8, v7, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v8}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 504
    rem-int v8, v5, v0

    if-nez v8, :cond_d

    add-int/lit8 v1, v1, 0x1

    move v6, v2

    .line 508
    :cond_d
    iput v1, v7, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    .line 509
    iput v6, v7, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v3

    goto :goto_4

    :cond_e
    add-int/2addr v1, v3

    .line 514
    iput v1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 517
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 519
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 520
    iget-object v5, v4, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 521
    iget v5, v5, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v5}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 522
    iput v2, v4, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    goto :goto_5

    .line 525
    :cond_f
    iput v3, v4, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    add-float/2addr v3, v0

    goto :goto_5

    :cond_10
    return-void
.end method

.method private refreshRecyclerView()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-eqz v0, :cond_0

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateAdapterItems()V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->refillAdapterItems()V

    .line 406
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->refreshRecyclerView()V

    return-void
.end method


# virtual methods
.method public findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method getAdapterItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppPosition(Lcom/miui/home/launcher/AppInfo;)I
    .locals 4

    .line 600
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    .line 601
    iget v2, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->isRecommend:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 603
    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    iget p1, v1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method getDifferConfig()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 582
    new-instance v1, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$1;-><init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    invoke-direct {v1, v2}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/mysupport/v7/util/DiffUtil$ItemCallback;)V

    .line 594
    invoke-virtual {v1, v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    move-result-object v1

    .line 595
    invoke-virtual {v1, v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v0

    return-object v0
.end method

.method getFastScrollerSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFastScrollerSections:Ljava/util/List;

    return-object v0
.end method

.method getNumAppRows()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mNumAppRowsInAdapter:I

    return v0
.end method

.method public hasFilter()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

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

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mFilteredApps:Ljava/util/List;

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

    .line 563
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowRecommendApps:Z

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

    .line 347
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 349
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

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

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 357
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 358
    iget-boolean p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowRecommendApps:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->hasFilter()Z

    move-result p1

    if-nez p1, :cond_3

    .line 359
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mRecommendAppProvider:Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2, v0}, Lcom/miui/home/launcher/allapps/recommend/RecommendAppProvider;->getRecommendApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 365
    sget-object p2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 369
    new-instance p1, Ljava/util/TreeMap;

    new-instance p2, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {p2}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 370
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 372
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 385
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

    .line 386
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 390
    :cond_6
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 392
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_3

    .line 397
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mAdapter:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

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

    .line 332
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mSearchResults:Ljava/util/ArrayList;

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public setShowEdit(Z)V
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowEdit:Z

    if-eq p1, v0, :cond_0

    .line 575
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowEdit:Z

    const/4 p1, 0x1

    .line 576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setShowRecommendApps(Z)V
    .locals 1

    .line 567
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowRecommendApps:Z

    if-eq p1, v0, :cond_0

    .line 568
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mShowRecommendApps:Z

    const/4 p1, 0x1

    .line 569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method
