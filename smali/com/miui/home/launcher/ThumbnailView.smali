.class public Lcom/miui/home/launcher/ThumbnailView;
.super Lcom/miui/home/launcher/DragableScreenView;
.source "ThumbnailView.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;
    }
.end annotation


# static fields
.field protected static CURR_ICON_DRAWABLE_INDEX:I


# instance fields
.field protected mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

.field private mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

.field protected mChangeAlongWallpaper:Z

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/DragableScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance p1, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;-><init>(Lcom/miui/home/launcher/ThumbnailView;Lcom/miui/home/launcher/ThumbnailView$1;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mChangeAlongWallpaper:Z

    return-void
.end method

.method public static adaptIconDrawableIndex()V
    .locals 1

    .line 141
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    sput v0, Lcom/miui/home/launcher/ThumbnailView;->CURR_ICON_DRAWABLE_INDEX:I

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    .line 155
    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->adaptIconStyle(Landroid/view/View;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected clearThumbnail(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a019e

    .line 123
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 124
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a0389

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 127
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v1, 0x7f0a00de

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    const v1, 0x7f0a0083

    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0a016e

    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public hasAdapter()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mShowing:Z

    return v0
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 146
    invoke-static {p0}, Lcom/miui/home/launcher/WallpaperUtils;->varyViewGroupByWallpaper(Landroid/view/ViewGroup;)V

    .line 147
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->adaptThumbnailItemStyle()V

    return-void
.end method

.method protected reLoadThumbnails()V
    .locals 6

    const/4 v0, 0x0

    .line 160
    new-array v1, v0, [Landroid/view/View;

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    move v2, v0

    .line 163
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 164
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->removeAllScreens()V

    .line 168
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->hasAdapter()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getCount()I

    move-result v2

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v0, v2, :cond_6

    .line 178
    iget-object v4, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    array-length v5, v1

    if-ge v0, v5, :cond_2

    aget-object v5, v1, v0

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v0, v5, p0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 180
    :cond_3
    iget-boolean v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mChangeAlongWallpaper:Z

    invoke-static {p0, v4, v5}, Lcom/miui/home/launcher/WallpaperUtils;->onAddViewToGroup(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    .line 181
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_4

    .line 183
    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_4
    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v5, :cond_5

    .line 186
    iget-object v5, p0, Lcom/miui/home/launcher/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_6
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/ThumbnailView;->reorderAndAddAllViews(Ljava/util/ArrayList;)V

    return-void
.end method

.method public removeAllScreens()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 111
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailView;->clearThumbnail(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    invoke-super {p0}, Lcom/miui/home/launcher/DragableScreenView;->removeAllScreens()V

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mCurrentScreenIndex:I

    return-void
.end method

.method protected reorderAndAddAllViews(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 194
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ThumbnailView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/miui/home/launcher/ThumbnailViewAdapter;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->hasAdapter()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    iget-object v0, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapter:Lcom/miui/home/launcher/ThumbnailViewAdapter;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailViewAdapter;->refreshList()V

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mAdapterObserver:Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ThumbnailView$ThumbnailViewAdapterObserver;->onInvalidated()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 96
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 98
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 2

    .line 86
    iput-object p1, p0, Lcom/miui/home/launcher/ThumbnailView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 87
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ThumbnailView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
