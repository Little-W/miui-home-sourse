.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;
.super Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimatingLayer"
.end annotation


# instance fields
.field private mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsAnimating:Z


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    const/4 p1, 0x0

    .line 428
    iput-boolean p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    .line 432
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method


# virtual methods
.method cancelAnimating()V
    .locals 1

    .line 459
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->cancelAnimating()V

    .line 460
    iget-boolean v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->resetBackAnim()V

    :cond_0
    return-void
.end method

.method public getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isAnimating()Z
    .locals 2

    .line 454
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 437
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 438
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawableBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 445
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getParentBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/Path;)V

    goto :goto_0

    .line 448
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareBackAnim()V
    .locals 1

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    .line 468
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->prepareBackAnim()V

    .line 469
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public resetBackAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    iput-boolean v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    .line 496
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->resetBackAnim()V

    .line 497
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->clearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 499
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->invalidate()V

    return-void
.end method

.method updateBackAnim(Ljava/lang/String;F)V
    .locals 3

    .line 479
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticLayer;->updateBackAnim(Ljava/lang/String;F)V

    .line 480
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getFancyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 481
    iget-boolean v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    if-eqz v1, :cond_1

    .line 482
    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 484
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawableBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 485
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 486
    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 488
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->invalidate()V

    :cond_1
    return-void
.end method
