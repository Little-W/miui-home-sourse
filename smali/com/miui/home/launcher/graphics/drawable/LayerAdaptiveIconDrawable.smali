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
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;,
        Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$_lancet;
    }
.end annotation


# instance fields
.field private mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

.field private final mCanvas:Landroid/graphics/Canvas;

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

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getInstance()Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iput-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    :cond_0
    if-eqz p2, :cond_3

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    .line 63
    instance-of v1, p2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_2

    .line 64
    move-object v1, p2

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 65
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 67
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 69
    invoke-direct {p0, v4, v5}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 71
    iget-object v5, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 80
    new-instance v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    invoke-direct {v2, p0, p3, v0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    iput-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    .line 82
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private createLayer(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
    .locals 8

    .line 87
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 88
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getQuietDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Launcher.Layer"

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not get quiet drawable:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 92
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getAnimationIndex(Landroid/graphics/drawable/Drawable;I)I

    move-result v6

    .line 93
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->isOnlyFancyWork(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 94
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->isOnlyQuietWork(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v0, :cond_2

    .line 96
    invoke-static {p1}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getFancyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 97
    invoke-static {v5}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    :cond_1
    const-string v0, "Launcher.Layer"

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get fancy drawable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p0, p1, v6, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    :cond_2
    if-eqz v2, :cond_3

    .line 104
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p0, p1, v6, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    .line 106
    :cond_3
    new-instance p2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p2, p0, p1, v6, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object p2

    .line 109
    :cond_4
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    return-object v0
.end method

.method private drawLayer()Z
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 169
    invoke-virtual {v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->drawLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 152
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz v0, :cond_3

    .line 159
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method

.method public getBackgroundLayer()Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mLayerState:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;

    return-object v0
.end method

.method public getForegroundLayers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 185
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 119
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 130
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mIconSizeProvider:Lcom/miui/home/launcher/common/LauncherIconSizeProvider;

    invoke-virtual {v2}, Lcom/miui/home/launcher/common/LauncherIconSizeProvider;->getLauncherIconHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 131
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v1, p1, v0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 135
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 136
    invoke-virtual {v3, p1, v0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz v1, :cond_4

    .line 140
    invoke-virtual {v1, p1, v0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    :cond_4
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 571
    invoke-super {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 572
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBackgroundLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mForegroundLayers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 576
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 577
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->mBadgeLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;

    if-eqz v0, :cond_2

    .line 581
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$BadgeLayer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method
