.class Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;
.super Ljava/lang/Object;
.source "CategoryOrderAdapterList.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

.field private final mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

.field private final mOrderedCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsStore;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    .line 76
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 77
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method private refillAdapterItems()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/category/CategoryInfo;

    .line 116
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->asCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->asAddCategory()Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private refreshRecyclerView()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateAdapterItems()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->refillAdapterItems()V

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->refreshRecyclerView()V

    return-void
.end method


# virtual methods
.method getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 139
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 151
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 152
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p0

    return-object p0
.end method

.method getOrderedCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method isCategoryOrderChanged()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAppsUpdated(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateCategoryList()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method setAdapter(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    return-void
.end method

.method swap(II)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 123
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->refillAdapterItems()V

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->notifyItemMoved(II)V

    :cond_0
    return-void
.end method

.method updateCategoryList()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppCategories()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateAdapterItems()V

    return-void
.end method
