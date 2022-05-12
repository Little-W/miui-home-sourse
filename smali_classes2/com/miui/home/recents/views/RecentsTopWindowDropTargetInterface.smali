.class public interface abstract Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;
.super Ljava/lang/Object;
.source "RecentsTopWindowDropTargetInterface.java"


# virtual methods
.method public abstract initDropTarget(ZZ)V
.end method

.method public abstract onDrop(Landroid/graphics/RectF;Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onHover(FF)V
.end method

.method public abstract onNear(FF)V
.end method

.method public abstract onShow(Z)V
.end method

.method public abstract resetDropTarget()V
.end method

.method public setViewTranslationNoAnim(Landroid/view/View;FF)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 27
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setViewTranslationWithAnim(Landroid/view/View;FFFFLandroid/view/animation/Interpolator;)V
    .locals 7

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p0, p1, p2, p3}, Lcom/miui/home/recents/views/RecentsTopWindowDropTargetInterface;->setViewTranslationNoAnim(Landroid/view/View;FF)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p4, v0

    const/high16 v2, 0x437a0000    # 250.0f

    const-wide/16 v3, 0x0

    if-nez v1, :cond_1

    move-wide v5, v3

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float v1, p2, v1

    div-float/2addr v1, p4

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-long v5, p4

    :goto_0
    cmpl-float p4, p5, v0

    if-nez p4, :cond_2

    move-wide p4, v3

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p4

    sub-float p4, p3, p4

    div-float/2addr p4, p5

    mul-float/2addr p4, v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-long p4, p4

    .line 36
    :goto_1
    invoke-static {v5, v6, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    const-wide/16 v0, 0xfa

    .line 37
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    return-void
.end method

.method public abstract updateDropTargetConfiguration()V
.end method
