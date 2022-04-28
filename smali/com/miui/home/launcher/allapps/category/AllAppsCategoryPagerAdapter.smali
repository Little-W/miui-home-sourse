.class public Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;
.super Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;
.source "AllAppsCategoryPagerAdapter.java"


# instance fields
.field private mCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mViewPagerId:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/miui/home/library/view/viewpager/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 22
    iput p2, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mViewPagerId:I

    return-void
.end method

.method private makeFragmentNameByCategoryId(II)Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getCategoryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method getCategoryViewByCategoryId(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mViewPagerId:I

    invoke-direct {p0, v1, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->makeFragmentNameByCategoryId(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/category/ICategoryView;

    return-object p1
.end method

.method getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mViewPagerId:I

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/category/ICategoryView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;->newInstance(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Lcom/miui/home/launcher/allapps/category/fragment/CategoryAppListFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 74
    check-cast p1, Lcom/miui/home/launcher/allapps/category/ICategoryView;

    .line 75
    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getCategoryId()I

    move-result p1

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    return p1
.end method

.method getPageIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->getCategoryViewByIndex(I)Lcom/miui/home/launcher/allapps/category/ICategoryView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1}, Lcom/miui/home/launcher/allapps/category/ICategoryView;->getCategoryId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected makeFragmentName(IJ)Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    long-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/CategoryInfo;->getCategoryId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->makeFragmentNameByCategoryId(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setCategoryList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
