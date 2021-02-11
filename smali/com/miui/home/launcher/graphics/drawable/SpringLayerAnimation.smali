.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;
.super Ljava/lang/Object;
.source "SpringLayerAnimation.java"

# interfaces
.implements Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$SimpleOffsetProvider;,
        Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;,
        Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;,
        Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private final mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

.field private mCurrentOffsetX:F

.field private mCurrentOffsetY:F

.field private final mLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

.field private final mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

.field private mUpdateListener:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;FFLcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 17
    new-instance p1, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-direct {p1, p2, p3}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;-><init>(FF)V

    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    .line 18
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addUpdateListener(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator$AnimatorUpdateListener;)V

    .line 19
    iput-object p4, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    .line 20
    iput-object p5, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mUpdateListener:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->cancel()V

    return-void
.end method

.method public getCurrentOffsetX()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mCurrentOffsetX:F

    return v0
.end method

.method public getCurrentOffsetY()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mCurrentOffsetY:F

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onAnimationUpdate(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V
    .locals 3

    .line 30
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueX()F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;->getViewOffsetX()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mCurrentOffsetX:F

    .line 31
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueY()F

    move-result p1

    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    invoke-interface {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;->getViewOffsetY()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mCurrentOffsetY:F

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mUpdateListener:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;

    if-eqz p1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mLayer:Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    iget v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mCurrentOffsetX:F

    iget v2, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mCurrentOffsetY:F

    invoke-interface {p1, v0, v1, v2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$AnimatorUpdateListener;->onAnimationUpdate(Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;FF)V

    :cond_0
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public start(FFFF)V
    .locals 7

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->setValues(FFFFFF)V

    .line 25
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->start()V

    return-void
.end method

.method public updateFinalPosition()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-interface {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;->getViewOffsetX()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->animateToFinalPositionX(F)V

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    invoke-interface {v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;->getViewOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->animateToFinalPositionY(F)V

    :cond_0
    return-void
.end method

.method public updateProviderOffset(FF)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;->setViewOffsetX(F)V

    .line 40
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;->mProvider:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;->setViewOffsetY(F)V

    :cond_0
    return-void
.end method
