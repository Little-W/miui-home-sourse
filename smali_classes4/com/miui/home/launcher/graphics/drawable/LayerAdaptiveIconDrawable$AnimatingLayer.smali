.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;
.super Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;
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
.method private constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 542
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V

    const/4 p1, 0x0

    .line 539
    iput-boolean p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    .line 543
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ILcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 537
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$901(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;)V
    .locals 0

    .line 537
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->resetBackAnim()V

    return-void
.end method


# virtual methods
.method cancelAnimating()V
    .locals 1

    .line 570
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->cancelAnimating()V

    .line 571
    iget-boolean v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->resetBackAnim()V

    :cond_0
    return-void
.end method

.method public getCurrentShowDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method isAnimating()Z
    .locals 1

    .line 565
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eq v0, p0, :cond_0

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

.method public synthetic lambda$resetBackAnim$0$LayerAdaptiveIconDrawable$AnimatingLayer()V
    .locals 1

    const/4 v0, 0x0

    .line 607
    iput-boolean v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    .line 608
    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->access$901(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;)V

    .line 609
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/launcher/utils/MamlUtils;->clearDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 611
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->invalidate()V

    return-void
.end method

.method onBoundsChange(Landroid/graphics/Rect;FF)V
    .locals 0

    .line 548
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->onBoundsChange(Landroid/graphics/Rect;FF)V

    .line 549
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawableBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 556
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getParentBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {v0, p1, p0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->draw(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Path;)V

    goto :goto_0

    .line 559
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareBackAnim()V
    .locals 1

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    .line 579
    invoke-super {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->prepareBackAnim()V

    .line 580
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getStartDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public resetBackAnim()V
    .locals 2

    .line 606
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$LayerAdaptiveIconDrawable$AnimatingLayer$O6nDXo-PA8CuviST1k8LPh2j5-E;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/graphics/drawable/-$$Lambda$LayerAdaptiveIconDrawable$AnimatingLayer$O6nDXo-PA8CuviST1k8LPh2j5-E;-><init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateBackAnim(Ljava/lang/String;F)V
    .locals 3

    .line 590
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$StaticBitmapLayer;->updateBackAnim(Ljava/lang/String;F)V

    .line 591
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/AnimatingDrawableCompat;->getFancyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 592
    iget-boolean v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mIsAnimating:Z

    if-eqz v1, :cond_1

    .line 593
    invoke-static {v0}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->isInstance(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->getDrawableBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 596
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Lcom/miui/home/launcher/graphics/drawable/FancyDrawableCompat;->updateRatio(Ljava/lang/Object;F)V

    .line 597
    iput-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_0
    iget-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->mCurrentDrawDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p2, p1}, Lcom/miui/launcher/utils/MamlUtils;->notifyBackHome(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$AnimatingLayer;->invalidate()V

    :cond_1
    return-void
.end method
