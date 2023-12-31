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

.field private mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

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

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    return-object p0
.end method

.method private addItemInfoInner(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$sQBSekXSeKNbaCDm2H20g8C-zvA;

    invoke-direct {v1, p1}, Lcom/miui/home/launcher/hotseats/-$$Lambda$HotSeatsList$sQBSekXSeKNbaCDm2H20g8C-zvA;-><init>(Lcom/miui/home/launcher/ItemInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->updateItemPosition(Lcom/miui/home/launcher/ItemInfo;)V

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 3
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

    move-result-object p0

    .line 112
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$addItemInfoInner$0(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 0

    .line 152
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyItemChanged(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 306
    iget-object v1, v1, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-ne v1, p1, :cond_0

    .line 307
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyItemChanged(I)V

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

    const/4 v0, 0x1

    const-string v1, "key_home_screen_search_bar"

    invoke-static {p0, v1, v0}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private updateItemPosition(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 3

    .line 159
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 160
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    if-lt v1, v2, :cond_0

    .line 161
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 146
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfoInner(Lcom/miui/home/launcher/ItemInfo;)V

    .line 147
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 148
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public addOutlineItem(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 192
    invoke-static {p1, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asOutline(Landroid/graphics/Bitmap;I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 193
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method getCantAddToLauncherDraggingItem()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    return-object p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    return-object p0
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

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hasOutlineItem()Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFull()Z
    .locals 1

    .line 285
    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getHotseatMaxCount()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRecommendUpdate()V
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public refillAdapterItems()V
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-boolean v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mShowSearchIcon:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asSearch()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
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

    .line 235
    instance-of v2, v1, Lcom/miui/home/launcher/FolderInfo;

    if-eqz v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asFolder(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_1
    instance-of v2, v1, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asProgress(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asShortcut(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 244
    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result v0

    .line 245
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mRecentsProvider:Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->getRecommendApps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 250
    iget-object v2, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asDivLine()Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/PairShortcutInfo;

    .line 253
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->hasPairApp()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 254
    iget-object v4, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asRecommendPair(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x67

    .line 255
    iput-wide v4, v3, Lcom/miui/home/launcher/PairShortcutInfo;->container:J

    .line 256
    iget-object v6, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/PairShortcutInfo;->getPairName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/miui/home/launcher/PairShortcutInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v6

    iput-wide v4, v6, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    .line 258
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo2()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    iput-wide v4, v3, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    goto :goto_1

    .line 260
    :cond_6
    invoke-virtual {v3}, Lcom/miui/home/launcher/PairShortcutInfo;->getShortcutInfo1()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v4

    const/4 v5, 0x0

    .line 261
    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/ShortcutInfo;->setMessage(Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->asRecommend(Lcom/miui/home/launcher/ItemInfo;)Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, -0x66

    .line 263
    iput-wide v5, v3, Lcom/miui/home/launcher/PairShortcutInfo;->container:J

    .line 264
    iput-wide v5, v4, Lcom/miui/home/launcher/ShortcutInfo;->container:J

    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    .line 272
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 274
    iput v1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 276
    :cond_8
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

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

    .line 177
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public removeOutlineItem()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 206
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    :cond_0
    return-void
.end method

.method public replaceOutline(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 214
    iget v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->viewType:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 215
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    goto :goto_1

    .line 216
    :cond_0
    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    if-eq v2, p1, :cond_1

    .line 219
    iget-object v2, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->itemInfo:Lcom/miui/home/launcher/ItemInfo;

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    iput v0, v2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    .line 223
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public setAdapter(Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mAdapter:Lcom/miui/home/launcher/hotseats/HotSeatsListContentAdapter;

    return-void
.end method

.method setCantAddToLauncherDraggingItem(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    .line 294
    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mCantAddToLauncherDraggingItem:Lcom/miui/home/launcher/ItemInfo;

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 299
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->notifyItemChanged(Lcom/miui/home/launcher/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public updateItemIcons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 168
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotSeats ListView addItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.HotSeatsList"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ItemInfo;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfoInner(Lcom/miui/home/launcher/ItemInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mComparator:Lcom/miui/home/launcher/hotseats/HotSeatsList$CellXComparator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    return-void
.end method

.method public updateItemInfo(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput p1, p2, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 184
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->addItemInfo(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public updateOutlineItem(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    if-eq v0, p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsList;->mOutlineItem:Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;

    iput p1, v0, Lcom/miui/home/launcher/hotseats/HotSeatsList$AdapterItem;->position:I

    .line 199
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/HotSeatsList;->refillAdapterItems()V

    :cond_0
    return-void
.end method
