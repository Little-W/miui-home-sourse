.class public Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;
.super Lcom/miui/home/launcher/BaseRecyclerView;
.source "BaseAllAppsRecyclerView.java"


# instance fields
.field private mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mCachedScrollPositions:Landroid/util/SparseIntArray;

.field private mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

.field private final mNumAppsPerRow:I

.field private mViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 49
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mNumAppsPerRow:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method private isFoundSection(Ljava/lang/String;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z
    .locals 1

    .line 186
    iget-object v0, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    const-string v0, "\u2026"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getApps()Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    return-object v0
.end method

.method protected getAvailableScrollHeight()I
    .locals 3

    .line 379
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 380
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentScrollY()I
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mNumAppsPerRow:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_1

    return v1

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getPaddingTop()I

    move-result v1

    .line 326
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v0

    add-int/2addr v1, v0

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public getCurrentScrollY(II)I
    .locals 8

    .line 330
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 332
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 333
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-gez v2, :cond_7

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_6

    .line 337
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    .line 338
    iget v6, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v6}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_1

    .line 340
    iget v6, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    iget v7, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    if-ne v6, v7, :cond_1

    iget v6, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    iget v7, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowIndex:I

    if-ne v6, v7, :cond_1

    goto :goto_4

    .line 346
    :cond_1
    iget v6, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    if-nez v6, :cond_5

    .line 347
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v5, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_3

    .line 351
    :cond_2
    iget-object v6, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v7, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_4

    .line 353
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_3

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    iget v5, v5, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-virtual {v6, p0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 356
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 357
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    .line 358
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 360
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 362
    :cond_3
    iget-object v5, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :cond_4
    :goto_2
    add-int/2addr v4, v6

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 368
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    move v2, v4

    :cond_7
    sub-int/2addr v2, p2

    return v2
.end method

.method public getSectionFromFraction(F)Ljava/lang/String;
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 139
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v2, 0x1

    .line 141
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 143
    iget v4, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    .line 148
    :cond_2
    :goto_1
    iget-object p1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p1
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 390
    invoke-super {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->onAttachedToWindow()V

    .line 391
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 398
    invoke-super {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->onDetachedFromWindow()V

    .line 399
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 1

    .line 192
    invoke-super {p0}, Lcom/miui/home/launcher/BaseRecyclerView;->onFastScrollCompleted()V

    .line 193
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/IconSizeChangeMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/BaseRecyclerView;->onSizeChanged(IIII)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->updateHeightCache()V

    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    iget v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getCurrentScrollY()I

    move-result v0

    if-gez v0, :cond_2

    .line 251
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v2

    .line 257
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v3

    if-gtz v3, :cond_3

    .line 259
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isThumbDetached()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 264
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v1

    if-nez v1, :cond_7

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 271
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    sub-int v3, v0, v1

    mul-int v4, v3, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    if-gez p1, :cond_4

    mul-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v4, v0

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 281
    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_0

    :cond_4
    sub-int v4, v2, v1

    mul-int/2addr p1, v4

    int-to-float p1, p1

    sub-int v4, v2, v0

    int-to-float v4, v4

    div-float/2addr p1, v4

    float-to-int p1, p1

    .line 285
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v1, p1

    :goto_0
    const/4 p1, 0x0

    .line 287
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 288
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    if-ne v0, p1, :cond_7

    .line 290
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->reattachThumbToScroll()V

    goto :goto_1

    .line 296
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    goto :goto_1

    .line 300
    :cond_6
    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    :cond_7
    :goto_1
    return-void

    .line 244
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->stopScroll()V

    .line 114
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 115
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v2, 0x1

    .line 117
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 118
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 119
    iget v4, v3, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    .line 126
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    .line 127
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    .line 128
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    .line 129
    iget-object p1, v1, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p1
.end method

.method public scrollToPositionAtSection(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getNumAppRows()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->stopScroll()V

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    const/4 v3, 0x1

    .line 164
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 165
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;

    .line 166
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->isFoundSection(Ljava/lang/String;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v4

    goto :goto_0

    .line 173
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->isFoundSection(Ljava/lang/String;Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->setAllTrackedViewsFastScrollFocusState(Z)V

    const-string p1, ""

    return-object p1

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getCurrentScrollY()I

    move-result p1

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v1, p1, v0, v2}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(IILcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;)Z

    .line 182
    iget-object p1, v2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p1
.end method

.method public scrollToTop()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mScrollbar:Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;

    invoke-virtual {v0}, Lcom/miui/home/launcher/view/BaseRecyclerViewFastScroller;->reattachThumbToScroll()V

    :cond_0
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Lcom/miui/home/launcher/BaseRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 199
    new-instance v0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView$1;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 219
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;->onSetAdapter(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    return-void
.end method

.method public setApps(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 61
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 62
    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;-><init>(Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mFastScrollHelper:Lcom/miui/home/launcher/allapps/AllAppsFastScrollHelper;

    return-void
.end method

.method public updateHeightCache()V
    .locals 4

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 75
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 76
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result v2

    .line 75
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 78
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result v2

    .line 77
    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getViewHolderHeight(Landroid/content/Context;I)I

    move-result v0

    .line 79
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
