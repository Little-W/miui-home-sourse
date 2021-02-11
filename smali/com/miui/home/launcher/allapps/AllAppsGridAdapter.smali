.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.super Landroid/mysupport/v7/widget/RecyclerView$Adapter;
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
        "Landroid/mysupport/v7/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;",
        ">;",
        "Lcom/miui/home/launcher/allapps/ItemPaddingSetter;"
    }
.end annotation


# instance fields
.field private final mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

.field private mAppsPerRow:I

.field private mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

.field private mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGridLayoutMgr:Landroid/mysupport/v7/widget/GridLayoutManager;

.field private mIconClickListener:Landroid/view/View$OnClickListener;

.field private mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

.field private mMarketSearchIntent:Landroid/content/Intent;

.field private mMarketSearchMessage:Ljava/lang/String;

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 134
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    .line 135
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/mysupport/v7/widget/GridLayoutManager;

    .line 136
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/mysupport/v7/widget/GridLayoutManager;

    new-instance v0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$GridSpanSizer;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p2, v0}, Landroid/mysupport/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/mysupport/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 138
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->refreshSpanCount()V

    .line 140
    new-instance p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/mysupport/v7/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    .line 141
    new-instance p1, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->getDifferConfig()Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;-><init>(Landroid/mysupport/v7/util/ListUpdateCallback;Landroid/mysupport/v7/recyclerview/extensions/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public static getViewHolderHeight(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 p0, 0x40

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unexpected view type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070052

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 250
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p0

    return p0
.end method

.method static isDividerViewType(I)Z
    .locals 1

    const/16 v0, 0x10

    .line 150
    invoke-static {p0, v0}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result p0

    return p0
.end method

.method static isIconViewType(I)Z
    .locals 1

    const/16 v0, 0x42

    .line 154
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

.method public static synthetic lambda$null$0(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$onCreateViewHolder$1(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/view/View;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    new-instance v0, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$uSOQPpqVudXexvqu_pvrYd_yAqw;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$uSOQPpqVudXexvqu_pvrYd_yAqw;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object p1

    iget p1, p1, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    return p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Landroid/mysupport/v7/widget/GridLayoutManager;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/mysupport/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 1

    .line 391
    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    .line 392
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->onAttachedToRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 51
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;I)V
    .locals 6

    .line 260
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsBackgroundAlpha()I

    move-result v1

    .line 262
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    const/4 v3, 0x4

    const/4 v5, 0x0

    if-eq v2, v3, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/16 p2, 0x10

    if-eq v2, p2, :cond_4

    const/16 p2, 0x20

    if-eq v2, p2, :cond_1

    const/16 p2, 0x40

    if-eq v2, p2, :cond_0

    goto/16 :goto_1

    .line 317
    :cond_0
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 318
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 319
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getEditIconDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0, v5}, Lcom/miui/home/launcher/ShortcutIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 322
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getMeasuredHeight()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 323
    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 296
    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;

    .line 297
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->itemView:Landroid/view/View;

    .line 298
    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 299
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :goto_0
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSecondaryTextColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object p2, p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;->arrow:Lcom/miui/home/launcher/util/typeface/TypefaceIconView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSecondaryTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/util/typeface/TypefaceIconView;->setPatternColor(I)V

    goto/16 :goto_1

    .line 310
    :cond_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 314
    :cond_4
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getDividerColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 291
    :cond_5
    iget-object v2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    .line 292
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getPrimaryTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object p2

    iget-object p2, p2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->categoryName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 286
    :cond_6
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 287
    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 286
    invoke-virtual {p2, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 264
    :cond_7
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object p2

    .line 265
    iget-object p2, p2, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;->appInfo:Lcom/miui/home/launcher/AppInfo;

    .line 266
    iget-object v2, p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lcom/miui/home/launcher/ShortcutIcon;

    .line 268
    iget-object v3, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setTextColor(I)V

    .line 269
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v0, p2}, Lcom/miui/home/launcher/ShortcutIcon;->bindAppInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V

    .line 270
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 272
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getMeasuredHeight()I

    move-result p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    if-eq p2, v0, :cond_8

    .line 273
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    :cond_8
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getScaleX()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    .line 276
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleX(F)V

    .line 278
    :cond_9
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getScaleY()F

    move-result p2

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_a

    .line 279
    invoke-virtual {v2, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleY(F)V

    .line 281
    :cond_a
    invoke-virtual {v2}, Lcom/miui/home/launcher/ShortcutIcon;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_b

    .line 282
    invoke-virtual {v2, v4}, Lcom/miui/home/launcher/ShortcutIcon;->setVisibility(I)V

    .line 327
    :cond_b
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz p2, :cond_c

    .line 328
    invoke-interface {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onBindView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;
    .locals 3

    const/4 v0, 0x2

    const v1, 0x7f0d0027

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eq p2, v0, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_1

    const/16 v0, 0x40

    if-ne p2, v0, :cond_0

    .line 236
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 237
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 239
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 240
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected view type"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0024

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 231
    new-instance p2, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$jhKRaKLrD8p7Dal0G6GPgguu-9c;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/-$$Lambda$AllAppsGridAdapter$jhKRaKLrD8p7Dal0G6GPgguu-9c;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$SearchMarketViewHolder;-><init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/view/View;)V

    return-object p2

    .line 228
    :cond_2
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 226
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 224
    :cond_4
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 214
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, p2, p1}, Lcom/miui/home/launcher/ShortcutIcon;->createShortcutIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p1

    .line 215
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 218
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setMirrorMenuListener(Landroid/view/View;)V

    .line 219
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p2}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/mirror/MirrorManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/library/mirror/MirrorManagerCompat;->setDragListener(Landroid/view/View;)V

    .line 221
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    new-instance p2, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V
    .locals 0

    .line 397
    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/mysupport/v7/widget/RecyclerView;)V

    .line 398
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AllAppsListUpdateCallback;->onDetachedFromRecyclerView()V

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 51
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onFailedToRecycleView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public onFailedToRecycleView(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onViewRecycled(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->onViewRecycled(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V
    .locals 1

    .line 334
    invoke-super {p0, p1}, Landroid/mysupport/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/mysupport/v7/widget/RecyclerView$ViewHolder;)V

    .line 335
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;->onViewRecycle(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public refreshSpanCount()V
    .locals 2

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    .line 146
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mGridLayoutMgr:Landroid/mysupport/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mAppsPerRow:I

    invoke-virtual {v0, v1}, Landroid/mysupport/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method setBindViewCallback(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mBindViewCallback:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$BindViewCallback;

    return-void
.end method

.method public setIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setItemPadding(ILandroid/graphics/Rect;)V
    .locals 2

    .line 383
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->getItemViewType(I)I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->isDividerViewType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppRecommendDividerPaddingTop()I

    move-result p1

    .line 385
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppRecommendDividerPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p2, v1, p1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method

.method public setLastSearchQuery(Ljava/lang/String;)V
    .locals 6

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mApps:Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;->findMarketAppInfo()Lcom/miui/home/launcher/AppInfo;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f10021c

    const/4 v3, 0x2

    .line 182
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 183
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f100047

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchMessage:Ljava/lang/String;

    .line 190
    iput-object v2, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    :goto_0
    invoke-static {p1, v2}, Lcom/miui/home/launcher/util/PackageManagerHelper;->getMarketSearchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    return-void
.end method

.method submitList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->mDifferList:Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-virtual {v0, p1}, Landroid/mysupport/v7/recyclerview/extensions/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method
