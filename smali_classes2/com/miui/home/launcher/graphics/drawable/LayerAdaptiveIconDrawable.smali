.class public Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticGeneralLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
    }
.end annotation


# instance fields
.field private mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mForegroundLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

.field private final mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

.field private final mMask:Landroid/graphics/Path;

.field private final mMaskMatrix:Landroid/graphics/Matrix;

.field private final mMaskScaleOnly:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 9

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 66
    iput-object p4, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mComponentName:Landroid/content/ComponentName;

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iput-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    :cond_0
    if-eqz p2, :cond_3

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    .line 76
    instance-of v1, p2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_2

    .line 77
    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 78
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 80
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 82
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 84
    iget-object v5, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    .line 93
    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    iput-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    .line 95
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    .line 97
    new-instance p1, Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    .line 98
    new-instance p1, Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    .line 99
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
    .locals 9

    .line 104
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 105
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getQuietDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    .line 107
    invoke-static {p1, p2}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getAnimationIndex(Landroid/graphics/drawable/Drawable;I)I

    move-result v7

    .line 108
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->isOnlyFancyWork(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    .line 109
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->isOnlyQuietWork(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz p2, :cond_1

    .line 111
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getFancyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 112
    invoke-static {v6}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    .line 121
    :cond_0
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    :cond_1
    if-eqz v1, :cond_2

    .line 127
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    .line 132
    :cond_2
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    :cond_3
    return-object v1

    .line 141
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5

    .line 145
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object v0

    .line 146
    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_6

    .line 150
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticColorLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/ColorDrawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object v0

    .line 155
    :cond_6
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticGeneralLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticGeneralLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object v0
.end method

.method private drawLayer()Z
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 209
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 210
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 211
    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 188
    invoke-direct {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->drawLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 194
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz v0, :cond_3

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    :cond_3
    return-void
.end method

.method public getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    return-object p0
.end method

.method public getForegroundLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 227
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 674
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isMamlDrawable()Z
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->access$1000(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/maml/MamlDrawable;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    .line 727
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->access$1100(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/maml/MamlDrawable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    .line 166
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskScaleOnly:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 171
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 172
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    invoke-virtual {v1}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 173
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v2, p1, v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 178
    invoke-virtual {v3, p1, v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz p0, :cond_2

    .line 182
    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 714
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setAlpha(I)V

    .line 715
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz p0, :cond_0

    .line 716
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 692
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 695
    :goto_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 696
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_1

    .line 697
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 699
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 700
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 701
    invoke-virtual {v2, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 704
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz v1, :cond_3

    .line 705
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 708
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->superInvalidateSelf()V

    :cond_4
    return-void
.end method

.method public superInvalidateSelf()V
    .locals 0

    .line 683
    invoke-super {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    return-void
.end method
