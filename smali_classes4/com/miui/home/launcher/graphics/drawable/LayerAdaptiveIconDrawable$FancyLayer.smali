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


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 626
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    .line 627
    iput-object p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    .line 628
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 621
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method public getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method isAnimating()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 633
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 634
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->getDrawableBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 640
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->getParentBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, p1, p0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 664
    invoke-super {p0, p1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 665
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method updateBackAnim(Ljava/lang/String;F)V
    .locals 3

    .line 656
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->updateBackAnim(Ljava/lang/String;F)V

    .line 657
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 658
    iget-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->mFancyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$FancyLayer;->invalidate()V

    return-void
.end method
