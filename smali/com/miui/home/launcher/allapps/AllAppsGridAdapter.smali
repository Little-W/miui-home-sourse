.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AllAppsGridAdapter.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/ItemPaddingSetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;,
        Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;",
        "Lcom/miui/home/launcher/allapps/ItemPaddingSetter;"
    }
.end annotation


# instance fields
.field public isColorSelecting:Z

.field private mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private final mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mAppsPerRow:I

.field private mBackgroundAlpha:I

.field private mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

.field protected mCellHeight:I

.field private mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mIconClickListener:Landroid/view/View$OnClickListener;

.field protected mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

.field private mMarketSearchIntent:Landroid/content/Intent;

.field private mMarketSearchMessage:Ljava/lang/String;

.field protected mNeedReverse:Z

.field private mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 1

    .line 140
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mNeedReverse:Z

    .line 457
    iput-boolean v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isColorSelecting:Z

    .line 141
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 142
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 143
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 144
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 145
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 147
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    .line 148
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    .line 152
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 153
    iput p4, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBackgroundAlpha:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    return p0
.end method

.method static isDividerViewType(I)Z
    .locals 1

    const/16 v0, 0x10

    .line 177
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method static isIconViewType(I)Z
    .locals 1

    const/16 v0, 0x42

    .line 181
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method private static isViewType(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 382
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    .line 383
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 385
    :cond_0
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    .line 386
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 388
    :cond_1
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 389
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public afterNotifyData()V
    .locals 0

    return-void
.end method

.method public beforeNotifyData()V
    .locals 0

    return-void
.end method

.method public getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 413
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->viewType:I

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public getViewHolderHeight(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    const/16 p1, 0x40

    if-ne p2, p1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07005c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 283
    :cond_2
    :goto_0
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    return p0
.end method

.method public synthetic lambda$onCreateViewHolder$0$AllAppsGridAdapter()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onCreateViewHolder$1$AllAppsGridAdapter(Landroid/view/View;)V
    .locals 1

    .line 263
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$tHmzikkxNNYl6C7IJ9oXQQCjmN8;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$tHmzikkxNNYl6C7IJ9oXQQCjmN8;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$submitList$2$AllAppsGridAdapter()V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p0, :cond_0

    .line 402
    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onDataChanged()V

    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 447
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 448
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 7

    .line 293
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 294
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBackgroundAlpha:I

    .line 295
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-eq v1, v2, :cond_8

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    const/16 v6, 0x10

    if-eq v1, v6, :cond_6

    const/16 v6, 0x20

    if-eq v1, v6, :cond_3

    const/16 v6, 0x40

    if-eq v1, v6, :cond_0

    .line 357
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    iget-object v6, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/mi/globallauncher/BranchClientImplement;->onBindViewHolder(ILcom/miui/home/launcher/allapps/AlphabeticalAppsList;Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;ILcom/miui/home/launcher/allapps/AllAppsColorMode;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    goto/16 :goto_1

    .line 342
    :cond_0
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 343
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 344
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f110194

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getEditIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 347
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    if-eq v0, v1, :cond_1

    .line 348
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 350
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 351
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 353
    :cond_2
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 321
    :cond_3
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;

    .line 322
    iget-object v1, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->itemView:Landroid/view/View;

    .line 323
    iget-object v4, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 324
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 326
    iget-object v1, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v1, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    :goto_0
    iget-object v1, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSecondaryTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object p2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->arrow:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSecondaryTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    goto/16 :goto_1

    .line 335
    :cond_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 339
    :cond_6
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 316
    :cond_7
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 317
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPrimaryTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 311
    :cond_8
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 312
    invoke-virtual {v5, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 311
    invoke-virtual {p2, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v1, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 297
    :cond_9
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;

    move-result-object p2

    .line 298
    iget-object p2, p2, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 299
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/miui/home/launcher/ShortcutIcon;

    .line 301
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5, v2, v0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->bindAppInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V

    .line 303
    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 305
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    if-eq p2, v0, :cond_a

    .line 306
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    :cond_a
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mi/globallauncher/BranchClientImplement;->trackShowBranchFrequentLocalApp(Ljava/lang/String;)V

    .line 360
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p0, :cond_b

    .line 361
    invoke-interface {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onBindView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const v1, 0x7f0d003b

    if-eq p2, v0, :cond_6

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eq p2, v0, :cond_5

    const/16 v0, 0x8

    if-eq p2, v0, :cond_4

    const/16 v0, 0x10

    if-eq p2, v0, :cond_3

    const/16 v0, 0x20

    if-eq p2, v0, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    .line 273
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p1, p2, p0}, Lcom/mi/globallauncher/BranchClientImplement;->getViewHolder(Landroid/view/ViewGroup;ILandroid/view/LayoutInflater;)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 275
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 268
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 270
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    .line 261
    :cond_2
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d002c

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 262
    new-instance p2, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$jhKRaKLrD8p7Dal0G6GPgguu-9c;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$jhKRaKLrD8p7Dal0G6GPgguu-9c;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/view/View;)V

    return-object p2

    .line 259
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0020

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 257
    :cond_4
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0033

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 255
    :cond_5
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0021

    invoke-virtual {p0, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 245
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 248
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 249
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 250
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    .line 252
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 253
    new-instance p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 453
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 454
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->onDetachedFromRecyclerView()V

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onFailedToRecycleView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->resetView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onViewAttachedToWindow(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 486
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 487
    invoke-static {}, Lcom/mi/globallauncher/BranchClientImplement;->getInstance()Lcom/mi/globallauncher/BranchClientImplement;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/mi/globallauncher/BranchClientImplement;->trackShowBranchResult(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;I)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onViewRecycled(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 367
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 368
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onViewRecycle(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    .line 371
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->resetView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method

.method public refreshSpanCount(I)Z
    .locals 1

    .line 168
    iget v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 170
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method setBindViewCallback(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    return-void
.end method

.method public setCellHeight(I)V
    .locals 1

    .line 163
    iput p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mCellHeight:I

    .line 164
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setColorSelecting(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isColorSelecting:Z

    return-void
.end method

.method public setIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setItemPadding(ILandroid/graphics/Rect;)V
    .locals 1

    .line 439
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 440
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppRecommendDividerPaddingTop()I

    move-result p0

    .line 441
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppRecommendDividerPaddingBottom()I

    move-result p1

    const/4 v0, 0x0

    .line 440
    invoke-virtual {p2, v0, p0, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 6

    .line 205
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f11042f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 209
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 210
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f110050

    .line 216
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 217
    iput-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    :goto_0
    invoke-static {p1, v2}, Lcom/miui/home/launcher/util/PackageManagerHelper;->getMarketSearchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    return-void
.end method

.method public setSearchBarController(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-void
.end method

.method submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->submitList(Ljava/util/List;Z)V

    return-void
.end method

.method submitList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$AdapterItem;",
            ">;Z)V"
        }
    .end annotation

    .line 399
    iput-boolean p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mNeedReverse:Z

    .line 400
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$MXK1bXtexRx7JG011U8aJL4g40U;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$MXK1bXtexRx7JG011U8aJL4g40U;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStyle(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAllAppsColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 158
    iput p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBackgroundAlpha:I

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method
