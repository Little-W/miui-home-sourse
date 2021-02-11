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

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    .line 75
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 76
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method private refillAdapterItems()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
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

    .line 115
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->asCategory(Lcom/miui/home/launcher/allapps/category/CategoryInfo;)Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;->asAddCategory()Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private refreshRecyclerView()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    if-eqz v0, :cond_0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateAdapterItems()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->refillAdapterItems()V

    .line 103
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->refreshRecyclerView()V

    return-void
.end method


# virtual methods
.method getDifferConfig()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 138
    new-instance v1, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList$1;-><init>(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;)V

    invoke-direct {v1, v2}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;-><init>(Landroid/mysupport/v7/util/DiffUtil$ItemCallback;)V

    .line 150
    invoke-virtual {v1, v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->build()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v0

    return-object v0
.end method

.method getOrderedCategoryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/CategoryInfo;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method isCategoryOrderChanged()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
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

    .line 89
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateCategoryList()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method setAdapter(Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    return-void
.end method

.method swap(II)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 122
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->refillAdapterItems()V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapter;->notifyItemMoved(II)V

    :cond_0
    return-void
.end method

.method updateCategoryList()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getAppCategories()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategoryComparator:Lcom/miui/home/launcher/allapps/category/CategoryInfoComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mOrderedCategories:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->mCategories:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/settings/CategoryOrderAdapterList;->updateAdapterItems()V

    return-void
.end method
