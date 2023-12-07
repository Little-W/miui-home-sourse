.class public Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppCategorySelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;,
        Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

.field private mAppsPerRow:I

.field private mBackgroundAlpha:I

.field private mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

.field private final mContext:Landroid/content/Context;

.field private mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 3

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    .line 70
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    .line 71
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 72
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$GridSpanSizer;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 73
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 75
    iput p4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    .line 77
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-direct {p1, p0, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    .line 78
    new-instance p1, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    iget-object p3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getDifferConfig()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 80
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->refreshSpanCount()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    return p0
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 123
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method checkList(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    .line 219
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setChecked(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public getAddApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getAddApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->viewType:I

    return p0
.end method

.method public getLayoutManager()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public getRemoveApps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getRemoveApps()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSelectedApps()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->getSelectedApps()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onBindViewHolder$1$AppCategorySelectAdapter(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;Landroid/view/View;)V
    .locals 1

    const/4 p3, 0x1

    .line 135
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->setAnimEnable(Z)V

    .line 136
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p3

    invoke-virtual {p1, v0, p3}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->setChecked(ZZ)V

    .line 137
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mApps:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList;->setChecked(Lcom/miui/home/launcher/AppInfo;Z)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 224
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 225
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->onBindViewHolder(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;I)V
    .locals 5

    .line 111
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_1

    .line 149
    :cond_0
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getSearchEmptyDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p2, v1, v0, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    invoke-virtual {p2, v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 144
    :cond_1
    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->section:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 113
    :cond_2
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItem(I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;

    move-result-object p2

    .line 114
    iget-object v0, p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->app:Lcom/miui/home/launcher/AppInfo;

    .line 115
    check-cast p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    .line 116
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 118
    invoke-static {v1}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/launcher/AppInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$4FX0jzEc3aPYcIsM0RoayGuvdtQ;

    invoke-direct {v4, p1}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$4FX0jzEc3aPYcIsM0RoayGuvdtQ;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/AppInfo;->getIconAsync(Landroid/content/Context;Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;Ljava/util/function/Consumer;)V

    .line 127
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result v1

    .line 129
    iget-object v2, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 131
    :cond_4
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    iget-object v3, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    invoke-virtual {v2, v3, v4}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getAppTextColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v1, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/AppInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-boolean p2, p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;->selected:Z

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->setChecked(ZZ)V

    .line 134
    iget-object p2, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;

    invoke-direct {v1, p0, p1, v0}, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectAdapter$cQU2JFoletsvvrgenri9S2QoPEc;-><init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;Lcom/miui/home/launcher/AppInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p2

    if-eq p0, p2, :cond_5

    .line 140
    iget-object p0, p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_5
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 103
    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0021

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected view type:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_1
    new-instance p2, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0033

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0d0044

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsCellHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    new-instance p1, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$IconViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 230
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 231
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->onDetachedFromRecyclerView()V

    return-void
.end method

.method public refreshSpanCount()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountXDrawerMode()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mGridLayoutMgr:Landroidx/recyclerview/widget/GridLayoutManager;

    iget p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mAppsPerRow:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mUpdateCallback:Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter$AppSelectListUpdateCallback;->setAnimEnable(Z)V

    return-void
.end method

.method public setColorMode(Lcom/miui/home/launcher/allapps/AllAppsColorMode;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mColorMode:Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    .line 41
    iput p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mBackgroundAlpha:I

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method submitList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapterList$AdapterItem;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectAdapter;->mDifferList:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    return-void
.end method
