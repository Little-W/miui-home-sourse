.class public Lcom/miui/home/launcher/hotseats/HotSeatsList;
.super Ljava/lang/Object;
.source "HotSeatsList.java"

# interfaces
.implements Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;,
        Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    }
.end annotation


# instance fields
.field private final MAX_RECENT_NUMBER:I

.field private mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

.field private final mAdapterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

.field private final mItemInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

.field private final mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

.field private mShowSearchIcon:Z

.field private final mUserActive:Ljava/util/function/BooleanSupplier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-direct {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    const/4 v0, 0x3

    .line 51
    iput v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->MAX_RECENT_NUMBER:I

    .line 57
    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mUserActive:Ljava/util/function/BooleanSupplier;

    .line 58
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->shouldShowSearchIcon(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    .line 60
    iput-object p2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    .line 61
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->bindRecommendContainer(Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$RecommendContainer;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    .line 63
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance p2, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$1;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V

    .line 83
    invoke-direct {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/hotseats/HotSeatsList;)Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    return-object p0
.end method

.method private getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-direct {v0}, Lcom/miui/home/launcher/MainThreadExecutor;-><init>()V

    .line 99
    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    new-instance v2, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList$2;-><init>(Lcom/miui/home/launcher/hotseats/HotSeatsList;)V

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 111
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v0

    return-object v0
.end method

.method private notifyItemChanged(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 269
    iget-object v1, v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne v1, p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyItemChanged(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static shouldShowSearchIcon(Landroid/content/Context;)Z
    .locals 2

    .line 126
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_home_screen_search_bar"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 147
    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v2, v3, :cond_0

    .line 148
    iget v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public addOutlineItem(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 166
    invoke-static {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asOutline(Landroid/graphics/Bitmap;I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 167
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method getDraggingItem()Lcom/miui/home/launcher/ItemInfo;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return-object v0
.end method

.method public getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleDataChange(IILjava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mUserActive:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hasOutlineItem()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRecommendUpdate()V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public refillAdapterItems()V
    .locals 6

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asSearch()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    .line 209
    instance-of v2, v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asFolder(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asProgress(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asShortcut(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 218
    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    .line 219
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getRecommendApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 224
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asDivLine()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    .line 227
    iget-object v4, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asRecommend(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x66

    .line 228
    iput-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    .line 235
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 237
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public refreshSearchIcon()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->shouldShowSearchIcon(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    .line 122
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public removeItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public removeOutlineItem()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    :cond_0
    return-void
.end method

.method public replaceOutline(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 188
    iget v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_1

    .line 190
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, p1, :cond_1

    .line 193
    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iput v0, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 197
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public setAdapter(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    return-void
.end method

.method setDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 257
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 262
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->notifyItemChanged(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public updateOutlineItem(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    if-eq v0, p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    iput p1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    :cond_0
    return-void
.end method
