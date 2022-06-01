.class public Lcom/miui/home/launcher/TransitionEffectThumbnailView;
.super Lcom/miui/home/launcher/ThumbnailView;
.source "TransitionEffectThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCameraDistanceCache:F

.field private mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectedEffect:I

.field private mCurrentSelectedView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mResources:Landroid/content/res/Resources;

.field private mTransEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTransEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 35
    iput p2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    .line 36
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    .line 37
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 205
    iput p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    .line 47
    iput-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    .line 48
    move-object p3, p1

    check-cast p3, Lcom/miui/home/launcher/Launcher;

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string p3, "layout_inflater"

    .line 49
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    .line 51
    invoke-direct {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->initTransitionTypeThumbnailView()V

    .line 52
    invoke-virtual {p0, p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070421

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 p2, 0x51

    .line 56
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0805d3

    goto :goto_0

    :cond_0
    const p2, 0x7f080572

    :goto_0
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setSeekPointResource(I)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 59
    new-instance p2, Landroid/graphics/ColorMatrixColorFilter;

    const/16 p3, 0x14

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-direct {p2, p3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    iput-object p2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setClipToPadding(Z)V

    .line 64
    invoke-static {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/compat/LauncherStyleCompat;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingTop()I

    move-result p2

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 66
    invoke-virtual {p1}, Lcom/miui/home/launcher/compat/LauncherStyleCompat;->getLauncherDialogPaddingBottom()I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3fcb851f    # 1.59f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private addSpace(Landroid/widget/LinearLayout;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 116
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void
.end method

.method private getTransitionEffectName(I)Ljava/lang/String;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getView(I)Landroid/view/View;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-ltz p1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0a02a6

    .line 131
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setIconDrawable(Landroid/view/View;)V

    .line 134
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreviousTransitionType()I

    move-result p1

    if-ne v1, p1, :cond_1

    .line 135
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setCurrentSelected(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->appendWorkspaceTransitionType(I)V

    .line 137
    iput v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initTransitionTypeThumbnailView()V
    .locals 6

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setScrollWholeScreen(Z)V

    const/16 v0, 0xa

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setScreenTransitionType(I)I

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setScreenLayoutMode(I)V

    .line 74
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f030022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f030023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 77
    iget-object v3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectMap:Ljava/util/Map;

    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCurrentSelected(Landroid/view/View;)V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    const v1, 0x7f0a0140

    const v2, 0x7f0a02a6

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    iget-object v3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 183
    iget-object v4, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0603d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    .line 184
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 187
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 189
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0603d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mColorMatrixFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 191
    iput-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private setIconDrawable(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0071

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 145
    sget-object v1, Lcom/miui/home/launcher/ThumbnailViewAdapter;->THUMBNAIL_BACKGROUND:[I

    sget v2, Lcom/miui/home/launcher/ThumbnailView;->CURR_ICON_DRAWABLE_INDEX:I

    aget v1, v1, v2

    .line 146
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0a0140

    .line 150
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 151
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffectsDrawableIds:[I

    aget v0, v2, v0

    .line 152
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected adaptThumbnailItemStyle()V
    .locals 0

    return-void
.end method

.method protected clearThumbnail(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0140

    .line 217
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    iget v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    if-eq v1, v0, :cond_2

    .line 165
    iget-object v2, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2, v1}, Lcom/miui/home/launcher/Launcher;->removeWorkspaceTransitionType(I)V

    .line 166
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->appendWorkspaceTransitionType(I)V

    .line 167
    iput v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    .line 168
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setCurrentSelected(Landroid/view/View;)V

    goto :goto_0

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isShowingTransitionEffectDemo()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 172
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->autoScrollWorkspace()V

    return-void
.end method

.method public prepareToShow()V
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->reLoadThumbnails()V

    return-void
.end method

.method public reLoadThumbnails()V
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->removeAllScreens()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCurrentSelectedEffect:I

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d013b

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v3, v0

    move v0, v2

    .line 89
    :goto_0
    iget-object v4, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 90
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->getView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 94
    :cond_0
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addSpace(Landroid/widget/LinearLayout;)V

    .line 95
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v5, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 97
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addView(Landroid/view/View;)V

    .line 98
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addSpace(Landroid/widget/LinearLayout;)V

    .line 99
    iget-object v3, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    invoke-virtual {v3, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 103
    :cond_1
    iget-object v5, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mTransEffectList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_2

    .line 104
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addView(Landroid/view/View;)V

    .line 105
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->addSpace(Landroid/widget/LinearLayout;)V

    .line 107
    :cond_2
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->setCurrentScreen(I)V

    return-void
.end method

.method public saveSelectedMode()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getPreviousScreenTransitionType()I

    move-result v1

    .line 224
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getScreenTransitionType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 226
    invoke-direct {p0, v2}, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->getTransitionEffectName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackTransitionEffectChanged(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v3, "pref_key_transformation_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->setTransitionEffectEditingMode()V

    return-void
.end method

.method public setCameraDistance(F)V
    .locals 1

    .line 208
    iget v0, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 209
    iput p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    .line 210
    iget p1, p0, Lcom/miui/home/launcher/TransitionEffectThumbnailView;->mCameraDistanceCache:F

    invoke-super {p0, p1}, Lcom/miui/home/launcher/ThumbnailView;->setCameraDistance(F)V

    :cond_0
    return-void
.end method
