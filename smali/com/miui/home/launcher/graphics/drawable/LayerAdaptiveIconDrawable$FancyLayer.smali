.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;
.super Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FancyLayer"
.end annotation


# instance fields
.field private final mFancyDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInversePath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    .line 515
    iput-object p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    .line 516
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 517
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mInversePath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 508
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method public getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isAnimating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 522
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 523
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->getDrawableBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 524
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mInversePath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->getIconMask()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 525
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mInversePath:Landroid/graphics/Path;

    sget-object p2, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->getParentBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mInversePath:Landroid/graphics/Path;

    invoke-static {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 555
    invoke-super {p0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 556
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method updateBackAnim(Ljava/lang/String;F)V
    .locals 3

    .line 547
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->updateBackAnim(Ljava/lang/String;F)V

    .line 548
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 549
    iget-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->invalidate()V

    return-void
.end method
