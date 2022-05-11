.class public Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;
.super Lcom/miui/home/recents/TaskStackViewLayoutStyle;
.source "TaskStackViewLayoutStyleVertical.java"


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-object v0, Lcom/miui/home/launcher/anim/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;-><init>()V

    .line 25
    new-instance v0, Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/miui/home/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    .line 28
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 29
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-void
.end method


# virtual methods
.method public canExitRecentsWhenScrollOverThreshold()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public createTaskStackViewScroller(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/views/TaskStackViewScroller;
    .locals 2

    .line 34
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;

    iget-object v1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/home/recents/views/TaskStackViewVerticalScroller;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    return-object v0
.end method

.method public dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V
    .locals 9

    .line 75
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x96

    if-ltz v1, :cond_2

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/recents/views/TaskView;

    const/4 v5, 0x4

    .line 80
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit8 v5, v5, 0x32

    .line 81
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 83
    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    new-instance v6, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v7, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-direct {v6, v5, v3, v7}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;)V

    .line 90
    iget-object v3, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewTransform;->fillIn(Lcom/miui/home/recents/views/TaskView;)V

    .line 91
    iget-object v3, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v3, v3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    cmpg-float v3, v3, v5

    const/4 v5, 0x0

    if-gtz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v3, v3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v3, v7, v5}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_1

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    iget-object v3, v3, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v7, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 96
    :goto_1
    iget-object v3, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTmpTransform:Lcom/miui/home/recents/views/TaskViewTransform;

    invoke-virtual {p1, v4, v3, v6}, Lcom/miui/home/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/miui/home/recents/views/TaskView;Lcom/miui/home/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, v3

    int-to-long v0, v2

    .line 99
    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getScrollDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getStyleValue()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSwipeDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMenuPositionDecidedByTaskViewPos()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public translationTaskViewsToScroll0(Lcom/miui/home/recents/views/TaskStackView;F)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 45
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 48
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationYSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 49
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTranslationY()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
