.class public Lcom/miui/home/launcher/transitioneffects/TransitionEffectFallDown;
.super Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.source "TransitionEffectFallDown.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverShotTension()F
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    return v0
.end method

.method public getScreenSnapDuration()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method public resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method

.method public updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 6

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 p6, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p6

    if-lez p3, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectFallDown;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    if-nez p3, :cond_1

    .line 18
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectFallDown;->resetView(Landroid/view/View;)V

    .line 21
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getLayerType()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    .line 22
    invoke-virtual {p5, v0, p4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 25
    :cond_2
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    .line 26
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 29
    invoke-virtual {p5}, Landroid/view/View;->getScaleY()F

    move-result v0

    .line 30
    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v1

    .line 31
    invoke-virtual {p5}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 32
    invoke-virtual {p5}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 33
    invoke-virtual {p5}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 34
    invoke-virtual {p5}, Landroid/view/View;->getPivotY()F

    move-result v5

    .line 35
    invoke-virtual {p5, p6}, Landroid/view/View;->setAlpha(F)V

    sub-float/2addr v3, p3

    sub-float v1, p6, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    sub-float/2addr v5, p4

    sub-float/2addr p6, v0

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    .line 38
    invoke-virtual {p5, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 39
    invoke-virtual {p5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 40
    invoke-virtual {p5, p3}, Landroid/view/View;->setPivotX(F)V

    .line 41
    invoke-virtual {p5, p4}, Landroid/view/View;->setPivotY(F)V

    neg-float p1, p1

    const/high16 p3, 0x41f00000    # 30.0f

    mul-float/2addr p1, p3

    .line 42
    invoke-virtual {p5, p1}, Landroid/view/View;->setRotation(F)V

    .line 43
    invoke-virtual {p5, p2}, Landroid/view/View;->setRotationX(F)V

    .line 44
    invoke-virtual {p5, p2}, Landroid/view/View;->setRotationY(F)V

    .line 45
    sget p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p5, p1}, Landroid/view/View;->setCameraDistance(F)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p5, p1, p4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectFallDown;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method
