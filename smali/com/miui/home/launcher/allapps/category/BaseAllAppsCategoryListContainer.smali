.class public Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;
.super Landroid/widget/LinearLayout;
.source "BaseAllAppsCategoryListContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# static fields
.field private static final mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;


# instance fields
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

    .line 64
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 321
    new-instance p1, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$3;-><init>(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 82
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10003c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 83
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100045

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 85
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 86
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f10004a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x2

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 87
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->buildSortCategoryList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateIndicator()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->scrollToMainPage()V

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

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->hasWorkApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 345
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppCategories()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private scrollToMainPage()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    .line 382
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    :cond_1
    :goto_0
    if-gez v0, :cond_2

    move v0, v1

    .line 390
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 391
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_3
    return-void
.end method

.method private updateIndicator()V
    .locals 2

    .line 353
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateTipView()V
    .locals 3

    .line 189
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->isChangeToDrawerForBranch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/mi/globallauncher/manager/BranchInterface;->getCommercialPref()Lcom/mi/globallauncher/branchInterface/ICommercialPreference;

    move-result-object v0

    invoke-interface {v0}, Lcom/mi/globallauncher/branchInterface/ICommercialPreference;->needShowSettingTip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTipView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindCategoryAdded()V
    .locals 0

    .line 298
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 0

    .line 302
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->bindCategoryUpdate()V

    :cond_0
    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 363
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 364
    check-cast v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCategoryCount()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCurrentPagePosition()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v0}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 370
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->scrollToMainPage()V

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 373
    check-cast v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->locateApp(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 260
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateCategoryList()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 262
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 265
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

    .line 266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.Category"

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete empty category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    .line 269
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    .line 268
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 156
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 157
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 166
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 167
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$BaseAllAppsCategoryListContainer$i38afwtBIjW7ghAAuisT_l9crc0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$BaseAllAppsCategoryListContainer$i38afwtBIjW7ghAAuisT_l9crc0;-><init>(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0057

    .line 100
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$1;-><init>(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a5

    .line 110
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTipView:Landroid/widget/ImageView;

    const v0, 0x7f0a0059

    .line 112
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/library/view/viewpager/ViewPager;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setOffscreenPageLimit(I)V

    .line 114
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setAdapter(Lcom/miui/home/library/view/viewpager/PagerAdapter;)V

    const v0, 0x7f0a0182

    .line 117
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 118
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_0

    .line 120
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setRightPadding(I)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setLeftPadding(I)V

    .line 124
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 126
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer$2;-><init>(Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->addOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingsDrawable(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 217
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p0, p1, v1}, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;->getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 222
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_category_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateCategoryList()V

    goto :goto_1

    .line 242
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mSettingBtn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingsDrawable(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method protected onPageSelected(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateTipView()V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 410
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->onScrollUpEnd()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->updateTipView()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetView()V
    .locals 2

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->resetView()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->scrollToMainPage()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 401
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 210
    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public updateCategoryList()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/BaseAllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
