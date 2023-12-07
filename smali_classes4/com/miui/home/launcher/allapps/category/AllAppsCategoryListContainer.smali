.class public Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;
.super Landroid/widget/LinearLayout;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# static fields
.field public static final STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

.field private static final mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;


# instance fields
.field private mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private final mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field private final mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field private final mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

.field private final mFastScrollerOffset:Landroid/graphics/Point;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field protected mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

.field private mSettingBtn:Landroid/widget/ImageView;

.field private mTipView:Landroid/widget/ImageView;

.field private mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

.field private mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field protected mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    .line 83
    new-instance v0, Lcom/miui/home/launcher/allapps/StringCache;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/StringCache;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 335
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 87
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 88
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11003c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 89
    sget-object p1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/StringCache;->loadStrings(Landroid/content/Context;)V

    .line 90
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    sget-object p2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 91
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    sget-object p2, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->STRING_CACHE:Lcom/miui/home/launcher/allapps/StringCache;

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/StringCache;->allAppsWorkTab:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 92
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 93
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->buildSortCategoryList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateIndicator()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    return-void
.end method

.method private buildSortCategoryList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 350
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->hasWorkApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 359
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppCategories()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method private cancelColorGroupRevealAnim()V
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz p0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->cancelRevealAnim()V

    :cond_0
    return-void
.end method

.method private scrollToMainPage()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    .line 396
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isPreferWorkProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 404
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method private updateIndicator()V
    .locals 2

    .line 367
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setVisibility(I)V

    .line 369
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTipView()V
    .locals 2

    .line 203
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isChangeToDrawerForBranch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->needShowSettingTip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 205
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTipView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindCategoryAdded()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 0

    .line 316
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 322
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->bindCategoryUpdate()V

    :cond_0
    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 297
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
    .locals 1

    .line 443
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 445
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getAllAppsAlphabeticalAppsList()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 435
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 437
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAllAppsView()Landroid/view/View;
    .locals 2

    .line 451
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "getAllAppsView"

    const-string v1, "all apps view is null"

    .line 453
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    .line 377
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v0, :cond_0

    .line 378
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCategoryCount()I
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getCurrentPagePosition()I
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 267
    invoke-interface {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInMainPage()Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public synthetic lambda$onFinishInflate$0$AllAppsCategoryListContainer(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    .line 385
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    .line 386
    instance-of v0, p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v0, :cond_0

    .line 387
    check-cast p0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 274
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 276
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 277
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 279
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 280
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete empty category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Category"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    .line 283
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    .line 282
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 171
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 179
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 181
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 99
    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryListContainer$DutaGjhjLIKiEGRvtRlUVfA3R50;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryListContainer$DutaGjhjLIKiEGRvtRlUVfA3R50;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0061

    .line 105
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a038e

    .line 115
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTipView:Landroid/widget/ImageView;

    const v0, 0x7f0a0063

    .line 117
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/library/view/viewpager/ViewPager;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    .line 118
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setOffscreenPageLimit(I)V

    .line 119
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setAdapter(Lcom/miui/home/library/view/viewpager/PagerAdapter;)V

    const v0, 0x7f0a01fb

    .line 122
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 123
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_0

    .line 125
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setRightPadding(I)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setLeftPadding(I)V

    .line 129
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    .line 130
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->addOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingsDrawable(Landroid/content/Context;I)I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 231
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 236
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_category_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    goto :goto_1

    .line 256
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    .line 257
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingsDrawable(Landroid/content/Context;I)I

    move-result p0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    .line 153
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->cancelColorGroupRevealAnim()V

    return-void
.end method

.method protected onPageSelected(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    .line 158
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    .line 159
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->isColorFilterEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->isInMainPage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->changeSearchBarState(Z)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->changeSearchBarState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateTipView()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 423
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 192
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->onScrollUpEnd()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateTipView()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 245
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetView()V
    .locals 2

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->resetView()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 414
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 224
    :cond_0
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public updateCategoryList()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 331
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/miui/home/library/view/viewpager/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
