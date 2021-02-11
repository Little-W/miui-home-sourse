.class public Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;
.super Lcom/miui/home/recents/TaskStackViewLayoutStyle;
.source "TaskStackViewLayoutStyleHorizontal.java"


# static fields
.field private static final DISMISS_ALL_TASK_VIEWS_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f47ae14    # 0.78f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    sput-object v0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->DISMISS_ALL_TASK_VIEWS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;-><init>()V

    .line 26
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 27
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmHorizontal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 28
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;

    iget-object v1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackViewScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    return-void
.end method

.method public static createScaleDismissAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 7

    .line 88
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 92
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float v5, v0, v1

    .line 93
    new-instance v6, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {p1, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 104
    sget-object p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->DISMISS_ALL_TASK_VIEWS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x1c2

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method


# virtual methods
.method public canExitRecentsWhenScrollOverThreshold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V
    .locals 4

    .line 72
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 78
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 81
    invoke-static {v2, v3}, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->createScaleDismissAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1c2

    .line 84
    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getScrollDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStyleValue()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSwipeDirection()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateTaskViewsTranslationWithoutRunningTask(Lcom/miui/home/recents/views/TaskStackView;IF)V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p3, v0

    .line 39
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 45
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 46
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTranslationX()F

    move-result v3

    add-float/2addr v3, p3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
