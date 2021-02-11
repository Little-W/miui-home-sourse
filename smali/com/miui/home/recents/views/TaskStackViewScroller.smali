.class public abstract Lcom/miui/home/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;
    }
.end annotation


# static fields
.field private static final STACK_SCROLL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/recents/views/TaskStackViewScroller;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFinalAnimatedScroll:F

.field protected mFlingDownScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

.field private mScrollAnimator:Landroid/animation/ObjectAnimator;

.field protected mScrollerCallback:Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;

.field private mStackScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/miui/home/recents/views/TaskStackViewScroller$1;

    const-string v1, "stackScroll"

    invoke-direct {v0, v1}, Lcom/miui/home/recents/views/TaskStackViewScroller$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollerCallback:Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;

    .line 76
    iput-object p3, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/views/TaskStackViewScroller;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private animateScroll(FILjava/lang/Runnable;)V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 171
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    .line 173
    sget-object v0, Lcom/miui/home/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 174
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 175
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/miui/home/recents/views/TaskStackViewScroller$2;

    invoke-direct {p2, p0, p3}, Lcom/miui/home/recents/views/TaskStackViewScroller$2;-><init>(Lcom/miui/home/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 188
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method abstract animateBoundScroll(I)V
.end method

.method animateScroll(FLjava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0xc8

    .line 159
    invoke-direct {p0, p1, v0, p2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    return-void
.end method

.method public boundScroll()Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 136
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 137
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method abstract computeScroll()Z
.end method

.method public abstract fling(FFFIIIIIIIII)V
.end method

.method protected getBoundedStackScroll(F)F
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getBoundedScroll(F)F

    move-result p1

    return p1
.end method

.method public getExitRecentOverscrollThreshold()F
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    return v0
.end method

.method public getStackScroll()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->isScrollOutOfBounds(F)Z

    move-result v0

    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return-void
.end method

.method public setDeltaStackScroll(FF)V
    .locals 0

    add-float/2addr p1, p2

    .line 105
    sget-object p2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method public setStackScroll(F)V
    .locals 1

    .line 97
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    return-void
.end method

.method public setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 2

    .line 113
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 114
    iput p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 115
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollerCallback:Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;

    if-eqz p1, :cond_0

    .line 116
    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {p1, v0, v1, p2}, Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;->onStackScrollChanged(FFLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    :cond_0
    return-void
.end method

.method public setStackScrollToInitialState()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 126
    iget-object v1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 127
    iget v1, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/miui/home/recents/util/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    return-void
.end method

.method abstract stopScroller()V
.end method
