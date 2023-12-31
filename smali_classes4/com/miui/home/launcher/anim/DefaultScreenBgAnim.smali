.class public Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;
.super Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;
.source "DefaultScreenBgAnim.java"


# instance fields
.field private backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

.field private final mSelectAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedColor:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;-><init>(Landroid/view/View;)V

    .line 20
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->initParam()V

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->initAnimation()V

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->drawBackground(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected initAnimation()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/-$$Lambda$DefaultScreenBgAnim$B8xYniuBAW5uz_g5DfGE3cnbENs;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/anim/-$$Lambda$DefaultScreenBgAnim$B8xYniuBAW5uz_g5DfGE3cnbENs;-><init>(Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public initParam()V
    .locals 4

    .line 35
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 38
    new-instance v2, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object v3, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mTargetView:Landroid/view/View;

    invoke-direct {v2, v3, v0, v1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectedColor:I

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    iget-object p0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07013c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->setBgRadius(F)V

    return-void
.end method

.method public synthetic lambda$initAnimation$0$DefaultScreenBgAnim(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->updateBackgroundColor(F)V

    .line 73
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setmHomeIconLayoutBackgroundDrawable(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
    .locals 1

    .line 51
    iput-object p1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    .line 52
    iget-object p2, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p1, p2, :cond_0

    return-void

    .line 53
    :cond_0
    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v0, 0x2

    if-eq p1, p2, :cond_2

    sget-object p2, Lcom/miui/home/launcher/anim/BackgroundType;->FOLD_AFFILIATED:Lcom/miui/home/launcher/anim/BackgroundType;

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_1

    .line 54
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 58
    :goto_1
    iget-object p2, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 59
    iput-object p1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mPreType:Lcom/miui/home/launcher/anim/BackgroundType;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected updateBackgroundColor(F)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mCurType:Lcom/miui/home/launcher/anim/BackgroundType;

    sget-object v1, Lcom/miui/home/launcher/anim/BackgroundType;->DEFAULT:Lcom/miui/home/launcher/anim/BackgroundType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mSelectedColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mHomeIconLayoutBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v1, p1, v2, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setTint(I)V

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/anim/DefaultScreenBgAnim;->backgroundAnim:Lcom/miui/home/launcher/anim/CommonBackgroundAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/anim/CommonBackgroundAnim;->updateBackgroundColor(F)V

    return-void
.end method

.method public updateColor()V
    .locals 0

    return-void
.end method
