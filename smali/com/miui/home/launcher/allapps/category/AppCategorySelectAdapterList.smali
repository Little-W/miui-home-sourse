.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;
.super Ljava/lang/Object;
.source "AppCategorySelectAdapterList.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
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

.field private final mContext:Landroid/content/Context;

.field private mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

.field private mIsSearchMode:Z

.field private mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

.field private mSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/AllAppsStore;Z)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mCachedSectionNames:Ljava/util/HashMap;

    .line 112
    new-instance v0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    .line 116
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    .line 118
    new-instance p1, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    .line 119
    new-instance p1, Lcom/miui/home/launcher/allapps/AppInfoComparator;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/miui/home/launcher/allapps/AppInfoComparator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    .line 120
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    .line 121
    iput-boolean p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIsSearchMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)Lcom/miui/home/launcher/util/ItemInfoMatcher;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    return-object p0
.end method

.method private getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIndexer:Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mCachedSectionNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getFiltersApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 290
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/miui/home/launcher/AppInfo;->toComponentKey()Lcom/miui/home/launcher/util/ComponentKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private refillAdapterItems()V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    iget-boolean v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mIsSearchMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getFiltersApps()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/AppInfo;

    .line 221
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v5, v3, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v5

    invoke-static {v3, v5}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->hasFilter()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asEmptySearch()Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    const v2, 0x7f110273

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 232
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 238
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    const v3, 0x7f110036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    const v3, 0x7f1100e8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asSection(Ljava/lang/String;)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 244
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 245
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->asApp(Lcom/miui/home/launcher/AppInfo;Z)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method private refreshRecyclerView()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    if-eqz v0, :cond_0

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private updateAdapterItems()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->refillAdapterItems()V

    .line 206
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->refreshRecyclerView()V

    return-void
.end method


# virtual methods
.method getAddApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 320
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 328
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 329
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$1;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 341
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object v1

    .line 342
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v0

    return-object v0
.end method

.method getRemoveApps()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 310
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/util/ItemInfoMatcher;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getSelectedApps()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/AppInfo;

    .line 300
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->matches(Lcom/miui/home/launcher/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasFilter()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 140
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 141
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/AllAppsStore;->getApps()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAppNameComparator:Lcom/miui/home/launcher/allapps/AppInfoComparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 147
    sget-object p2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    new-instance p1, Ljava/util/TreeMap;

    new-instance p2, Lcom/miui/home/launcher/util/LabelComparator;

    invoke-direct {p2}, Lcom/miui/home/launcher/util/LabelComparator;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 152
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 154
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 167
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 174
    invoke-virtual {p2}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getAndUpdateCachedSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_2

    .line 177
    :cond_3
    sget-object p1, Lcom/miui/home/LauncherDecoupleHelper;->INSTANCE:Lcom/miui/home/LauncherDecoupleHelper;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mApps:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/miui/home/LauncherDecoupleHelper;->filterHideApps(Ljava/util/List;)V

    .line 178
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateAdapterItems()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAllAppsStore:Lcom/miui/home/launcher/allapps/AllAppsStore;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/miui/home/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    return-void
.end method

.method public setChecked(Lcom/miui/home/launcher/AppInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 195
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->add(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->remove(Lcom/miui/home/launcher/AppInfo;)V

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 200
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateAdapterItems()V

    .line 201
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public setChecked(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/AppInfo;

    .line 183
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->add(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/AppInfo;

    .line 186
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->remove(Lcom/miui/home/launcher/AppInfo;)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 189
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->updateAdapterItems()V

    .line 190
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mAdapter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->scrollToPosition(I)V

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

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 277
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSearchResults:Ljava/util/ArrayList;

    .line 278
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    xor-int/lit8 p1, v1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public updateItemFilter(Lcom/miui/home/launcher/util/ItemInfoMatcher;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mSelectedFilter:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$SelectedFilter;->clear()V

    .line 130
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->mItemFilter:Lcom/miui/home/launcher/util/ItemInfoMatcher;

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->onAppsUpdated(ILjava/util/List;)V

    return-void
.end method
