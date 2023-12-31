.class public Lcom/miui/home/launcher/transitioneffects/TransitionEffectLeftPage;
.super Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.source "TransitionEffectLeftPage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverShotTension()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScreenSnapDuration()I
    .locals 0

    const/16 p0, 0x226

    return p0
.end method

.method public resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method

.method public updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 5

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-eqz p3, :cond_2

    .line 11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectLeftPage;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    if-nez p3, :cond_1

    .line 16
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectLeftPage;->resetView(Landroid/view/View;)V

    .line 18
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    .line 19
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    const/high16 p6, 0x40000000    # 2.0f

    div-float v0, p0, p6

    div-float/2addr p3, p6

    .line 23
    invoke-virtual {p5}, Landroid/view/View;->getScaleY()F

    move-result p6

    .line 24
    invoke-virtual {p5}, Landroid/view/View;->getScaleX()F

    move-result v1

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getTranslationY()F

    move-result v2

    .line 26
    invoke-virtual {p5}, Landroid/view/View;->getPivotY()F

    move-result v3

    .line 28
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, p4, v4

    invoke-virtual {p5, v4}, Landroid/view/View;->setAlpha(F)V

    sub-float/2addr v3, p3

    sub-float v4, p4, p6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 30
    invoke-virtual {p5, v2}, Landroid/view/View;->setTranslationY(F)V

    mul-float v2, p0, p1

    .line 31
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr p0, v3

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr p0, v3

    sub-float/2addr v2, p0

    mul-float/2addr v2, v1

    invoke-virtual {p5, v2}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v3, p1

    add-float/2addr v3, p4

    mul-float/2addr v1, v3

    .line 33
    invoke-virtual {p5, v1}, Landroid/view/View;->setScaleX(F)V

    mul-float/2addr v3, p6

    .line 34
    invoke-virtual {p5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 35
    invoke-virtual {p5, v0}, Landroid/view/View;->setPivotX(F)V

    .line 36
    invoke-virtual {p5, p3}, Landroid/view/View;->setPivotY(F)V

    .line 37
    invoke-virtual {p5, p2}, Landroid/view/View;->setRotation(F)V

    .line 38
    invoke-virtual {p5, p2}, Landroid/view/View;->setRotationX(F)V

    const/high16 p0, 0x42340000    # 45.0f

    neg-float p1, p1

    mul-float/2addr p1, p0

    .line 39
    invoke-virtual {p5, p1}, Landroid/view/View;->setRotationY(F)V

    .line 40
    sget p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    invoke-virtual {p5, p0}, Landroid/view/View;->setCameraDistance(F)V

    return-void

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {p0, p5}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectLeftPage;->resetTransformationView(Landroid/view/View;)V

    return-void
.end method
