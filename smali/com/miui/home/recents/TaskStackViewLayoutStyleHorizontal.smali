.class public Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;
.super Lcom/miui/home/recents/TaskStackViewLayoutStyle;
.source "TaskStackViewLayoutStyleHorizontal.java"


# static fields
.field private static final DISMISS_ALL_TASK_VIEWS_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f47ae14    # 0.78f

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    sput-object v0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->DISMISS_ALL_TASK_VIEWS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;-><init>()V

    .line 29
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 30
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/views/TaskStackViewsAlgorithmStack;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-void
.end method

.method public static createScaleDismissAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 9

    .line 90
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v5

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v6

    .line 94
    invoke-static {}, Lcom/miui/home/recents/views/VerticalSwipe;->getAsScreenHeightWhenDismiss()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    const v2, 0x3e99999a    # 0.3f

    mul-float v7, v1, v2

    .line 96
    new-instance v8, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal$1;-><init>(Landroid/view/View;FFFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    sget-object p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->DISMISS_ALL_TASK_VIEWS_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x1c2

    .line 111
    invoke-virtual {v0, p0, p1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method


# virtual methods
.method public canExitRecentsWhenScrollOverThreshold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createTaskStackViewScroller(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/views/TaskStackViewScroller;
    .locals 2

    .line 35
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;

    iget-object v1, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v0, p1, p2, v1}, Lcom/miui/home/recents/views/TaskStackViewHorizontalScroller;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V

    return-object v0
.end method

.method public dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V
    .locals 4

    .line 76
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 80
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task;->isProtected()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 83
    invoke-static {v2, v3}, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->createScaleDismissAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1c2

    .line 86
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

.method public isMenuPositionDecidedByTaskViewPos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public translationTaskViewsToScroll0(Lcom/miui/home/recents/views/TaskStackView;F)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 46
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/views/TaskView;

    .line 49
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/util/SpringAnimationImpl;->getTranslationXSpringAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 50
    invoke-virtual {v2}, Lcom/miui/home/recents/views/TaskView;->getTranslationX()F

    move-result v3

    add-float/2addr v3, p2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
