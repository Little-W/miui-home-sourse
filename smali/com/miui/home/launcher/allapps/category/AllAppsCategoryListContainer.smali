.class public Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;
.super Landroid/widget/LinearLayout;
.source "AllAppsCategoryListContainer.java"

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

.field private mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

.field private mSettingBtn:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

.field private mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

.field private mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    .line 294
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 76
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 77
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100037

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 78
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 79
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100040

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 80
    new-instance p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 81
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f100045

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x2

    invoke-direct {p1, v1, p2, v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;-><init>(ILjava/lang/String;I)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 82
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 83
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getAllAppsStore()Lcom/miui/home/launcher/allapps/AllAppsStore;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->buildSortCategoryList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateIndicator()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 54
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

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->hasWorkApps()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryWork:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryPersonal:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppCategories()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 319
    :cond_2
    sget-object v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private scrollToMainPage()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 358
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2, v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method private updateIndicator()V
    .locals 2

    .line 324
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isAppCategoryEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindCategoryAdded()V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryNameUpdate()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryOrderUpdate()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindCategoryRemoved()V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    return-void
.end method

.method public bindCategoryUpdate(I)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 281
    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->bindCategoryUpdate()V

    :cond_0
    return-void
.end method

.method public getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getActiveRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimateTarget(Lcom/miui/home/launcher/DragObject;)Landroid/view/View;
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 334
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 335
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

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {v0, p1, p2}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getShowingShortcutIcon(Landroid/content/ComponentName;I)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public locateApp(Lcom/miui/home/launcher/AppInfo;)Z
    .locals 2

    .line 341
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    .line 342
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mCategoryAll:Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    .line 343
    instance-of v1, v0, Lcom/miui/home/launcher/allapps/category/fragment/AppsListFragment;

    if-eqz v1, :cond_0

    .line 344
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

    .line 233
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 235
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryList()Ljava/util/ArrayList;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 238
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

    .line 239
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Launcher.Category"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete empty category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getModel()Lcom/miui/home/launcher/LauncherModel;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/model/CategoryRemoveTask;

    .line 242
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps(I)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/miui/home/launcher/model/CategoryRemoveTask;-><init>(ILjava/util/Collection;)V

    .line 241
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->enqueueModelUpdateTask(Lcom/miui/home/launcher/LauncherModel$ModelUpdateTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 143
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 153
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 89
    new-instance v0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryListContainer$DutaGjhjLIKiEGRvtRlUVfA3R50;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AllAppsCategoryListContainer$DutaGjhjLIKiEGRvtRlUVfA3R50;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0052

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$1;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0054

    .line 105
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/library/view/viewpager/ViewPager;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    .line 106
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setOffscreenPageLimit(I)V

    .line 107
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->getId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->setAdapter(Lcom/miui/home/library/view/viewpager/PagerAdapter;)V

    const v0, 0x7f0a0143

    .line 110
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 111
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    const/high16 v2, 0x41800000    # 16.0f

    if-eqz v1, :cond_0

    .line 113
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setRightPadding(I)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setLeftPadding(I)V

    .line 117
    :goto_0
    new-instance v1, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/library/view/viewpager/ViewPager;)V

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    .line 118
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/CategoryNavigator;->setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V

    .line 119
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mMagicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;)V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->addOnPageChangeListener(Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingButtonColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-interface {v0, p0, p1, v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getFastScroller(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Point;)Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

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

    .line 213
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "color_mode"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background_alpha"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/AllAppsSettingChangeMessage;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_category_enable"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->updateCategoryList()V

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mSettingBtn:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    .line 216
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSettingButtonColor(Landroid/content/Context;I)I

    move-result v0

    .line 215
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    .line 217
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTitleAdapter:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->notifyDataSetChanged()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onScrollUpEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 164
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->onScrollUpEnd()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mTouchHandler:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mFastScrollerOffset:Landroid/graphics/Point;

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

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->resetView()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->scrollToMainPage()V

    return-void
.end method

.method public scrollToWorkPage()V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getPageIndex(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/miui/home/library/view/viewpager/ViewPager;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mPagerAdapter:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    invoke-virtual {v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 184
    :cond_0
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->shouldContainerScroll(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public updateCategoryList()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mViewPager:Lcom/miui/home/library/view/viewpager/ViewPager;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/view/viewpager/ViewPager;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
